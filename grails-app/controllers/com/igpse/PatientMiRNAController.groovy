package com.igpse

import groovy.sql.Sql
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import groovy.json.*

@Transactional(readOnly = true)
class PatientMiRNAController {

    def patientMiRNAService
    def dataSource
    def clusterService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PatientMiRNA.list(params), model:[patientMiRNAInstanceCount: PatientMiRNA.count()]
    }

    def show(PatientMiRNA patientMiRNAInstance) {
        respond patientMiRNAInstance
    }

    /**
    * This method actually loads the data from mirna.csv into the database
    * look at the service to see how
    *
    **/
    def showCSVContents() {
        //def csvContents = patientMiRNAService.parseCSVFile("mirna.csv")

        render "Done!"
    }

    def listMiRNA() {
        Sql sql = new Sql(dataSource)
        int counter = 0
        def arr = []
        def selectClos = { mirnaId ->
            counter = 0;
            sql.eachRow("select * from patient_mirna where mirna_id=$mirnaId") { row ->
                def doub = row.value
                doub.metaClass.patient = row.patient_id
                arr[counter].push(doub)
                counter++;
            }
        }

        for(int i=0; i < 623; i++) {
            arr[i] = []
        }

        if(!params.mirnaIds){
            notFound()
            return
        }

        /*If only one id */
        if(params.mirnaIds instanceof String) {
            selectClos(params.mirnaIds)        
        }
        else {
           /*Else we have an array of ids */
            params.mirnaIds.each { mirnaId -> 
                selectClos(mirnaId)
            } 
        }        

        render clusterService.buildGroupJson(arr, params.numOfClusters)
    }

    def selectMiRNA() {
        respond model: [mirnaList: MiRNA.list()]
    }

    def create() {
        respond new PatientMiRNA(params)
    }

    @Transactional
    def save(PatientMiRNA patientMiRNAInstance) {
        if (patientMiRNAInstance == null) {
            notFound()
            return
        }

        if (patientMiRNAInstance.hasErrors()) {
            respond patientMiRNAInstance.errors, view:'create'
            return
        }

        patientMiRNAInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'patientMiRNAInstance.label', default: 'PatientMiRNA'), patientMiRNAInstance.id])
                redirect (action: 'index')
            }
            '*' { respond patientMiRNAInstance, [status: CREATED] }
        }
    }

    def edit(PatientMiRNA patientMiRNAInstance) {
        respond patientMiRNAInstance
    }

    @Transactional
    def update(PatientMiRNA patientMiRNAInstance) {
        if (patientMiRNAInstance == null) {
            notFound()
            return
        }

        if (patientMiRNAInstance.hasErrors()) {
            respond patientMiRNAInstance.errors, view:'edit'
            return
        }

        patientMiRNAInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PatientMiRNA.label', default: 'PatientMiRNA'), patientMiRNAInstance.id])
                redirect patientMiRNAInstance
            }
            '*'{ respond patientMiRNAInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PatientMiRNA patientMiRNAInstance) {

        if (patientMiRNAInstance == null) {
            notFound()
            return
        }

        patientMiRNAInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PatientMiRNA.label', default: 'PatientMiRNA'), patientMiRNAInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'patientMiRNAInstance.label', default: 'PatientMiRNA'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
