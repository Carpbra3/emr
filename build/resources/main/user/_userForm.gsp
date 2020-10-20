
<section class="form-horizontal">
    <section class="form-group required ${hasErrors(bean: userInstance, field: 'firstName', 'has-error')}">
        <section class="row">
            <label class="col-md-2 control-label">First Name:</label>

            <section class="col-md-6">
                <g:textField class="form-control" id="firstName" name="firstName" value="${userInstance?.firstName}" required="true"
                             autofocus="true"/>
            </section>
        </section>
    </section>


    <section class="row">
        <section class="form-group ${hasErrors(bean: userInstance, field: 'middleName', 'has-error')}">
            <label class="col-md-2 control-label">Middle Name:</label>

            <section class="col-md-6">
                <g:textField class="form-control" id="middleName"  name="middleName" value="${userInstance?.middleName}"/>
            </section>
        </section>
    </section>

    <section class="row">
        <section class="form-group required ${hasErrors(bean: userInstance, field: 'lastName', 'has-error')}">
            <label class="col-md-2 control-label">Last Name:</label>

            <section class="col-md-6">
                <g:textField class="form-control" id="lastName" name="lastName" value="${userInstance?.lastName}" required="true"/>
            </section>
        </section>
    </section>

    <section class="row">
        <section class="form-group required ${hasErrors(bean: userInstance, field: 'username', 'has-error')}">
            <label class="col-md-2 control-label">Username:</label>

            <section class="col-md-6">
                <g:textField class="form-control" id="username" name="username" value="${userInstance?.username}" required="true"/>
            </section>
        </section>
    </section>

    <section class="row">
        <section class="form-group required ${hasErrors(bean: userInstance, field: 'password', 'has-error')}">
            <label class="col-md-2 control-label">Password:</label>

            <section class="col-md-6">
                <g:textField class="form-control" id="password" name="password" value="${userInstance?.password}" required="true"/>
            </section>
        </section>
    </section>

    <section class="row">
        <section class="form-group required ${hasErrors(bean: userInstance, field: 'isEnabled', 'has-error')}">
            <label class="col-md-2 control-label">Enabled:</label>

            <section class="col-md-6">
                <g:checkBox class="" id="enabled" name="enabled" value="${userInstance?.enabled}" required="true"/>
            </section>
        </section>
    </section>

    <section class="row">
        <section class="form-group required ${hasErrors(bean: userInstance, field: 'lastName', 'has-error')}">
            <label class="col-md-2 control-label">Account Locked:</label>

            <section class="col-md-6">
                <g:checkBox class="" id="accountLocked" name="accountLocked" value="${userInstance?.accountLocked}" required="true"/>
            </section>
        </section>
    </section>
</section>



