
<%@ page import="com.igpse.PatientMiRNA" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'patientMiRNA.label', default: 'PatientMiRNA')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-patientMiRNA" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-patientMiRNA" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="patientMiRNA.mirna.label" default="Mirna" /></th>
					
						<th><g:message code="patientMiRNA.patient.label" default="Patient" /></th>
					
						<g:sortableColumn property="value" title="${message(code: 'patientMiRNA.value.label', default: 'Value')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${patientMiRNAInstanceList}" status="i" var="patientMiRNAInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${patientMiRNAInstance.id}">${fieldValue(bean: patientMiRNAInstance, field: "mirna")}</g:link></td>
					
						<td>${fieldValue(bean: patientMiRNAInstance, field: "patient")}</td>
					
						<td>${fieldValue(bean: patientMiRNAInstance, field: "value")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${patientMiRNAInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
