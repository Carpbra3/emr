package com.emr.service

import com.emr.Patient
import com.emr.Role
import com.emr.TestHelper
import com.emr.User
import com.emr.UserRole
import com.emr.UserService
import grails.plugin.springsecurity.SpringSecurityService
import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import initialization.InitService
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(UserService)
@Mock([Patient, User, Role, UserRole])
class UserServiceSpec extends Specification {

    SpringSecurityService springSecurityService
    UserService userService
    InitService initService

    static doWithSpring = TestHelper.doWithSpring

    def setup() {

        springSecurityService = TestHelper.getSpringSecurityService()
        userService = TestHelper.getUserServiceWithDependencies()
        initService = TestHelper.getInitService()

        initService.initUsers()

    }

    def cleanup() {
    }

    void "getCurrentUser() returns the sysUser by default"() {
        when:
            User user = service.getCurrentUser()
        then:
            user.username == 'SysUser'

    }
}
