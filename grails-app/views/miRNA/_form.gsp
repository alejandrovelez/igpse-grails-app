<%@ page import="com.igpse.MiRNA" %>



<div class="fieldcontain ${hasErrors(bean: miRNAInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="miRNA.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${miRNAInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: miRNAInstance, field: 'patients', 'error')} ">
	<label for="patients">
		<g:message code="miRNA.patients.label" default="Patients" />
		
	</label>
	<g:select name="patients" from="${com.igpse.Patient.list()}" multiple="multiple" optionKey="id" size="5" value="${miRNAInstance?.patients*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: miRNAInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="miRNA.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="value" value="${fieldValue(bean: miRNAInstance, field: 'value')}" required=""/>

</div>

