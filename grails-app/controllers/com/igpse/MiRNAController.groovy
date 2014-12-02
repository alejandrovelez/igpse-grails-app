package com.igpse



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MiRNAController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MiRNA.list(params), model:[miRNAInstanceCount: MiRNA.count()]
    }

    def show(MiRNA miRNAInstance) {
        respond miRNAInstance
    }

    def create() {
        respond new MiRNA(params)
    }

    @Transactional
    def save(MiRNA miRNAInstance) {
        if (miRNAInstance == null) {
            notFound()
            return
        }

        if (miRNAInstance.hasErrors()) {
            respond miRNAInstance.errors, view:'create'
            return
        }

        miRNAInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'miRNAInstance.label', default: 'MiRNA'), miRNAInstance.id])
                redirect miRNAInstance
            }
            '*' { respond miRNAInstance, [status: CREATED] }
        }
    }

    def edit(MiRNA miRNAInstance) {
        respond miRNAInstance
    }

    @Transactional
    def update(MiRNA miRNAInstance) {
        if (miRNAInstance == null) {
            notFound()
            return
        }

        if (miRNAInstance.hasErrors()) {
            respond miRNAInstance.errors, view:'edit'
            return
        }

        miRNAInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MiRNA.label', default: 'MiRNA'), miRNAInstance.id])
                redirect miRNAInstance
            }
            '*'{ respond miRNAInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MiRNA miRNAInstance) {

        if (miRNAInstance == null) {
            notFound()
            return
        }

        miRNAInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MiRNA.label', default: 'MiRNA'), miRNAInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'miRNAInstance.label', default: 'MiRNA'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
