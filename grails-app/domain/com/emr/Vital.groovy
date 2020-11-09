
package com.emr

class Vital {

    BigDecimal heartRate
    BigDecimal bodyTemperature
    BigDecimal bloodPressure
    BigDecimal respirationRate

    Date createdDate
    User createdBy

    static constraints = {
        heartRate nullable: true
        bodyTemperature nullable: true
        bloodPressure nullable: true
        respirationRate nullable: true

    }
}
