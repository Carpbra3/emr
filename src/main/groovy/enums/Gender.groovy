package enums


/***************************
 * Created by Brandon Carpenter.
 * Date: 11/8/2020
 * Description: 
 ****************************/


enum Gender {

    MALE('male'),
    FEMALE('female')

    final String value

    Gender(String value){
        this.value = value
    }

}