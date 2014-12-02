package com.igpse

import grails.transaction.Transactional
import org.hibernate.*
import groovy.sql.Sql
import groovy.json.*

@Transactional
class PatientMRNAService {

    def dataSource

    def parseCSVFile(String fileName) {
    	InputStream inputFile = getClass().classLoader.getResourceAsStream(fileName)

    	def mrnaCounter = 18001
    	Sql sql = new Sql(dataSource)
    	inputFile.splitEachLine(/\n|\r|,/) { line -> 
    		println "Current mrna: ${mrnaCounter}"
            sql.withBatch {stmt ->
                line.eachWithIndex { oneValue, index ->
                    stmt.addBatch("insert into Patient_MRNA (patient_id, mrna_id, value) values (${index+1}, ${mrnaCounter}, ${oneValue as Float})" )            
                }
            }
    		mrnaCounter++
    	}
        println "Finishing mrnaCounter = ${mrnaCounter}"
    }
    
 }
