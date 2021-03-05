package com.emr

import grails.transaction.Transactional
import helpers.VitalDataHelper

@Transactional
class VitalService {

    def getVitals(Patient patientInstance) {
        VitalDataHelper dataHelper = new VitalDataHelper(patientInstance)
        dataHelper.setAllVitals()
        return dataHelper
    }
}
