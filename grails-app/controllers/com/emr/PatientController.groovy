package com.emr

class PatientController {

    PatientService patientService

    /**
     * Search action displays search screen for patients
     * @return
     */
    def search() {

        List<Patient> patientInstanceList = Patient.list()

        render view: 'search', model: [
                patientInstanceList: patientInstanceList
        ]
    }

    /**
     * Displays detail home screen for patients
     * @param patientInstance
     * @return
     */
    def detail(Patient patientInstance) {

        render view: 'detail', model: [
                patientInstance: patientInstance
        ]
    }

    /**
     * Displays new patient form
     * @return
     */
    def create() {

        render view: 'create', model: [
                patientInstance: new Patient()
        ]
    }


    /**
     * Saves patient and redirects to detail
     * @param patientInstance
     * @return
     */
    def save(Patient patientInstance) {
        patientService.save(patientInstance)
        redirect(action: 'detail', id: patientInstance.id)
    }

    /**
     * Displays patient edit form
     * @param patientInstance
     * @return
     */
    def edit(Patient patientInstance) {

        render view: 'edit', model: [
                patientInstance: patientInstance
        ]

    }

    /**
     * Logic to update patient and redirect to detail
     * @param patientInstance
     * @return
     */
    def update(Patient patientInstance) {
        patientService.save(patientInstance)
        redirect(action: 'detail', id: patientInstance.id)
    }

    def delete() {

    }

    def vitals(Patient patientInstance){
        render view: 'vitals'
    }
}
