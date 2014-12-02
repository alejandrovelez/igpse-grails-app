
<%@ page import="com.igpse.Patient" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-patient" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-patient" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="patientID" title="${message(code: 'patient.patientID.label', default: 'Patient ID')}" />
					
						<g:sortableColumn property="age" title="${message(code: 'patient.age.label', default: 'Age')}" />
					
						<g:sortableColumn property="patientData1" title="${message(code: 'patient.patientData1.label', default: 'Patient Data1')}" />
					
						<g:sortableColumn property="patientData2" title="${message(code: 'patient.patientData2.label', default: 'Patient Data2')}" />
					
						<g:sortableColumn property="patientData3" title="${message(code: 'patient.patientData3.label', default: 'Patient Data3')}" />
					
						<g:sortableColumn property="stage" title="${message(code: 'patient.stage.label', default: 'Stage')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${patientInstanceList}" status="i" var="patientInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${patientInstance.id}">${fieldValue(bean: patientInstance, field: "patientID")}</g:link></td>
					
						<td>${fieldValue(bean: patientInstance, field: "age")}</td>
					
						<td>${fieldValue(bean: patientInstance, field: "patientData1")}</td>
					
						<td>${fieldValue(bean: patientInstance, field: "patientData2")}</td>
					
						<td>${fieldValue(bean: patientInstance, field: "patientData3")}</td>
					
						<td>${fieldValue(bean: patientInstance, field: "stage")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${patientInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
