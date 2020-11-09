package enums

/***************************
 * Created by Brandon Carpenter.
 * Date: 11/8/2020
 * Description:
 ****************************/

enum Sex {

    MALE('male'),
    FEMALE('female')

    final String value

    Sex(String value){
        this.value = value
    }

}