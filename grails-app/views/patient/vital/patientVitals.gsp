<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <title>Patient Vitals</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
</head>

<body>
<g:render template="/patient/sidebar"/>
<section class="col-sm-10 main">
    <g:render template="/patient/menubar"/>
    <section class="row">
        <section class="col-md-4">
            <section class="panel panel-default">
                <section class="panel-heading">
                    <h3 class="panel-title">
                        <strong>Heart Rate</strong>
                        <section class="pull-right">
                            <g:link controller="patient" action="edit" id="${patientInstance.id}"
                                    class="btn btn-xs btn-primary" role="button">
                                <i class="fa fa-pencil" aria-hidden="true"></i> Details
                            </g:link>
                        </section>
                    </h3>

                </section>
                <section class="panel-body">
                    <section class="row">
                        <div class="col-md-12">
                            <div id="barchart_material"></div>
                        </div>
                    </section>
                </section>
            </section>
        </section>

        <section class="col-md-4">
            <section class="panel panel-default">
                <section class="panel-heading">
                    <h3 class="panel-title">
                        <strong>Body Temperature</strong>
                        <section class="pull-right">
                            <g:link controller="patient" action="edit" id="${patientInstance.id}"
                                    class="btn btn-xs btn-primary" role="button">
                                <i class="fa fa-pencil" aria-hidden="true"></i> Details
                            </g:link>
                        </section>
                    </h3>

                </section>
                <section class="panel-body">
                    <section class="row">
                        <div class="col-md-12">
                            <div id="barchart_material2"></div>
                        </div>
                    </section>
                </section>
            </section>
        </section>

        <section class="col-md-4">
            <section class="panel panel-default">
                <section class="panel-heading">
                    <h3 class="panel-title">
                        <strong>Blood Pressure</strong>
                        <section class="pull-right">
                            <g:link controller="patient" action="edit" id="${patientInstance.id}"
                                    class="btn btn-xs btn-primary" role="button">
                                <i class="fa fa-pencil" aria-hidden="true"></i> Details
                            </g:link>
                        </section>
                    </h3>

                </section>
                <section class="panel-body">
                    <section class="row">
                        <div class="col-md-12">
                            <div id="barchart_material3"></div>
                        </div>
                    </section>
                </section>
            </section>
        </section>

    </section>
    <section class="row">
        <section class="col-md-4">
            <section class="panel panel-default">
                <section class="panel-heading">
                    <h3 class="panel-title">
                        <strong>Height</strong>
                        <section class="pull-right">
                            <g:link controller="patient" action="edit" id="${patientInstance.id}"
                                    class="btn btn-xs btn-primary" role="button">
                                <i class="fa fa-pencil" aria-hidden="true"></i> Details
                            </g:link>
                        </section>
                    </h3>

                </section>
                <section class="panel-body">
                    <section class="row">
                        <div class="col-md-12">
                            <div id="barchart_material4"></div>
                        </div>
                    </section>
                </section>
            </section>
        </section>

        <section class="col-md-4">
            <section class="panel panel-default">
                <section class="panel-heading">
                    <h3 class="panel-title">
                        <strong>Weight</strong>
                        <section class="pull-right">
                            <g:link controller="patient" action="edit" id="${patientInstance.id}"
                                    class="btn btn-xs btn-primary" role="button">
                                <i class="fa fa-pencil" aria-hidden="true"></i> Details
                            </g:link>
                        </section>
                    </h3>

                </section>
                <section class="panel-body">
                    <section class="row">
                        <div class="col-md-12">
                            <div id="barchart_material5"></div>
                        </div>
                    </section>
                </section>
            </section>
        </section>
    </section>
</section>

<g:javascript>

    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawHeartRate);
    google.charts.setOnLoadCallback(drawTemperature);
    google.charts.setOnLoadCallback(drawBloodPressure);
    google.charts.setOnLoadCallback(drawHeight);
    google.charts.setOnLoadCallback(drawWeight);


    function drawHeartRate() {
        var data = google.visualization.arrayToDataTable(${raw(heartRateData)});
        var options = {
            chartArea: {width: '80%', height: '70%'},
            is3D: true,
            legend: { position: 'bottom' },
            displayAnnotations: true,
            annotationText: data.heartRate,

        };
        var chart = new google.visualization.LineChart(document.getElementById('barchart_material'));
        chart.draw(data, options);
    }

    function drawTemperature() {
        var data = google.visualization.arrayToDataTable(${raw(temperatureData)});
        var options = {
            chartArea: {width: '80%', height: '70%'},
            legend: { position: 'bottom' },
            displayAnnotations: true
        };
        var chart = new google.visualization.LineChart(document.getElementById('barchart_material2'));
        chart.draw(data, options);
    }

    function drawBloodPressure() {
        var data = google.visualization.arrayToDataTable(${raw(bloodPressureData)});
        var options = {
            chartArea: {width: '80%', height: '70%'},
            legend: { position: 'bottom' },
            displayAnnotations: true
        };
        var chart = new google.visualization.LineChart(document.getElementById('barchart_material3'));
        chart.draw(data, options);
    }

    function drawHeight() {
        var data = google.visualization.arrayToDataTable(${raw(heightData)});
        var options = {
            chartArea: {width: '80%', height: '70%'},
            legend: { position: 'bottom' }
        };
        var chart = new google.visualization.LineChart(document.getElementById('barchart_material4'));
        chart.draw(data, options);
    }

    function drawWeight() {
        var data = google.visualization.arrayToDataTable(${raw(weightData)});
        var options = {
            chartArea: {width: '80%', height: '70%'},
            legend: { position: 'bottom' }
        };
        var chart = new google.visualization.LineChart(document.getElementById('barchart_material5'));
        chart.draw(data, options);
    }

</g:javascript>

</body>
</html>
