<g:set var="pageTitle" value="Patient Search"/>

<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>${pageTitle}</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
</head>

<body>
<g:render template="sidebar"/>
<section class="col-sm-10 main">
    <header>
        <h2 class="page-header">${pageTitle}</h2>
    </header>
    <section>
        <form class="form-horizontal">
            <section class="row">
                <section class="col-sm-4">
                    <section class="form-group form-group-sm">
                        <label for="firstName" class="col-sm-4 control-label">First Name:</label>

                        <section class="col-sm-8">
                            <input type="text" class="form-control input-sm" id="firstName" name="firstName"
                                   maxlength="25">
                        </section>
                    </section>
                </section>

                <section class="col-sm-4">
                    <section class="form-group form-group-sm">
                        <label for="lastName" class="col-sm-4 control-label">Last Name:</label>

                        <section class="col-sm-8">
                            <input type="text" class="form-control input-sm" id="lastName" name="lastName"
                                   maxlength="25">
                        </section>
                    </section>
                </section>

                %{--<div class="col-sm-4">--}%
                %{--<div class="form-group form-group-sm">--}%
                %{--<label for="loanStatus" class="col-sm-4 control-label">Type:</label>--}%

                %{--<div class="col-sm-8">--}%
                %{--<g:select class="form-control" name="loanType" noSelection="['': '']" from="${com.idfbfs.enums.loan.LoanType.values().sort({it.value})}"--}%
                %{--optionKey="key" optionValue="value" value="${params.loanType}"/>--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--</div>--}%

                %{--<div class="col-sm-4">--}%
                %{--<div class="form-group form-group-sm">--}%
                %{--<label for="taxId" class="col-sm-4 control-label">TaxID:</label>--}%

                %{--<div class="col-sm-8">--}%
                %{--<input type="text" class="form-control input-sm" id="taxId" name="taxId" pattern=".{9,}" maxlength="9"--}%
                %{--onkeydown="return onlyNumericInput();">--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--<div class="row">--}%
                %{--<div class="col-sm-4">--}%
                %{--<div class="form-group form-group-sm">--}%
                %{--<label for="firstName" class="col-sm-4 control-label">First Name:</label>--}%

                %{--<div class="col-sm-8">--}%
                %{--<input type="text" class="form-control input-sm" id="firstName" name="firstName" value="${params.firstName}" />--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--</div>--}%

                %{--<div class="col-sm-4">--}%
                %{--<div class="form-group form-group-sm">--}%
                %{--<label for="middleName" class="col-sm-4 control-label">Middle Name:</label>--}%

                %{--<div class="col-sm-8">--}%
                %{--<input type="text" class="form-control input-sm" id="middleName" name="middleName" value="${params.middleName}" />--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--</div>--}%

                %{--<div class="col-sm-4">--}%
                %{--<div class="form-group form-group-sm">--}%
                %{--<label for="lastName" class="col-sm-4 control-label">Last Name:</label>--}%

                %{--<div class="col-sm-8">--}%
                %{--<input type="text" class="form-control input-sm" id="lastName" name="lastName" value="${params.lastName}" />--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--</div>--}%

                %{--<div class="row">--}%
                %{--<div class="col-sm-4">--}%
                %{--<div class="form-group form-group-sm">--}%
                %{--<label for="loanStatus" class="col-sm-4 control-label">Status:</label>--}%

                %{--<div class="col-sm-8">--}%
                %{--<g:select class="form-control" name="loanStatus" noSelection="['': '']" from="${com.idfbfs.enums.loan.LoanStatus.values().sort({it.value})}"--}%
                %{--optionKey="key" optionValue="value" value="${params.loanStatus}"/>--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--</div>--}%

                %{--<div class="col-sm-4">--}%
                %{--<div class="form-group form-group-sm">--}%
                %{--<label for="dealer" class="col-sm-4 control-label">Dealer:</label>--}%

                %{--<div class="col-sm-8">--}%
                %{--<input class="form-control input-sm" type="text" id="dealer" name="dealerQuery"/>--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--</div>--}%

                %{--<div class="col-sm-4">--}%
                %{--<div class="form-group form-group-sm">--}%
                %{--<label for="agent" class="col-sm-4 control-label">Agent:</label>--}%

                %{--<div class="col-sm-8">--}%
                %{--<g:select class="form-control input-sm" from="${Agent.allActive.list().sort({it.fullName()})}" noSelection="['': '']"--}%
                %{--name="agent" optionValue="${{ it.fullName() }}" optionKey="id"/>--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--</div>--}%

                %{--</div>--}%

                %{--<div class="row">--}%
                %{--<div class="col-sm-6">--}%
                %{--<div class="form-group form-group-sm">--}%
                %{--<label class="col-sm-3 control-label">Declined Date From:</label>--}%

                %{--<div class="col-sm-8">--}%
                %{--<bootstrapForm:datePicker name="dateRangeStart" noSelection="['': '']"--}%
                %{--precision="day"--}%
                %{--default = "none"--}%
                %{--years="${yearRange}" value="${params.dateRangeStart}"/>--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--</div>--}%

                %{--<div class="col-sm-6">--}%
                %{--<div class="form-group form-group-sm">--}%
                %{--<label class="col-sm-3 control-label">Declined Date To:</label>--}%
                %{--<div class="col-sm-8">--}%
                %{--<bootstrapForm:datePicker name="dateRangeEnd" noSelection="['': '']"--}%
                %{--default="none" precision="day"--}%
                %{--years="${yearRange}" value="${params.dateRangeEnd}"/>--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--</div>--}%

                <section class="row">
                    <div class="form-group form-group-sm">

                        <div class="col-sm-offset-9 col-sm-3">
                            <g:link controller="patient" action="search" class="btn btn-danger btn-sm"><i
                                    class="fa fa-times"
                                    aria-hidden="true"></i> Clear</g:link>
                            <button type="submit" class="btn btn-success btn-sm"><i class="fa fa-search"
                                                                                    aria-hidden="true"></i> Search
                            </button>
                        </div>
                    </div>
                </section>

            </section>
        </form>

        <section class="row">
            <section class="col-sm-12">

                %{--<section class="pagination pagination-sm">--}%
                %{--<g:paginate controller="loan" action="search" total="${loanCount}" prev="&lt;&lt;" next="&gt;&gt;" params="${params}"/>--}%
                %{--</section>--}%

                <section class="panel panel-default">
                    <section class="panel-heading"><strong>Results</strong></section>
                    <table class="table table-striped">
                        <tr>
                            <th>Patient ID.</th>
                            <th>First Name</th>
                            <th>Middle Name</th>
                            <th>Last Name</th>
                            <th>Date of Birth</th>
                            <th>Status</th>
                            <th>View</th>
                        </tr>
                        <g:each in="${patientInstanceList}" var="patientInstance">
                            <tr>
                                <td>
                                    <g:link patientInstance="patient" action="detail" id="${patientInstance?.id}">
                                        ${patientInstance?.id}
                                    </g:link>
                                </td>
                                <td>${patientInstance.firstName}</td>
                                <td>${patientInstance.middleName}</td>
                                <td>${patientInstance.lastName}</td>
                                <td><g:formatDate type="DATE" date="${patientInstance.dateOfBirth}"/></td>
                                <td>${patientInstance.lastName}</td>
                                <td>
                                    <g:link controller="patient" action="detail" id="${patientInstance.id}"
                                            class="btn btn-default btn-xs"
                                            role="button"><i class="fa fa-eye" aria-hidden="true"></i> View</g:link>
                                </td>
                            </tr>
                        </g:each>
                    </table>
                </section>

                %{--<section class="pagination pagination-sm">--}%
                %{--<g:paginate controller="loan" action="search" total="${loanCount}" prev="&lt;&lt;" next="&gt;&gt;" params="${params}"/>--}%
                %{--</section>--}%

            </section>
        </section>

    </section>
</section>
</body>
</html>