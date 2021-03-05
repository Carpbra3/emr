package com.emr

import enums.Ethnicity
import enums.Gender

/***************************
 * Created by Brandon Carpenter.
 * Date: 11/01/2020
 * Description:
 ****************************/

import enums.Sex

class Patient {

    String firstName
    String middleName
    String lastName
    Date dateOfBirth
    Sex sex
    Gender gender
    String genderDescription
    Ethnicity ethnicity
    String ethnicityDescription

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
        genderDescription nullable: true
        ethnicityDescription nullable: true
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

    /**
     * formats the first name
     * @param _firstName
     */
    void setFirstName(String _firstName){
        String output = _firstName.substring(0, 1).toUpperCase() + _firstName.substring(1).toLowerCase()
        this.firstName = output
    }

    /**
     * formats the middle name
     * @param _middleName
     */
    void setMiddleName(String _middleName){
        String output = _middleName.substring(0, 1).toUpperCase() + _middleName.substring(1).toLowerCase()
        this.middleName = output
    }

    /**
     * formats the last name
     * @param _lastName
     */
    void setLastName(String _lastName){
        String output = _lastName.substring(0, 1).toUpperCase() + _lastName.substring(1).toLowerCase()
        this.lastName = output
    }

}
