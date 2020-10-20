<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Patient Detail</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
</head>

<body>
<g:render template="sidebar"/>
<section class="col-sm-10 main">
    <g:render template="menubar"/>
    <section class="row">
        <section class="col-md-4">
            <section class="panel panel-default">
                <section class="panel-heading">
                        <h3 class="panel-title">
                            <strong>Patient Information</strong>
                            <section class="pull-right">
                                <g:link controller="patient" action="edit" id="${patientInstance.id}"
                                        class="btn btn-xs btn-primary" role="button">
                                    <i class="fa fa-pencil" aria-hidden="true"></i> Edit
                                </g:link>
                            </section>
                        </h3>

                </section>
                <section class="panel-body">
                    <section class="row">
                        <section class="form form-group-sm">
                            <label class="col-md-4 control-label">First Name:</label>

                            <section class="col-md-8">
                                <p>${patientInstance.firstName}</p>
                            </section>
                        </section>
                    </section>

                    <section class="row">
                        <section class="form form-group-sm">
                            <label class="col-md-4 control-label">Middle Name:</label>

                            <section class="col-md-8">
                                <p>${patientInstance.middleName}</p>
                            </section>
                        </section>
                    </section>

                    <section class="row">
                        <section class="form form-group-sm">
                            <label class="col-md-4 control-label">Last Name:</label>

                            <section class="col-md-8">
                                <p>${patientInstance.lastName}</p>
                            </section>
                        </section>
                    </section>

                </section>
            </section>
        </section>

    </section>
</section>

</body>
</html>
