package com.igpse



import grails.test.mixin.*
import spock.lang.*

@TestFor(MiRNAController)
@Mock(MiRNA)
class MiRNAControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.miRNAInstanceList
            model.miRNAInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.miRNAInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def miRNA = new MiRNA()
            miRNA.validate()
            controller.save(miRNA)

        then:"The create view is rendered again with the correct model"
            model.miRNAInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            miRNA = new MiRNA(params)

            controller.save(miRNA)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/miRNA/show/1'
            controller.flash.message != null
            MiRNA.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def miRNA = new MiRNA(params)
            controller.show(miRNA)

        then:"A model is populated containing the domain instance"
            model.miRNAInstance == miRNA
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def miRNA = new MiRNA(params)
            controller.edit(miRNA)

        then:"A model is populated containing the domain instance"
            model.miRNAInstance == miRNA
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/miRNA/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def miRNA = new MiRNA()
            miRNA.validate()
            controller.update(miRNA)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.miRNAInstance == miRNA

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            miRNA = new MiRNA(params).save(flush: true)
            controller.update(miRNA)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/miRNA/show/$miRNA.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/miRNA/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def miRNA = new MiRNA(params).save(flush: true)

        then:"It exists"
            MiRNA.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(miRNA)

        then:"The instance is deleted"
            MiRNA.count() == 0
            response.redirectedUrl == '/miRNA/index'
            flash.message != null
    }
}
