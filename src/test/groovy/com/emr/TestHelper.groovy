package com.emr

import grails.plugin.springsecurity.SpringSecurityService
import grails.util.Holders
import initialization.InitService

class TestHelper {

    static InitService getInitService(){
        return Holders.grailsApplication.mainContext.getBean("initService")
    }

    static PatientService getPatientService(){
        return Holders.grailsApplication.mainContext.getBean("patientService")
    }

    static SpringSecurityService getSpringSecurityService(){
        return Holders.grailsApplication.mainContext.getBean("springSecurityService")
    }

    static UserService getUserService(){
        return Holders.grailsApplication.mainContext.getBean("userService")
    }


    static doWithSpring = {
        initService(InitService)
        patientService(PatientService)
        springSecurityService(SpringSecurityService)
        userService(UserService)
    }
}
