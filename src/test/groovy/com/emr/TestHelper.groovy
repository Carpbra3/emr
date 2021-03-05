package com.emr

import enums.Ethnicity
import enums.Gender
import enums.Sex
import grails.plugin.springsecurity.SpringSecurityService
import grails.util.Holders
import initialization.InitService

class TestHelper {

    static doWithSpring = {
        initService(InitService)
        patientService(PatientService)
        springSecurityService(SpringSecurityService)
        userService(UserService)
    }

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

    static UserService getUserServiceWithDependencies(){
        UserService userService = getUserService()
        userService.springSecurityService = getSpringSecurityService()
        return userService
    }

    static Patient getBasicPatient(){
        Patient patient = new Patient(
                firstName: "new",
                middleName:  "friendly",
                lastName: "client",
                dateOfBirth: new Date(119, 01, 01),
                sex: Sex.MALE,
                gender: Gender.MALE,
                ethnicity: Ethnicity.WHITE,
                createdDate: new Date(),
        ).save(flush:true, failOnError: true)
        return patient
    }
}
