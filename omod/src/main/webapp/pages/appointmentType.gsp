<%
    ui.decorateWith("appui", "standardEmrPage")
%>


<script type="text/javascript">
    var breadcrumbs = [
        { icon: "icon-home", link: '/' + OPENMRS_CONTEXT_PATH + '/index.htm' },
        { label: "${ ui.message("emr.app.systemAdministration.label")}",
            link: '${ui.pageLink("emr", "systemAdministration")}' },
        { label: "${ ui.message("appointmentschedulingui.appointmenttype.label")}",
            link: '${ui.pageLink("appointmentschedulingui", "manageAppointmentTypes")}' },
        { label: "${ ui.message("appointmentschedulingui.appointmenttype.title")}" }
    ];
</script>


<h1>
    ${ ui.message("appointmentschedulingui.appointmenttype.title") }
</h1>

<form method="post" id="accountForm">

        ${ ui.includeFragment("uicommons", "field/text", [
                label: ui.message("appointmentschedulingui.appointmenttype.name"),
                formFieldName: "familyName",
                initialValue: ('')
        ])}

        ${ ui.includeFragment("uicommons", "field/text", [
                label: ui.message("appointmentschedulingui.appointmenttype.duration"),
                formFieldName: "givenName",
                initialValue: ('')
        ])}

        ${ ui.includeFragment("uicommons", "field/text", [
                label: ui.message("appointmentschedulingui.appointmenttype.description"),
                formFieldName: "givenName",
                initialValue: ('')
        ])}

    <div>
        <input type="button" class="cancel" value="${ ui.message("appointmentschedulingui.appointmenttype.cancel") }" onclick="javascript:window.location='/${ contextPath }/appointmentschedulingui/manageAppointmentTypes.page'" />
        <input type="submit" class="confirm" id="save-button" value="${ ui.message("appointmentschedulingui.appointmenttype.save") }"  />
    </div>

</form>