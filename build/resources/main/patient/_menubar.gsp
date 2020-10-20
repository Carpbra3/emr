<ul class="nav nav-tabs">
    <li role="presentation" <g:if test="${actionName == 'detail'}">class="active"</g:if>>
        <g:link controller="patient"
                action="detail"
                id="${patientInstance?.id}" elementId="patient"><i
                class="fa fa-house-user" aria-hidden="true"></i> Home</g:link>
    </li>
    <li role="presentation" <g:if test="${actionName == 'search'}">class="active"</g:if>>
        <g:link controller="patient"
                action="detail"
                id="${patientInstance?.id}" elementId="detailTab"><i
                class="fa fa-file-medical-alt" aria-hidden="true"></i> Vitals</g:link>
    </li>
</ul>
