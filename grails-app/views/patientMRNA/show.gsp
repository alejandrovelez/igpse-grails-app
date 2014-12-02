
<%@ page import="com.igpse.PatientMRNA" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'patientMRNA.label', default: 'PatientMRNA')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-patientMRNA" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-patientMRNA" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list patientMRNA">
			
				<g:if test="${patientMRNAInstance?.mrna}">
				<li class="fieldcontain">
					<span id="mrna-label" class="property-label"><g:message code="patientMRNA.mrna.label" default="Mrna" /></span>
					
						<span class="property-value" aria-labelledby="mrna-label"><g:link controller="MRNA" action="show" id="${patientMRNAInstance?.mrna?.id}">${patientMRNAInstance?.mrna?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientMRNAInstance?.patient}">
				<li class="fieldcontain">
					<span id="patient-label" class="property-label"><g:message code="patientMRNA.patient.label" default="Patient" /></span>
					
						<span class="property-value" aria-labelledby="patient-label"><g:link controller="patient" action="show" id="${patientMRNAInstance?.patient?.id}">${patientMRNAInstance?.patient?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientMRNAInstance?.value}">
				<li class="fieldcontain">
					<span id="value-label" class="property-label"><g:message code="patientMRNA.value.label" default="Value" /></span>
					
						<span class="property-value" aria-labelledby="value-label"><g:fieldValue bean="${patientMRNAInstance}" field="value"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:patientMRNAInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${patientMRNAInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
