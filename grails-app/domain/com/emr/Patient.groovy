package com.emr

import enums.Gender
import enums.Sex

class Patient {

    String firstName
    String middleName
    String lastName
    Date dateOfBirth
    Sex sex
//    Gender gender

    Date createdDate
    Date deletedDate
    Date modifiedDate

    static hasMany = [
            vitals: Vital
    ]

    static constraints = {
        middleName nullable: true
        deletedDate nullable: true
        modifiedDate nullable: true
        dateOfBirth sqlType: 'date'
    }

    static searchFields = [
            fields : [
                    'firstName',
                    'middleName',
                    'lastName'
            ],
            defaultField : 'lastName', //default filter field
            defaultSort : 'lastName'
    ]

    static mapping = {
        table "patient"
    }

    void setFirstName(String _firstName){
        String output = _firstName.substring(0, 1).toUpperCase() + _firstName.substring(1).toLowerCase()
        this.firstName = output
    }

    void setLastName(String _lastName){
        String output = _lastName.substring(0, 1).toUpperCase() + _lastName.substring(1).toLowerCase()
        this.lastName = output
    }


}
