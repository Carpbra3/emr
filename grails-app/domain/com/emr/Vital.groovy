
package com.emr
/***************************
 * Created by Brandon Carpenter.
 * Date: 11/8/2020
 * Description:
 ****************************/

class Vital {

    BigDecimal weight
    int heightFeet
    int heightInches
    int heartRate
    int systolicPressure
    int diastolicPressure
    BigDecimal bodyTemperature
    BigDecimal respirationRate

    Date createdDate
    User createdBy

    Patient patient

    static constraints = {
        heartRate nullable: true
        weight nullable: true
        heightFeet nullable: true
        heightInches nullable: true
        heartRate nullable: true
        systolicPressure nullable: true
        diastolicPressure nullable: true
        bodyTemperature nullable: true
        respirationRate nullable: true
    }
}
