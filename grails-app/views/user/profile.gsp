<g:set var="pageTitle" value="User Profile"/>
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
    <section class="row">
        <section class="col-md-12">
            <section class="panel panel-default">
                <section class="panel-heading">
                        <h3 class="panel-title">
                            <strong>${pageTitle}</strong>
                            <section class="pull-right">
                                <g:link controller="user" action="edit" id="${userInstance.id}"
                                        class="btn btn-xs btn-primary" role="button">
                                    <i class="fa fa-pencil-alt" aria-hidden="true"></i> Edit
                                </g:link>
                            </section>
                        </h3>

                </section>
                <section class="panel-body">
                    <section class="row">
                        <section class="col-md-6">
                            <section class="row">
                                <section class="form form-group-sm">
                                    <label class="col-md-3 control-label">First Name:</label>

                                    <section class="col-md-8">
                                        <p>${userInstance.firstName}</p>
                                    </section>
                                </section>
                            </section>

                            <section class="row">
                                <section class="form form-group-sm">
                                    <label class="col-md-3 control-label">Middle Name:</label>

                                    <section class="col-md-8">
                                        <p>${userInstance.middleName}</p>
                                    </section>
                                </section>
                            </section>

                            <section class="row">
                                <section class="form form-group-sm">
                                    <label class="col-md-3 control-label">Last Name:</label>

                                    <section class="col-md-8">
                                        <p>${userInstance.lastName}</p>
                                    </section>
                                </section>
                            </section>
                        </section>

                        <section class="col-md-6">
                            <section class="row">
                                <section class="form form-group-sm">
                                    <label class="col-md-3 control-label">Username:</label>

                                    <section class="col-md-8">
                                        <p>${userInstance.username}</p>
                                    </section>
                                </section>
                            </section>

                            <section class="row">
                                <section class="form form-group-sm">
                                    <label class="col-md-3 control-label">Enabled:</label>

                                    <section class="col-md-8">
                                        <p>${userInstance.enabled}</p>
                                    </section>
                                </section>
                            </section>

                            <section class="row">
                                <section class="form form-group-sm">
                                    <label class="col-md-3 control-label">Account Locked:</label>

                                    <section class="col-md-8">
                                        <p>${userInstance.accountLocked}</p>
                                    </section>
                                </section>
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
