package com.emr.service

import com.emr.Patient
import com.emr.TestHelper
import com.emr.User
import com.emr.UserService
import grails.plugin.springsecurity.SpringSecurityService
import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(UserService)
@Mock([Patient, User])
class UserServiceSpec extends Specification {

    SpringSecurityService springSecurityService

    static doWithSpring = TestHelper.doWithSpring

    def setup() {

        springSecurityService = TestHelper.getSpringSecurityService()
    }

    def cleanup() {
    }

    void "getCurrentUser() returns the sysUser by default"() {
        when:
            User user = service.getCurrentUser()
        then:
            user.username == 'sysUser'

    }
}
