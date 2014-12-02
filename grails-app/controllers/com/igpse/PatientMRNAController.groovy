package com.igpse

import groovy.sql.Sql
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import groovy.json.*

@Transactional(readOnly = true)
class PatientMRNAController {

    def patientMRNAService
    def clusterService 
    def dataSource

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PatientMRNA.list(params), model:[patientMRNAInstanceCount: PatientMRNA.count()]
    }

    def showCSVContents() {
        //def rowsFromCSVFile = patientMRNAService.parseCSVFile("lastThreeThousand.csv")
        
        render "Done with zeros!"
    }

    def listMRNA() {
        Sql sql = new Sql(dataSource)
    	int counter = 0
    	def arr = []
        def selectClos = { mrnaId ->
            counter = 0
            sql.eachRow("select * from patient_mrna where mrna_id=$mrnaId") { row ->
                def doub = row.value
                doub.metaClass.patient = row.patient_id
                arr[counter].push(doub)
                counter++;
            }
        }

    	for(int i=0; i < 623; i++) {
    		arr[i] = []
    	}

        if(!params.mrnaIds){
            notFound()
            return
        }

        /*If only one id */
        if(params.mrnaIds instanceof String) {
            selectClos(params.mrnaIds)        
        }
        else {
           /*Else we have an array of ids */
            params.mrnaIds.each { mrnaId -> 
                selectClos(mrnaId)
            } 
        }

        //render clusterService.kmeans(arr, params.numOfClusters as Integer)
        render clusterService.buildGroupJson(arr, params.numOfClusters).toPrettyString()
        
        //render clusterService.pdist(arr)
    }

    def selectMRNA() {
        respond model: [mrnaList: MRNA.list()]
    }

    def show(PatientMRNA patientMRNAInstance) {
        respond patientMRNAInstance
    }

    def create() {
        respond new PatientMRNA(params)
    }

    @Transactional
    def save(PatientMRNA patientMRNAInstance) {
        if (patientMRNAInstance == null) {
            notFound()
            return
        }

        if (patientMRNAInstance.hasErrors()) {
            respond patientMRNAInstance.errors, view:'create'
            return
        }

        patientMRNAInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'patientMRNAInstance.label', default: 'PatientMRNA'), patientMRNAInstance.id])
                redirect patientMRNAInstance
            }
            '*' { respond patientMRNAInstance, [status: CREATED] }
        }
    }

    def edit(PatientMRNA patientMRNAInstance) {
        respond patientMRNAInstance
    }

    @Transactional
    def update(PatientMRNA patientMRNAInstance) {
        if (patientMRNAInstance == null) {
            notFound()
            return
        }

        if (patientMRNAInstance.hasErrors()) {
            respond patientMRNAInstance.errors, view:'edit'
            return
        }

        patientMRNAInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PatientMRNA.label', default: 'PatientMRNA'), patientMRNAInstance.id])
                redirect patientMRNAInstance
            }
            '*'{ respond patientMRNAInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PatientMRNA patientMRNAInstance) {

        if (patientMRNAInstance == null) {
            notFound()
            return
        }

        patientMRNAInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PatientMRNA.label', default: 'PatientMRNA'), patientMRNAInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'patientMRNAInstance.label', default: 'PatientMRNA'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
