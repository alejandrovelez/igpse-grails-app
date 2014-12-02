
<%@ page import="com.igpse.MRNA" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MRNA.label', default: 'MRNA')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-MRNA" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-MRNA" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list MRNA">
			
				<g:if test="${MRNAInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="MRNA.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${MRNAInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MRNAInstance?.patients}">
				<li class="fieldcontain">
					<span id="patients-label" class="property-label"><g:message code="MRNA.patients.label" default="Patients" /></span>
					
						<g:each in="${MRNAInstance.patients}" var="p">
						<span class="property-value" aria-labelledby="patients-label"><g:link controller="patient" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${MRNAInstance?.value}">
				<li class="fieldcontain">
					<span id="value-label" class="property-label"><g:message code="MRNA.value.label" default="Value" /></span>
					
						<span class="property-value" aria-labelledby="value-label"><g:fieldValue bean="${MRNAInstance}" field="value"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:MRNAInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${MRNAInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
