package com.emr

/***************************
 * Created by Brandon Carpenter.
 * Date: 11/8/2020
 * Description:
 ****************************/

import groovy.json.JsonOutput

class VitalController {

    VitalService vitalService

    def patientVitals(Patient patientInstance) {

        def vitals = vitalService.getVitals(patientInstance)

        render view: '/patient/vital/patientVitals', model: [
                patientInstance : patientInstance,
                heartRateData: JsonOutput.toJson(vitals.heartRateData),
                temperatureData: JsonOutput.toJson(vitals.temperatureData),
                bloodPressureData : JsonOutput.toJson(vitals.bloodPressureData),
                heightData : JsonOutput.toJson(vitals.heightData),
                weightData : JsonOutput.toJson(vitals.weightData),
        ]
    }
}
