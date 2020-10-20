package com.emr

class UserController {

    UserService userService

    /**
     * Renders current user's profile
     * @return
     */
    def profile() {

        User userInstance = userService.getCurrentUser()

        render view: "profile", model: [
                userInstance : userInstance
        ]
    }

    /**
     * Renders new user creation form
     * @return
     */
    def create(){
        render view: 'create', model:[
            userInstance: new User()
        ]
    }

    def edit(User userInstance){

        render view: 'edit', model:[
                userInstance: userInstance
        ]
    }
}
