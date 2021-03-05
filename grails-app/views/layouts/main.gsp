<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="EMR"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:stylesheet src="application.css"/>
    %{--["cerulean", "cosmo", "cyborg", "darkly", "flatly", "journal", "lumen", "paper", "readable", "sandstone", "simplex", "slate", "spacelab", "superhero", "united", "yeti"]--}%
    <link rel="stylesheet" href="/emr/assets/fontawesome5.14.0/css/all.min.css"/>
    <link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/sandstone/bootstrap.min.css" rel="stylesheet"
          crossorigin="anonymous">

    <g:layoutHead/>
</head>

<body>

<section class="navbar navbar-default navbar-static-top" role="navigation">
    <a class="navbar-brand" href="/emr/#">
        <i class="fa grails-icon">
            %{--<asset:image src="favicon.ico"/>--}%
        </i> Grails
    </a>
    <section class="container">
        <section class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </section>
        <section class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false"><i class="fa fa-search" aria-hidden="true"></i> Search<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu">

                        <li><g:link controller="patient" action="search">Patient</g:link></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <g:pageProperty name="page.nav"/>
                <li><g:link controller="user" action="profile">
                    <i class="fa fa-user" aria-hidden="true"></i> Account</g:link>
                </li>
            </ul>
        </section>
    </section>
</section>

<g:layoutBody/>

<footer class="footer" role="contentinfo"></footer>

<section id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</section>

<asset:javascript src="application.js"/>

</body>
</html>
