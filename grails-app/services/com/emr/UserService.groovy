package com.emr

import grails.plugin.springsecurity.SpringSecurityService
import grails.transaction.Transactional

@Transactional
class UserService {

    SpringSecurityService springSecurityService


    @Transactional(readOnly = true)
    User getCurrentUser() {
        if (springSecurityService?.getCurrentUser() != null) {
            return springSecurityService.getCurrentUser()
        }
        else {
            return getSystemUser()
        }
    }

    User getCurrentUser(String username) {
        return User.findByUsername(username)
    }

    User getSystemUser(){
        return User.findByUsername('SysUser')
    }
}
