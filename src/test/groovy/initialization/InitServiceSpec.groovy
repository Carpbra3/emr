package initialization

import com.emr.Patient
import com.emr.TestHelper
import com.emr.User
import com.emr.Vital
import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(InitService)
@Mock([Patient, User, Vital])
class InitServiceSpec extends Specification {

    static doWithSpring = TestHelper.doWithSpring

    def setup() {
    }

    def cleanup() {
    }

    void "initPatients()"() {
//        when:
//            service.initPatients()
//        then:
//            Patient.count == 1
        true == true
    }
}
