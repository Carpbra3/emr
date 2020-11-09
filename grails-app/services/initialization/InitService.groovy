package initialization

import com.emr.Patient
import com.emr.Requestmap
import com.emr.Role
import com.emr.User
import com.emr.UserRole
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
                configAttribute: 'ROLE_ADMIN,ROLE_SUPERVISOR').save()
        new Requestmap(url: '/login/impersonate',
                configAttribute: 'ROLE_SWITCH_USER,IS_AUTHENTICATED_FULLY').save()


        Requestmap.list().each {
            it.delete(flush: true)
        }

        List<String> permissions = [
                '/balanceStatus/**',
                '/error',
                '/**/favicon.ico',
                '/shutdown',
                '/assets/**',
                '/**/js/**',
                '/**/css/**',
                '/**/images/**',
                '/login', '/login.*', '/login/**',
                '/logout', '/logout.*', '/logout/**',
                '/api/mobileApp/**',
                '/api/loanProductionContest/**',
                '/login/ajaxSuccess',
                '/login/ajaxSuccess/**',
                '/**/ajaxSuccess/**',
                '/api/document/**', // message broker needs the create method
        ]
        for (String url in permissions) {
            Requestmap.findOrSaveByUrlAndConfigAttribute(url, 'permitAll')
        }

        List<String> financeUserPermissions = [
                '/**/**',
                '/index',
                '/index.gsp',
                '/profile/**',
                '/admin/balanceHistory/*',
                '/admin/commissionExpense/*',
                '/admin/ledger/**'
        ]
        for (String url in financeUserPermissions) {
            // view only users get the permission to view all pages, except the edit buttons are not shown to them, its handled in each gsp template
            Requestmap.findOrSaveByUrlAndConfigAttribute(url, 'ROLE_ADMIN,ROLE_FINANCE_USER,ROLE_BOOKKEEPER,' +
                    'ROLE_DOCUMENTATION_CLERK,ROLE_DIVISION_MANAGER,ROLE_MANAGER,ROLE_DIRECTOR_OF_FINANCE,ROLE_VIEW_ONLY')
            // no space after comma
        }

        List<String> financeUserSpecificPermissions = [
                //'/api/document/**',
        ]
        for (String url in financeUserSpecificPermissions) {
            Requestmap.findOrSaveByUrlAndConfigAttribute(url, 'ROLE_FINANCE_USER')
        }

        List<String> adminUserPermissions = [
                '/admin/**',
                '/api/clock/**',
                '/api/legacy/**',
                '/api/systemSettings/**',
                '/batch/**',
                '/devTools/**',
                '/performance/**',
                '/loan/addLoanHistory/**',
                '/loan/adjustment/**'
        ]
        for (String url in adminUserPermissions) {
            Requestmap.findOrSaveByUrlAndConfigAttribute(url, 'ROLE_ADMIN,ROLE_DIRECTOR_OF_FINANCE')
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

        UserRole userRole = UserRole.findOrCreateByUser('')
    }


    def initPatients(){
        Patient patient = new Patient(
                firstName: "Brandon",
                lastName:  "Carpenter",
                middleName: "Nicholas",
                dateOfBirth: new Date(119, 01, 01),
                sex: Sex.MALE,
                createdDate: new Date(),
        ).save(flush:true, failOnError: true)
    }
}
