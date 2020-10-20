<g:set var="pageTitle" value="Edit Patient"/>
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
        <h2>${pageTitle}</h2>
    </header>
    <section class="row">
        <section class="col-md-12">
            <section class="panel panel-primary">
                <section class="panel-heading">
                    <h3 class="panel-title">
                        <strong>Patient Information</strong>
                    </h3>
                </section>
                <section class="panel-body">
                    <section class="row form-horizontal">
                        <section class="col-md-12">
                            <g:form controller="patient" action="update" id="${userInstance.id}" method="POST">
                                <fieldset class="form-group">
                                    <g:render template="userForm"/>
                                </fieldset>
                                <fieldset class="buttons form-group">
                                    <a class="btn btn-danger" data-toggle="modal"
                                       data-target="#cancelConfirmationModal">
                                        <i class="fa fa-times" aria-hidden="true"></i> Cancel
                                    </a>

                                    <button type="submit" class=" btn btn-success">
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