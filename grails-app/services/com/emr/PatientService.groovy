package com.emr

import com.emr.Patient
import grails.transaction.Transactional

@Transactional
class PatientService {

    /**
     * Saves new patient information
     * @param patientInstance
     * @return
     */
    def save(Patient patientInstance) {
        patientInstance.createdDate = new Date()
        patientInstance.save(flush: true, failOnError: true)
    }

    /**
     * Saves updated values on patient
     * @param patientInstance
     * @return
     */
    def update(Patient patientInstance){
        patientInstance.save(flush: true, failOnError: true)
    }
}
