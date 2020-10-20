package initialization

import com.emr.Patient
import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(InitService)
@Mock([Patient])
class InitServiceSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "initPatients()"() {
        when:
            service.initPatients()
        then:
            Patient.count == 1
    }
}
