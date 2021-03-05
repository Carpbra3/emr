package enums

/***************************
 * Created by Brandon Carpenter.
 * Date: 2/21/2021
 * Description: 
 ****************************/


enum Ethnicity {
    AMERICAN_OR_ALASKA_NATIVE('American or Alaskan Native'),
    ASIAN('Asian'),
    BLACK_OR_AFRICAN_AMERICAN('Black or African American'),
    HISPANIC_OR_LATINO('Hispanic or Latino'),
    NATIVE_HAWAIIAN_OR_PACIFIC_ISLANDER('Native Hawaiian or Pacific Islander'),
    WHITE('WHITE'),
    OTHER('Other')

    final String value

    Ethnicity(String value){
        this.value = value
    }
}