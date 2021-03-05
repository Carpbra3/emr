package com.emr.domain

import com.emr.Patient
import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Patient)
class PatientSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "setFirstName()"(){
        given:
            Patient myPatient = new Patient()
        when:
            myPatient.firstName = "NEW"
            myPatient.lastName = "CLIENT"
            myPatient.dateOfBirth = new Date()
            myPatient.save()

        then:
            myPatient.firstName == 'New'
    }

    void "setMiddleName()"(){
        given:
            Patient myPatient = new Patient()
        when:
            myPatient.firstName = "NEW"
            myPatient.middleName = "HAPPY"
            myPatient.lastName = "CLIENT"
            myPatient.dateOfBirth = new Date()
            myPatient.save()

        then:
            myPatient.middleName == 'Happy'
    }

    void "setLastName()"(){
        given:
            Patient myPatient = new Patient()
        when:
            myPatient.firstName = "NEW"
            myPatient.lastName = "CLIENT"
            myPatient.dateOfBirth = new Date()
            myPatient.save()

        then:
            myPatient.lastName == 'Client'
    }

}
