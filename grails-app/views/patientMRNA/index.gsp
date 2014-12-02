
<%@ page import="com.igpse.PatientMRNA" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'patientMRNA.label', default: 'PatientMRNA')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-patientMRNA" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-patientMRNA" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="patientMRNA.mrna.label" default="Mrna" /></th>
					
						<th><g:message code="patientMRNA.patient.label" default="Patient" /></th>
					
						<g:sortableColumn property="value" title="${message(code: 'patientMRNA.value.label', default: 'Value')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${patientMRNAInstanceList}" status="i" var="patientMRNAInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${patientMRNAInstance.id}">${fieldValue(bean: patientMRNAInstance, field: "mrna")}</g:link></td>
					
						<td>${fieldValue(bean: patientMRNAInstance, field: "patient")}</td>
					
						<td>${fieldValue(bean: patientMRNAInstance, field: "value")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${patientMRNAInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
