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
            <section id="inputs" class="row">
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
            </section>
            <section id="buttons" class="row">
                <section class="form-group form-group-sm">
                    <section class="col-sm-offset-9 col-sm-3">
                        <g:link controller="patient" action="search" id="clearButton" class="btn btn-danger btn-sm"><i
                                class="fa fa-times"
                                aria-hidden="true"></i> Clear</g:link>
                        <button type="submit" id="searchButton" class="btn btn-success btn-sm"><i class="fa fa-search"
                                                                                                  aria-hidden="true"></i> Search
                        </button>
                    </section>
                </section>
            </section>
        </form>

        <section class="row">
            <section class="col-sm-12">

                %{--<section class="pagination pagination-sm">--}%
                %{--<g:paginate controller="" action="" total="${}" prev="&lt;&lt;" next="&gt;&gt;" params="${params}"/>--}%
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
                %{--<g:paginate controller="" action="" total="${}" prev="&lt;&lt;" next="&gt;&gt;" params="${params}"/>--}%
                %{--</section>--}%

            </section>
        </section>

    </section>
</section>
</body>
</html>