package enums


/***************************
 * Created by Brandon Carpenter.
 * Date: 11/8/2020
 * Description: 
 ****************************/


enum Gender {

    MALE('Male'),
    FEMALE('Female'),
    OTHER('Other')

    final String value

    Gender(String value){
        this.value = value
    }

}