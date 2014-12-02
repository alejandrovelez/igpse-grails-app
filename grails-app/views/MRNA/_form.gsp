<%@ page import="com.igpse.MRNA" %>



<div class="fieldcontain ${hasErrors(bean: MRNAInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="MRNA.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${MRNAInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MRNAInstance, field: 'patients', 'error')} ">
	<label for="patients">
		<g:message code="MRNA.patients.label" default="Patients" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: MRNAInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="MRNA.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="value" value="${fieldValue(bean: MRNAInstance, field: 'value')}" required=""/>

</div>

