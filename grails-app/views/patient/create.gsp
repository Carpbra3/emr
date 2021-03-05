<g:set var="pageTitle" value="Create Patient"/>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title id="pageTabTitle">${pageTitle}</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
</head>

<body>
<g:render template="sidebar"/>
<section class="col-sm-10 main">
    <header>
        <h2 id="pageHeader">${pageTitle}</h2>
    </header>
    <section class="row">
        <section class="col-md-12 main">
            <section class="panel panel-primary">
                <section class="panel-heading">
                    <h3 class="panel-title">
                        <strong>Patient Information</strong>
                    </h3>
                </section>
                <section class="panel-body">
                    <section class="row">
                        <section class="col-md-12">
                            <g:form controller="patient" action="save" id="${patientInstance.id}" class="form-horizontal" method="POST">
                                <fieldset id="patientCreateForm" class="form-group-sm">
                                    <g:render template="patientForm"/>
                                </fieldset>
                                <fieldset id="buttons" class="buttons form-group-sm col-md-7 col-md-offset-5">
                                    <a id="cancelButton" class="btn btn-danger" data-toggle="modal"
                                       data-target="#cancelConfirmationModal">
                                        <i class="fa fa-times" aria-hidden="true"></i> Cancel
                                    </a>

                                    <button type="submit" id="submitButton" class=" btn btn-success">
                                        <i class="fa fa-save" aria-hidden="true"></i> Save
                                    </button>
                                </fieldset>
                            </g:form>
                        </section>
                    </section>
                </section>
            </section>
        </section>
    </section>
</section>
</body>
</html>
