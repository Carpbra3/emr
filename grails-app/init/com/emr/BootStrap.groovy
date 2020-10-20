package com.emr

import initialization.InitService


class BootStrap {

    InitService initService

    def init = { servletContext ->
        initService.initData()
        initService.initUsers()
        initService.initPatients()
    }
    def destroy = {
    }
}
