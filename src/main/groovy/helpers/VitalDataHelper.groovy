package helpers

import com.emr.Patient
import com.emr.Vital

/***************************
 * Created by Brandon Carpenter.
 * Date: 2/27/2021
 * Description: 
 ****************************/

class VitalDataHelper {

    List<Vital> patientVitals
    def heartRateData
    def temperatureData
    def bloodPressureData
    def heightData
    def weightData

    VitalDataHelper(Patient patientInstance){
        patientVitals =  Vital.findAllByPatient(patientInstance)
    }

    /**
     * This sets all values on vitals to be used
     * @return
     */
    def setAllVitals(){
        heartRateData = []
        heartRateData << ['Created Date', 'Heart Rate' ]

        temperatureData = []
        temperatureData << ['Created Date', 'Temperature']

        bloodPressureData = []
        bloodPressureData << ['Created Date', 'Systolic Pressure', 'Diastolic Pressure']

        heightData = []
        heightData << ['Created Date', 'Height']

        weightData = []
        weightData << ['Created Date', 'Height']

        patientVitals.sort{it.createdDate}.each{
            heartRateData << [it.createdDate.format('MM-dd-yyyy'), it.heartRate]
            temperatureData << [it.createdDate.format('MM-dd-yyyy'), it.bodyTemperature]
            bloodPressureData << [it.createdDate.format('MM-dd-yyyy'), it.systolicPressure, it.diastolicPressure]
            heightData << [it.createdDate.format('MM-dd-yyyy'), new BigDecimal(it.heightFeet + (it.heightInches / 100))]
            weightData << [it.createdDate.format('MM-dd-yyyy'), it.weight]
        }
    }
}
