
<%@ page import="com.igpse.MiRNA" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'miRNA.label', default: 'MiRNA')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-miRNA" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-miRNA" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'miRNA.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="value" title="${message(code: 'miRNA.value.label', default: 'Value')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${miRNAInstanceList}" status="i" var="miRNAInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${miRNAInstance.id}">${fieldValue(bean: miRNAInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: miRNAInstance, field: "value")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${miRNAInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
