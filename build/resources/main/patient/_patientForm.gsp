

%{--<g:hiddenField name="patientInstance.id" value="${patientInstance.id}"/>--}%
<section class="form-horizontal">
    <section class="form-group required ${hasErrors(bean: patientInstance, field: 'firstName', 'has-error')}">
        <section class="row">
            <label class="col-md-2 control-label">First Name:</label>

            <section class="col-md-6">
                <g:textField class="form-control" id="firstName" name="firstName" value="${patientInstance?.firstName}" required="true"
                             autofocus="true"/>
            </section>
        </section>
    </section>


    <section class="row">
        <section class="form-group ${hasErrors(bean: patientInstance, field: 'middleName', 'has-error')}">
            <label class="col-md-2 control-label">Middle Name:</label>

            <section class="col-md-6">
                <g:textField class="form-control" id="middleName"  name="middleName" value="${patientInstance?.middleName}"/>
            </section>
        </section>
    </section>

    <section class="row">
        <section class="form-group required ${hasErrors(bean: patientInstance, field: 'lastName', 'has-error')}">
            <label class="col-md-2 control-label">Last Name:</label>

            <section class="col-md-6">
                <g:textField class="form-control" id="lastName" name="lastName" value="${patientInstance?.lastName}" required="true"/>
            </section>
        </section>
    </section>

    <section class="row">
        <section class="form-group required ${hasErrors(bean: patientInstance, field: 'dateOfBirth', 'has-error')}">
            <label class="col-md-2 control-label">Date Of Birth:</label>

            <section class="col-md-6">
                <g:datePicker precision="day" class="form-control" id="dateOfBirth" name="dateOfBirth" value="${patientInstance?.dateOfBirth}" required="true"/>
            </section>
        </section>
    </section>
</section>



