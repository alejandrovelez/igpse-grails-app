
<%@ page import="com.igpse.PatientMRNA" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'patientMRNA.label', default: 'PatientMRNA')}" />
		<title>Show Patient MRNA</title>
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
			<h1>Show Patient MRNA</h1>
			<p>"${rowsFromCSVFile}"
		</div>
	</body>
</html>
