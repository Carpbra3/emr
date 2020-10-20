package com.emr.controller

import com.emr.Patient
import com.emr.PatientController
import com.emr.PatientService
import com.emr.TestHelper
import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import grails.test.mixin.TestMixin
import grails.test.mixin.support.GrailsUnitTestMixin
import spock.lang.Specification


/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(PatientController)
@Mock([Patient])
@TestMixin(GrailsUnitTestMixin)
class PatientControllerSpec extends Specification {

    PatientService patientService


    def doWithSpring = TestHelper.doWithSpring


    def setup() {
        patientService = TestHelper.getPatientService()
    }

    def cleanup() {

    }

    void "search() should display search page"() {
        when:
            controller.search()
        then:
            view == '/patient/search'
    }

    void "detail() should display detail page"(){
        when:
            Patient patient = new Patient(
                    firstName: 'new',
                    lastName:  'client',
                    dateOfBirth: new Date(),
                    createdDate: new Date()
            ).save(flush:true, failOnError: true)

            controller.detail(patient)
        then:
            view == '/patient/detail'
    }

    void "create() should display create page"() {
        when:
            controller.create()
        then:
            view == '/patient/create'
    }

    void "save() should redirect to detail page"(){
        when:
            Patient patient = new Patient()
            patient.firstName = 'new'
            patient.lastName = 'client'
            patient.dateOfBirth = new Date()
            patient.createdDate = new Date()
            patient.save(flush: true, failOnError:true)

            controller.save(patient)
        then:
            response.redirectedUrl == '/patient/detail/' + patient.id
    }

    void "edit() should display edit page"() {
        given:
            Patient patient = new Patient(
                    firstName: 'new',
                    lastName:  'client',
                    dateOfBirth: new Date(),
                    createdDate: new Date()
            ).save(flush:true, failOnError: true)
        when:
            controller.edit(patient)
        then:
            view == '/patient/edit/'
    }



}
