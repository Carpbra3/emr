package com.emr.service

import com.emr.Patient
import com.emr.PatientService
import com.emr.TestHelper
import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(PatientService)
@Mock([Patient])
class PatientServiceSpec extends Specification {

    static doWithSpring = TestHelper.doWithSpring

    def setup() {
    }

    def cleanup() {
    }

    void "save() should save patient"() {
        given:
            Patient patient = new Patient(
                    firstName: 'new',
                    lastName:  'cLIENT',
                    dateOfBirth: new Date(),
                    createdDate: new Date()
            )
        when:
            service.save(patient)
            Patient newPatient = Patient.list().getAt(0)
        then:
            Patient.count == 1

            newPatient.firstName == 'New'
            newPatient.lastName == 'Client'

    }
}
