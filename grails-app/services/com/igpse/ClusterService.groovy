package com.igpse
import groovy.json.*

class ClusterService {


	/**
	*	Calls to kmeans assume k is an integer and points is an array of arrays
	*	Returns a clustered map where each key is a centoid and value is all the points assigned to that cluster
	*
	**/
	def kmeans(points, k) {
	    def iteration = { centroids->

	        def clusters = points.groupBy { p->
	            centroids.min {c->
	                [p, c].transpose().inject(0) {acc, val-> 
                		acc + Math.pow(val[0] - val[1], 2)	
	                }
	            }
	        }

	        def newCentroids = centroids.collect {
	            clusters[it].transpose().collect() {
	             it.inject(0) {a, v-> a + v } / it.size()
	         }
	        }

	        def d = [centroids, newCentroids].transpose().collect() { c_on ->
	            c_on.transpose().collect() { ce_on ->
	                Math.pow(ce_on[0] - ce_on[1], 2)
	            }.inject(0){a, v->a+v}
	        }

	        if(d.findAll(){it > 0.000001}.size() == 0) {
	        	clusters
	        }
	        else {
	        	call(newCentroids)
	        }
	    }
	    iteration(points.sort(false){Math.random()}[0..k-1]) /*Causing sort error: http://dertompson.com/2012/11/ */
	}

	/*Calculating distance where mat is an array of arrays of doubles */
	def pdist(mat) {  
	    def matrix = new float[mat.size()][mat.size()]
	    for (int i = 0; i < mat.size(); i++) {
	        matrix[i][i] = 0
	        for (int j = i+1; j < mat.size(); j++) {
	            matrix[i][j] = dist(mat[i],mat[j]) /*Calculate distance between current vector and next vector */
	            matrix[j][i] = matrix[i][j] /*Fill in value for next vector's distance */
	        }
	    }
	    matrix
	}

	def dist(vector1, vector2) {
	    def num = 0
	    def temp = 0
	    for(int i = 0; i < vector1.size(); i++) {
	        temp = vector1[i]-vector2[i]
	        num += temp*temp
	    }
	    num = Math.sqrt(num)
	}


    /**
    *   The array of doubles should an array of arrays, where each index is an array of mrna values by patient.
    *   [[patient1], [patient2], ....[patientn]] where n is the number of patients
    *   and the length of each array is equivalent to the number of mrnas selected. 
    *	If no numOfClusters provided then default is 2
    **/
    def buildGroupJson(arrayOfDoubles, numOfClusters=2) {
        def h = [:]
        h.put('nodes', [])
        def group = 1

        kmeans(arrayOfDoubles, numOfClusters as Integer).each { key, value ->
            value.each { eachArray ->
                def patientHash = [:]
                patientHash.put('name', Patient.get(eachArray[0].patient)?.patientClerical)
                patientHash.put('group', "${group}")
                h.nodes.add(patientHash)
            }
            group++
        }

        new JsonBuilder(h)
    }
}