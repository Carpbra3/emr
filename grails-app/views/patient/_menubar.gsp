<ul class="nav nav-tabs">
    <li role="presentation" <g:if test="${actionName == 'detail'}">class="active"</g:if>>
        <g:link controller="patient"
                action="detail"
                id="${patientInstance?.id}" elementId="patient"><i class="fa fa-house-user" aria-hidden="true"></i> Home</g:link>
    </li>
    <li role="presentation" <g:if test="${actionName == 'patientVitals'}">class="active"</g:if>>
        <g:link controller="vital"
                action="patientVitals"
                id="${patientInstance?.id}" elementId="detailTab"><i
                class="fa fa-file-medical-alt" aria-hidden="true"></i> Vitals</g:link>
    </li>
    <li role="presentation" <g:if test="${actionName == 'patientPrescriptions'}">class="active"</g:if>>
        <g:link controller="vital"
                action="patientVitals"
                id="${patientInstance?.id}" elementId="detailTab"><i
                class="fa fa-file-prescription" aria-hidden="true"></i> Prescriptions </g:link>
    </li>
    <li role="presentation" <g:if test="${actionName == 'patientLabs'}">class="active"</g:if>>
        <g:link controller="vital"
                action="patientVitals"
                id="${patientInstance?.id}" elementId="detailTab"><i
                class="fa fa-vials" aria-hidden="true"></i> Labs</g:link>
    </li>
    <li role="presentation" <g:if test="${actionName == 'patientImages'}">class="active"</g:if>>
        <g:link controller="vital"
                action="patientVitals"
                id="${patientInstance?.id}" elementId="detailTab"><i
                class="fas fa-x-ray" aria-hidden="true"></i> Images</g:link>
    </li>
</ul>
