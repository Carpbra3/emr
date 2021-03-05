package initialization

import com.emr.Patient
import com.emr.Requestmap
import com.emr.Role
import com.emr.User
import com.emr.UserRole
import com.emr.Vital
import enums.Ethnicity
import enums.Gender
import enums.Sex
import grails.transaction.Transactional

@Transactional
class InitService {

    def initData() {
        for (String url in [
                '/error', '/**/favicon.ico', '/shutdown',
                '/assets/**', '/**/js/**', '/**/css/**', '/**/images/**',
                '/login', '/login.*', '/login/*',
                '/logout', '/logout.*', '/logout/*']) {
            new Requestmap(url: url, configAttribute: 'permitAll').save()
        }

        new Requestmap(url: '/**/**',    configAttribute: 'ROLE_USER').save()
        new Requestmap(url: '/profile/**',    configAttribute: 'ROLE_USER').save()
        new Requestmap(url: '/admin/**',      configAttribute: 'ROLE_ADMIN').save()
        new Requestmap(url: '/admin/role/**', configAttribute: 'ROLE_SUPERVISOR').save()
        new Requestmap(url: '/admin/user/**',
                configAttribute: 'ROLE_ADMIN').save()
        new Requestmap(url: '/login/impersonate',
                configAttribute: 'ROLE_SWITCH_USER,IS_AUTHENTICATED_FULLY').save()


        Requestmap.list().each {
            it.delete(flush: true)
        }

        List<String> permissions = [
                '/error',
                '/**/favicon.ico',
                '/shutdown',
                '/assets/**',
                '/**/js/**',
                '/**/css/**',
                '/**/images/**',
                '/login', '/login.*', '/login/**',
                '/logout', '/logout.*', '/logout/**',
                '/login/ajaxSuccess',
                '/login/ajaxSuccess/**',
                '/**/ajaxSuccess/**',
        ]
        for (String url in permissions) {
            Requestmap.findOrSaveByUrlAndConfigAttribute(url, 'permitAll')
        }

        List<String> basicUserPermissions = [
                '/**/**',
                '/index',
                '/index.gsp',
                '/profile/**',
        ]
        for (String url in basicUserPermissions) {
            Requestmap.findOrSaveByUrlAndConfigAttribute(url, 'ROLE_USER,ROLE_ADMIN')
        }

        List<String> adminUserPermissions = [
                '/admin/**',
        ]

        for (String url in adminUserPermissions) {
            Requestmap.findOrSaveByUrlAndConfigAttribute(url, 'ROLE_ADMIN')
        }
    }

    def initUsers(){
        User user = new User(
                firstName: 'Brandon',
                middleName: 'Nicholas',
                lastName: 'Carpenter',
                username: 'bcarpenter',
                password: 'test',
                enabled: true
        ).save(flush: true)

        User systemUser = new User(
                firstName: 'System',
                lastName: 'User',
                username: 'SysUser',
                password: 'test',
                enabled: true
        ).save(flush: true)

        Role userRole = Role.findOrCreateByAuthority("ROLE_USER").save()
        Role adminRole = Role.findOrCreateByAuthority("ROLE_ADMIN").save()

        UserRole.findOrCreateByUserAndRole(user, userRole).save()
        UserRole.findOrCreateByUserAndRole(user, adminRole).save()

        UserRole.findOrCreateByUserAndRole(systemUser, userRole)
    }

    def initRoles(){
        Role adminRole = Role.findOrCreateByAuthority("ROLE_ADMIN")

        UserRole userRole = UserRole.findOrCreateByUser(User.findByUsername("bcarpenter"))
    }


    def initPatients(){

        Patient patient = new Patient(
                firstName: "new",
                middleName:  "friendly",
                lastName: "client",
                dateOfBirth: new Date(119, 01, 01),
                sex: Sex.MALE,
                gender: Gender.MALE,
                ethnicity: Ethnicity.WHITE,
                createdDate: new Date(),
        ).save(flush:true, failOnError: true)

        new Vital(
                heightFeet: 5,
                heightInches: 4,
                weight: 130,
                heartRate: 80,
                systolicPressure: 120,
                diastolicPressure: 80,
                bodyTemperature: 98.5,
                patient: patient,
                createdBy: User.findByUsername('bcarpenter'),
                createdDate: new Date()
        ).save(flush:true, failOnError: true)

        new Vital(
                heightFeet: 5,
                heightInches: 6,
                weight: 135,
                heartRate: 82,
                systolicPressure: 130,
                diastolicPressure: 75,
                bodyTemperature: 97.5,
                patient: patient,
                createdBy: User.findByUsername('bcarpenter'),
                createdDate: new Date()
        ).save(flush:true, failOnError: true)

        new Vital(
                heightFeet: 5,
                heightInches: 7,
                weight: 140,
                heartRate: 70,
                systolicPressure: 110,
                diastolicPressure: 90,
                bodyTemperature: 99.5,
                patient: patient,
                createdBy: User.findByUsername('bcarpenter'),
                createdDate: new Date()
        ).save(flush:true, failOnError: true)
    }
}
