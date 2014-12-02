<%@ page import="com.igpse.PatientMRNA" %>



<div class="fieldcontain ${hasErrors(bean: patientMRNAInstance, field: 'mrna', 'error')} required">
	<label for="mrna">
		<g:message code="patientMRNA.mrna.label" default="Mrna" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="mrna" name="mrna.id" from="${com.igpse.MRNA.list()}" optionKey="id" required="" value="${patientMRNAInstance?.mrna?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientMRNAInstance, field: 'patient', 'error')} required">
	<label for="patient">
		<g:message code="patientMRNA.patient.label" default="Patient" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="patient" name="patient.id" from="${com.igpse.Patient.list()}" optionKey="id" required="" value="${patientMRNAInstance?.patient?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: patientMRNAInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="patientMRNA.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="value" value="${fieldValue(bean: patientMRNAInstance, field: 'value')}" required=""/>

</div>

