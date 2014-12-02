<%@ page import="com.igpse.PatientMiRNA" %>



<div class="fieldcontain ${hasErrors(bean: patientMiRNAInstance, field: 'mirna', 'error')} required">
	<label for="mirna">
		<g:message code="patientMiRNA.mirna.label" default="Mirna" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="mirna" name="mirna.id" from="${com.igpse.MiRNA.list()}" optionKey="id" required="" value="${patientMiRNAInstance?.mirna?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientMiRNAInstance, field: 'patient', 'error')} required">
	<label for="patient">
		<g:message code="patientMiRNA.patient.label" default="Patient" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="patient" name="patient.id" from="${com.igpse.Patient.list()}" optionKey="id" required="" value="${patientMiRNAInstance?.patient?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientMiRNAInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="patientMiRNA.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="value" value="${fieldValue(bean: patientMiRNAInstance, field: 'value')}" required=""/>

</div>

