
<%@ page import="com.igpse.PatientMiRNA" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'patientMiRNA.label', default: 'PatientMiRNA')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-patientMiRNA" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-patientMiRNA" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list patientMiRNA">
			
				<g:if test="${patientMiRNAInstance?.mirna}">
				<li class="fieldcontain">
					<span id="mirna-label" class="property-label"><g:message code="patientMiRNA.mirna.label" default="Mirna" /></span>
					
						<span class="property-value" aria-labelledby="mirna-label"><g:link controller="miRNA" action="show" id="${patientMiRNAInstance?.mirna?.id}">${patientMiRNAInstance?.mirna?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientMiRNAInstance?.patient}">
				<li class="fieldcontain">
					<span id="patient-label" class="property-label"><g:message code="patientMiRNA.patient.label" default="Patient" /></span>
					
						<span class="property-value" aria-labelledby="patient-label"><g:link controller="patient" action="show" id="${patientMiRNAInstance?.patient?.id}">${patientMiRNAInstance?.patient?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientMiRNAInstance?.value}">
				<li class="fieldcontain">
					<span id="value-label" class="property-label"><g:message code="patientMiRNA.value.label" default="Value" /></span>
					
						<span class="property-value" aria-labelledby="value-label"><g:fieldValue bean="${patientMiRNAInstance}" field="value"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:patientMiRNAInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${patientMiRNAInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
