package com.emr.controller

import com.emr.Role
import com.emr.TestHelper
import com.emr.User
import com.emr.UserController
import com.emr.UserRole
import com.emr.UserService
import grails.plugin.springsecurity.SpringSecurityService
import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import initialization.InitService
import org.junit.Test
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(UserController)
@Mock([User, Role, UserRole])
class UserControllerSpec extends Specification {

    SpringSecurityService springSecurityService
    InitService initService
    UserService userService

    def doWithSpring = TestHelper.doWithSpring

    def setup() {
        initService = TestHelper.getInitService()
        userService = TestHelper.getUserService()
        initService.initUsers()
    }

    def cleanup() {
    }

    void "profile() should display detail page"(){
        when:
            controller.profile()
        then:
            view == '/user/profile'
    }

    void "create() should display create page"(){
        when:
            controller.create()
        then:
            view == '/user/create'
    }

    void "edit should display edit page"(){
        when:
            controller.edit(userService.getCurrentUser())

        then:
            view == '/user/edit'
    }

}
