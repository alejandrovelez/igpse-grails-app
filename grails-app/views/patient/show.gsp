
<%@ page import="com.igpse.Patient" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-patient" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-patient" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list patient">
			
				<g:if test="${patientInstance?.patientID}">
				<li class="fieldcontain">
					<span id="patientID-label" class="property-label"><g:message code="patient.patientID.label" default="Patient ID" /></span>
					
						<span class="property-value" aria-labelledby="patientID-label"><g:fieldValue bean="${patientInstance}" field="patientID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.age}">
				<li class="fieldcontain">
					<span id="age-label" class="property-label"><g:message code="patient.age.label" default="Age" /></span>
					
						<span class="property-value" aria-labelledby="age-label"><g:fieldValue bean="${patientInstance}" field="age"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData1}">
				<li class="fieldcontain">
					<span id="patientData1-label" class="property-label"><g:message code="patient.patientData1.label" default="Patient Data1" /></span>
					
						<span class="property-value" aria-labelledby="patientData1-label"><g:fieldValue bean="${patientInstance}" field="patientData1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData2}">
				<li class="fieldcontain">
					<span id="patientData2-label" class="property-label"><g:message code="patient.patientData2.label" default="Patient Data2" /></span>
					
						<span class="property-value" aria-labelledby="patientData2-label"><g:fieldValue bean="${patientInstance}" field="patientData2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData3}">
				<li class="fieldcontain">
					<span id="patientData3-label" class="property-label"><g:message code="patient.patientData3.label" default="Patient Data3" /></span>
					
						<span class="property-value" aria-labelledby="patientData3-label"><g:fieldValue bean="${patientInstance}" field="patientData3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.stage}">
				<li class="fieldcontain">
					<span id="stage-label" class="property-label"><g:message code="patient.stage.label" default="Stage" /></span>
					
						<span class="property-value" aria-labelledby="stage-label"><g:fieldValue bean="${patientInstance}" field="stage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData4}">
				<li class="fieldcontain">
					<span id="patientData4-label" class="property-label"><g:message code="patient.patientData4.label" default="Patient Data4" /></span>
					
						<span class="property-value" aria-labelledby="patientData4-label"><g:fieldValue bean="${patientInstance}" field="patientData4"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData5}">
				<li class="fieldcontain">
					<span id="patientData5-label" class="property-label"><g:message code="patient.patientData5.label" default="Patient Data5" /></span>
					
						<span class="property-value" aria-labelledby="patientData5-label"><g:fieldValue bean="${patientInstance}" field="patientData5"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData6}">
				<li class="fieldcontain">
					<span id="patientData6-label" class="property-label"><g:message code="patient.patientData6.label" default="Patient Data6" /></span>
					
						<span class="property-value" aria-labelledby="patientData6-label"><g:fieldValue bean="${patientInstance}" field="patientData6"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData7}">
				<li class="fieldcontain">
					<span id="patientData7-label" class="property-label"><g:message code="patient.patientData7.label" default="Patient Data7" /></span>
					
						<span class="property-value" aria-labelledby="patientData7-label"><g:fieldValue bean="${patientInstance}" field="patientData7"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData8}">
				<li class="fieldcontain">
					<span id="patientData8-label" class="property-label"><g:message code="patient.patientData8.label" default="Patient Data8" /></span>
					
						<span class="property-value" aria-labelledby="patientData8-label"><g:fieldValue bean="${patientInstance}" field="patientData8"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData9}">
				<li class="fieldcontain">
					<span id="patientData9-label" class="property-label"><g:message code="patient.patientData9.label" default="Patient Data9" /></span>
					
						<span class="property-value" aria-labelledby="patientData9-label"><g:fieldValue bean="${patientInstance}" field="patientData9"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData10}">
				<li class="fieldcontain">
					<span id="patientData10-label" class="property-label"><g:message code="patient.patientData10.label" default="Patient Data10" /></span>
					
						<span class="property-value" aria-labelledby="patientData10-label"><g:fieldValue bean="${patientInstance}" field="patientData10"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData11}">
				<li class="fieldcontain">
					<span id="patientData11-label" class="property-label"><g:message code="patient.patientData11.label" default="Patient Data11" /></span>
					
						<span class="property-value" aria-labelledby="patientData11-label"><g:fieldValue bean="${patientInstance}" field="patientData11"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData12}">
				<li class="fieldcontain">
					<span id="patientData12-label" class="property-label"><g:message code="patient.patientData12.label" default="Patient Data12" /></span>
					
						<span class="property-value" aria-labelledby="patientData12-label"><g:fieldValue bean="${patientInstance}" field="patientData12"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData13}">
				<li class="fieldcontain">
					<span id="patientData13-label" class="property-label"><g:message code="patient.patientData13.label" default="Patient Data13" /></span>
					
						<span class="property-value" aria-labelledby="patientData13-label"><g:fieldValue bean="${patientInstance}" field="patientData13"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData110}">
				<li class="fieldcontain">
					<span id="patientData110-label" class="property-label"><g:message code="patient.patientData110.label" default="Patient Data110" /></span>
					
						<span class="property-value" aria-labelledby="patientData110-label"><g:fieldValue bean="${patientInstance}" field="patientData110"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData14}">
				<li class="fieldcontain">
					<span id="patientData14-label" class="property-label"><g:message code="patient.patientData14.label" default="Patient Data14" /></span>
					
						<span class="property-value" aria-labelledby="patientData14-label"><g:fieldValue bean="${patientInstance}" field="patientData14"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData15}">
				<li class="fieldcontain">
					<span id="patientData15-label" class="property-label"><g:message code="patient.patientData15.label" default="Patient Data15" /></span>
					
						<span class="property-value" aria-labelledby="patientData15-label"><g:fieldValue bean="${patientInstance}" field="patientData15"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData16}">
				<li class="fieldcontain">
					<span id="patientData16-label" class="property-label"><g:message code="patient.patientData16.label" default="Patient Data16" /></span>
					
						<span class="property-value" aria-labelledby="patientData16-label"><g:fieldValue bean="${patientInstance}" field="patientData16"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData17}">
				<li class="fieldcontain">
					<span id="patientData17-label" class="property-label"><g:message code="patient.patientData17.label" default="Patient Data17" /></span>
					
						<span class="property-value" aria-labelledby="patientData17-label"><g:fieldValue bean="${patientInstance}" field="patientData17"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData18}">
				<li class="fieldcontain">
					<span id="patientData18-label" class="property-label"><g:message code="patient.patientData18.label" default="Patient Data18" /></span>
					
						<span class="property-value" aria-labelledby="patientData18-label"><g:fieldValue bean="${patientInstance}" field="patientData18"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData19}">
				<li class="fieldcontain">
					<span id="patientData19-label" class="property-label"><g:message code="patient.patientData19.label" default="Patient Data19" /></span>
					
						<span class="property-value" aria-labelledby="patientData19-label"><g:fieldValue bean="${patientInstance}" field="patientData19"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData20}">
				<li class="fieldcontain">
					<span id="patientData20-label" class="property-label"><g:message code="patient.patientData20.label" default="Patient Data20" /></span>
					
						<span class="property-value" aria-labelledby="patientData20-label"><g:fieldValue bean="${patientInstance}" field="patientData20"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData21}">
				<li class="fieldcontain">
					<span id="patientData21-label" class="property-label"><g:message code="patient.patientData21.label" default="Patient Data21" /></span>
					
						<span class="property-value" aria-labelledby="patientData21-label"><g:fieldValue bean="${patientInstance}" field="patientData21"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData22}">
				<li class="fieldcontain">
					<span id="patientData22-label" class="property-label"><g:message code="patient.patientData22.label" default="Patient Data22" /></span>
					
						<span class="property-value" aria-labelledby="patientData22-label"><g:fieldValue bean="${patientInstance}" field="patientData22"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData23}">
				<li class="fieldcontain">
					<span id="patientData23-label" class="property-label"><g:message code="patient.patientData23.label" default="Patient Data23" /></span>
					
						<span class="property-value" aria-labelledby="patientData23-label"><g:fieldValue bean="${patientInstance}" field="patientData23"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData24}">
				<li class="fieldcontain">
					<span id="patientData24-label" class="property-label"><g:message code="patient.patientData24.label" default="Patient Data24" /></span>
					
						<span class="property-value" aria-labelledby="patientData24-label"><g:fieldValue bean="${patientInstance}" field="patientData24"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData25}">
				<li class="fieldcontain">
					<span id="patientData25-label" class="property-label"><g:message code="patient.patientData25.label" default="Patient Data25" /></span>
					
						<span class="property-value" aria-labelledby="patientData25-label"><g:fieldValue bean="${patientInstance}" field="patientData25"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData26}">
				<li class="fieldcontain">
					<span id="patientData26-label" class="property-label"><g:message code="patient.patientData26.label" default="Patient Data26" /></span>
					
						<span class="property-value" aria-labelledby="patientData26-label"><g:fieldValue bean="${patientInstance}" field="patientData26"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData27}">
				<li class="fieldcontain">
					<span id="patientData27-label" class="property-label"><g:message code="patient.patientData27.label" default="Patient Data27" /></span>
					
						<span class="property-value" aria-labelledby="patientData27-label"><g:fieldValue bean="${patientInstance}" field="patientData27"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData28}">
				<li class="fieldcontain">
					<span id="patientData28-label" class="property-label"><g:message code="patient.patientData28.label" default="Patient Data28" /></span>
					
						<span class="property-value" aria-labelledby="patientData28-label"><g:fieldValue bean="${patientInstance}" field="patientData28"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData29}">
				<li class="fieldcontain">
					<span id="patientData29-label" class="property-label"><g:message code="patient.patientData29.label" default="Patient Data29" /></span>
					
						<span class="property-value" aria-labelledby="patientData29-label"><g:fieldValue bean="${patientInstance}" field="patientData29"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData30}">
				<li class="fieldcontain">
					<span id="patientData30-label" class="property-label"><g:message code="patient.patientData30.label" default="Patient Data30" /></span>
					
						<span class="property-value" aria-labelledby="patientData30-label"><g:fieldValue bean="${patientInstance}" field="patientData30"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData31}">
				<li class="fieldcontain">
					<span id="patientData31-label" class="property-label"><g:message code="patient.patientData31.label" default="Patient Data31" /></span>
					
						<span class="property-value" aria-labelledby="patientData31-label"><g:fieldValue bean="${patientInstance}" field="patientData31"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData32}">
				<li class="fieldcontain">
					<span id="patientData32-label" class="property-label"><g:message code="patient.patientData32.label" default="Patient Data32" /></span>
					
						<span class="property-value" aria-labelledby="patientData32-label"><g:fieldValue bean="${patientInstance}" field="patientData32"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData33}">
				<li class="fieldcontain">
					<span id="patientData33-label" class="property-label"><g:message code="patient.patientData33.label" default="Patient Data33" /></span>
					
						<span class="property-value" aria-labelledby="patientData33-label"><g:fieldValue bean="${patientInstance}" field="patientData33"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="patient.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${patientInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData34}">
				<li class="fieldcontain">
					<span id="patientData34-label" class="property-label"><g:message code="patient.patientData34.label" default="Patient Data34" /></span>
					
						<span class="property-value" aria-labelledby="patientData34-label"><g:fieldValue bean="${patientInstance}" field="patientData34"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData35}">
				<li class="fieldcontain">
					<span id="patientData35-label" class="property-label"><g:message code="patient.patientData35.label" default="Patient Data35" /></span>
					
						<span class="property-value" aria-labelledby="patientData35-label"><g:fieldValue bean="${patientInstance}" field="patientData35"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData36}">
				<li class="fieldcontain">
					<span id="patientData36-label" class="property-label"><g:message code="patient.patientData36.label" default="Patient Data36" /></span>
					
						<span class="property-value" aria-labelledby="patientData36-label"><g:fieldValue bean="${patientInstance}" field="patientData36"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData37}">
				<li class="fieldcontain">
					<span id="patientData37-label" class="property-label"><g:message code="patient.patientData37.label" default="Patient Data37" /></span>
					
						<span class="property-value" aria-labelledby="patientData37-label"><g:fieldValue bean="${patientInstance}" field="patientData37"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData38}">
				<li class="fieldcontain">
					<span id="patientData38-label" class="property-label"><g:message code="patient.patientData38.label" default="Patient Data38" /></span>
					
						<span class="property-value" aria-labelledby="patientData38-label"><g:fieldValue bean="${patientInstance}" field="patientData38"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData39}">
				<li class="fieldcontain">
					<span id="patientData39-label" class="property-label"><g:message code="patient.patientData39.label" default="Patient Data39" /></span>
					
						<span class="property-value" aria-labelledby="patientData39-label"><g:fieldValue bean="${patientInstance}" field="patientData39"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData40}">
				<li class="fieldcontain">
					<span id="patientData40-label" class="property-label"><g:message code="patient.patientData40.label" default="Patient Data40" /></span>
					
						<span class="property-value" aria-labelledby="patientData40-label"><g:fieldValue bean="${patientInstance}" field="patientData40"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData41}">
				<li class="fieldcontain">
					<span id="patientData41-label" class="property-label"><g:message code="patient.patientData41.label" default="Patient Data41" /></span>
					
						<span class="property-value" aria-labelledby="patientData41-label"><g:fieldValue bean="${patientInstance}" field="patientData41"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData42}">
				<li class="fieldcontain">
					<span id="patientData42-label" class="property-label"><g:message code="patient.patientData42.label" default="Patient Data42" /></span>
					
						<span class="property-value" aria-labelledby="patientData42-label"><g:fieldValue bean="${patientInstance}" field="patientData42"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData43}">
				<li class="fieldcontain">
					<span id="patientData43-label" class="property-label"><g:message code="patient.patientData43.label" default="Patient Data43" /></span>
					
						<span class="property-value" aria-labelledby="patientData43-label"><g:fieldValue bean="${patientInstance}" field="patientData43"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData44}">
				<li class="fieldcontain">
					<span id="patientData44-label" class="property-label"><g:message code="patient.patientData44.label" default="Patient Data44" /></span>
					
						<span class="property-value" aria-labelledby="patientData44-label"><g:fieldValue bean="${patientInstance}" field="patientData44"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData45}">
				<li class="fieldcontain">
					<span id="patientData45-label" class="property-label"><g:message code="patient.patientData45.label" default="Patient Data45" /></span>
					
						<span class="property-value" aria-labelledby="patientData45-label"><g:fieldValue bean="${patientInstance}" field="patientData45"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData46}">
				<li class="fieldcontain">
					<span id="patientData46-label" class="property-label"><g:message code="patient.patientData46.label" default="Patient Data46" /></span>
					
						<span class="property-value" aria-labelledby="patientData46-label"><g:fieldValue bean="${patientInstance}" field="patientData46"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData47}">
				<li class="fieldcontain">
					<span id="patientData47-label" class="property-label"><g:message code="patient.patientData47.label" default="Patient Data47" /></span>
					
						<span class="property-value" aria-labelledby="patientData47-label"><g:fieldValue bean="${patientInstance}" field="patientData47"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData48}">
				<li class="fieldcontain">
					<span id="patientData48-label" class="property-label"><g:message code="patient.patientData48.label" default="Patient Data48" /></span>
					
						<span class="property-value" aria-labelledby="patientData48-label"><g:fieldValue bean="${patientInstance}" field="patientData48"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData49}">
				<li class="fieldcontain">
					<span id="patientData49-label" class="property-label"><g:message code="patient.patientData49.label" default="Patient Data49" /></span>
					
						<span class="property-value" aria-labelledby="patientData49-label"><g:fieldValue bean="${patientInstance}" field="patientData49"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData50}">
				<li class="fieldcontain">
					<span id="patientData50-label" class="property-label"><g:message code="patient.patientData50.label" default="Patient Data50" /></span>
					
						<span class="property-value" aria-labelledby="patientData50-label"><g:fieldValue bean="${patientInstance}" field="patientData50"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData51}">
				<li class="fieldcontain">
					<span id="patientData51-label" class="property-label"><g:message code="patient.patientData51.label" default="Patient Data51" /></span>
					
						<span class="property-value" aria-labelledby="patientData51-label"><g:fieldValue bean="${patientInstance}" field="patientData51"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData52}">
				<li class="fieldcontain">
					<span id="patientData52-label" class="property-label"><g:message code="patient.patientData52.label" default="Patient Data52" /></span>
					
						<span class="property-value" aria-labelledby="patientData52-label"><g:fieldValue bean="${patientInstance}" field="patientData52"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData53}">
				<li class="fieldcontain">
					<span id="patientData53-label" class="property-label"><g:message code="patient.patientData53.label" default="Patient Data53" /></span>
					
						<span class="property-value" aria-labelledby="patientData53-label"><g:fieldValue bean="${patientInstance}" field="patientData53"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData54}">
				<li class="fieldcontain">
					<span id="patientData54-label" class="property-label"><g:message code="patient.patientData54.label" default="Patient Data54" /></span>
					
						<span class="property-value" aria-labelledby="patientData54-label"><g:fieldValue bean="${patientInstance}" field="patientData54"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData55}">
				<li class="fieldcontain">
					<span id="patientData55-label" class="property-label"><g:message code="patient.patientData55.label" default="Patient Data55" /></span>
					
						<span class="property-value" aria-labelledby="patientData55-label"><g:fieldValue bean="${patientInstance}" field="patientData55"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData56}">
				<li class="fieldcontain">
					<span id="patientData56-label" class="property-label"><g:message code="patient.patientData56.label" default="Patient Data56" /></span>
					
						<span class="property-value" aria-labelledby="patientData56-label"><g:fieldValue bean="${patientInstance}" field="patientData56"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData57}">
				<li class="fieldcontain">
					<span id="patientData57-label" class="property-label"><g:message code="patient.patientData57.label" default="Patient Data57" /></span>
					
						<span class="property-value" aria-labelledby="patientData57-label"><g:fieldValue bean="${patientInstance}" field="patientData57"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData58}">
				<li class="fieldcontain">
					<span id="patientData58-label" class="property-label"><g:message code="patient.patientData58.label" default="Patient Data58" /></span>
					
						<span class="property-value" aria-labelledby="patientData58-label"><g:fieldValue bean="${patientInstance}" field="patientData58"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData59}">
				<li class="fieldcontain">
					<span id="patientData59-label" class="property-label"><g:message code="patient.patientData59.label" default="Patient Data59" /></span>
					
						<span class="property-value" aria-labelledby="patientData59-label"><g:fieldValue bean="${patientInstance}" field="patientData59"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData60}">
				<li class="fieldcontain">
					<span id="patientData60-label" class="property-label"><g:message code="patient.patientData60.label" default="Patient Data60" /></span>
					
						<span class="property-value" aria-labelledby="patientData60-label"><g:fieldValue bean="${patientInstance}" field="patientData60"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData61}">
				<li class="fieldcontain">
					<span id="patientData61-label" class="property-label"><g:message code="patient.patientData61.label" default="Patient Data61" /></span>
					
						<span class="property-value" aria-labelledby="patientData61-label"><g:fieldValue bean="${patientInstance}" field="patientData61"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData109}">
				<li class="fieldcontain">
					<span id="patientData109-label" class="property-label"><g:message code="patient.patientData109.label" default="Patient Data109" /></span>
					
						<span class="property-value" aria-labelledby="patientData109-label"><g:fieldValue bean="${patientInstance}" field="patientData109"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData62}">
				<li class="fieldcontain">
					<span id="patientData62-label" class="property-label"><g:message code="patient.patientData62.label" default="Patient Data62" /></span>
					
						<span class="property-value" aria-labelledby="patientData62-label"><g:fieldValue bean="${patientInstance}" field="patientData62"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData63}">
				<li class="fieldcontain">
					<span id="patientData63-label" class="property-label"><g:message code="patient.patientData63.label" default="Patient Data63" /></span>
					
						<span class="property-value" aria-labelledby="patientData63-label"><g:fieldValue bean="${patientInstance}" field="patientData63"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData64}">
				<li class="fieldcontain">
					<span id="patientData64-label" class="property-label"><g:message code="patient.patientData64.label" default="Patient Data64" /></span>
					
						<span class="property-value" aria-labelledby="patientData64-label"><g:fieldValue bean="${patientInstance}" field="patientData64"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData65}">
				<li class="fieldcontain">
					<span id="patientData65-label" class="property-label"><g:message code="patient.patientData65.label" default="Patient Data65" /></span>
					
						<span class="property-value" aria-labelledby="patientData65-label"><g:fieldValue bean="${patientInstance}" field="patientData65"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData66}">
				<li class="fieldcontain">
					<span id="patientData66-label" class="property-label"><g:message code="patient.patientData66.label" default="Patient Data66" /></span>
					
						<span class="property-value" aria-labelledby="patientData66-label"><g:fieldValue bean="${patientInstance}" field="patientData66"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData67}">
				<li class="fieldcontain">
					<span id="patientData67-label" class="property-label"><g:message code="patient.patientData67.label" default="Patient Data67" /></span>
					
						<span class="property-value" aria-labelledby="patientData67-label"><g:fieldValue bean="${patientInstance}" field="patientData67"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData68}">
				<li class="fieldcontain">
					<span id="patientData68-label" class="property-label"><g:message code="patient.patientData68.label" default="Patient Data68" /></span>
					
						<span class="property-value" aria-labelledby="patientData68-label"><g:fieldValue bean="${patientInstance}" field="patientData68"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData69}">
				<li class="fieldcontain">
					<span id="patientData69-label" class="property-label"><g:message code="patient.patientData69.label" default="Patient Data69" /></span>
					
						<span class="property-value" aria-labelledby="patientData69-label"><g:fieldValue bean="${patientInstance}" field="patientData69"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData70}">
				<li class="fieldcontain">
					<span id="patientData70-label" class="property-label"><g:message code="patient.patientData70.label" default="Patient Data70" /></span>
					
						<span class="property-value" aria-labelledby="patientData70-label"><g:fieldValue bean="${patientInstance}" field="patientData70"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData71}">
				<li class="fieldcontain">
					<span id="patientData71-label" class="property-label"><g:message code="patient.patientData71.label" default="Patient Data71" /></span>
					
						<span class="property-value" aria-labelledby="patientData71-label"><g:fieldValue bean="${patientInstance}" field="patientData71"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData72}">
				<li class="fieldcontain">
					<span id="patientData72-label" class="property-label"><g:message code="patient.patientData72.label" default="Patient Data72" /></span>
					
						<span class="property-value" aria-labelledby="patientData72-label"><g:fieldValue bean="${patientInstance}" field="patientData72"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData73}">
				<li class="fieldcontain">
					<span id="patientData73-label" class="property-label"><g:message code="patient.patientData73.label" default="Patient Data73" /></span>
					
						<span class="property-value" aria-labelledby="patientData73-label"><g:fieldValue bean="${patientInstance}" field="patientData73"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData74}">
				<li class="fieldcontain">
					<span id="patientData74-label" class="property-label"><g:message code="patient.patientData74.label" default="Patient Data74" /></span>
					
						<span class="property-value" aria-labelledby="patientData74-label"><g:fieldValue bean="${patientInstance}" field="patientData74"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData75}">
				<li class="fieldcontain">
					<span id="patientData75-label" class="property-label"><g:message code="patient.patientData75.label" default="Patient Data75" /></span>
					
						<span class="property-value" aria-labelledby="patientData75-label"><g:fieldValue bean="${patientInstance}" field="patientData75"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData76}">
				<li class="fieldcontain">
					<span id="patientData76-label" class="property-label"><g:message code="patient.patientData76.label" default="Patient Data76" /></span>
					
						<span class="property-value" aria-labelledby="patientData76-label"><g:fieldValue bean="${patientInstance}" field="patientData76"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData77}">
				<li class="fieldcontain">
					<span id="patientData77-label" class="property-label"><g:message code="patient.patientData77.label" default="Patient Data77" /></span>
					
						<span class="property-value" aria-labelledby="patientData77-label"><g:fieldValue bean="${patientInstance}" field="patientData77"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData78}">
				<li class="fieldcontain">
					<span id="patientData78-label" class="property-label"><g:message code="patient.patientData78.label" default="Patient Data78" /></span>
					
						<span class="property-value" aria-labelledby="patientData78-label"><g:fieldValue bean="${patientInstance}" field="patientData78"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData79}">
				<li class="fieldcontain">
					<span id="patientData79-label" class="property-label"><g:message code="patient.patientData79.label" default="Patient Data79" /></span>
					
						<span class="property-value" aria-labelledby="patientData79-label"><g:fieldValue bean="${patientInstance}" field="patientData79"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData80}">
				<li class="fieldcontain">
					<span id="patientData80-label" class="property-label"><g:message code="patient.patientData80.label" default="Patient Data80" /></span>
					
						<span class="property-value" aria-labelledby="patientData80-label"><g:fieldValue bean="${patientInstance}" field="patientData80"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData81}">
				<li class="fieldcontain">
					<span id="patientData81-label" class="property-label"><g:message code="patient.patientData81.label" default="Patient Data81" /></span>
					
						<span class="property-value" aria-labelledby="patientData81-label"><g:fieldValue bean="${patientInstance}" field="patientData81"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData82}">
				<li class="fieldcontain">
					<span id="patientData82-label" class="property-label"><g:message code="patient.patientData82.label" default="Patient Data82" /></span>
					
						<span class="property-value" aria-labelledby="patientData82-label"><g:fieldValue bean="${patientInstance}" field="patientData82"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData83}">
				<li class="fieldcontain">
					<span id="patientData83-label" class="property-label"><g:message code="patient.patientData83.label" default="Patient Data83" /></span>
					
						<span class="property-value" aria-labelledby="patientData83-label"><g:fieldValue bean="${patientInstance}" field="patientData83"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData84}">
				<li class="fieldcontain">
					<span id="patientData84-label" class="property-label"><g:message code="patient.patientData84.label" default="Patient Data84" /></span>
					
						<span class="property-value" aria-labelledby="patientData84-label"><g:fieldValue bean="${patientInstance}" field="patientData84"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData85}">
				<li class="fieldcontain">
					<span id="patientData85-label" class="property-label"><g:message code="patient.patientData85.label" default="Patient Data85" /></span>
					
						<span class="property-value" aria-labelledby="patientData85-label"><g:fieldValue bean="${patientInstance}" field="patientData85"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData86}">
				<li class="fieldcontain">
					<span id="patientData86-label" class="property-label"><g:message code="patient.patientData86.label" default="Patient Data86" /></span>
					
						<span class="property-value" aria-labelledby="patientData86-label"><g:fieldValue bean="${patientInstance}" field="patientData86"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData87}">
				<li class="fieldcontain">
					<span id="patientData87-label" class="property-label"><g:message code="patient.patientData87.label" default="Patient Data87" /></span>
					
						<span class="property-value" aria-labelledby="patientData87-label"><g:fieldValue bean="${patientInstance}" field="patientData87"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData88}">
				<li class="fieldcontain">
					<span id="patientData88-label" class="property-label"><g:message code="patient.patientData88.label" default="Patient Data88" /></span>
					
						<span class="property-value" aria-labelledby="patientData88-label"><g:fieldValue bean="${patientInstance}" field="patientData88"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData89}">
				<li class="fieldcontain">
					<span id="patientData89-label" class="property-label"><g:message code="patient.patientData89.label" default="Patient Data89" /></span>
					
						<span class="property-value" aria-labelledby="patientData89-label"><g:fieldValue bean="${patientInstance}" field="patientData89"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData90}">
				<li class="fieldcontain">
					<span id="patientData90-label" class="property-label"><g:message code="patient.patientData90.label" default="Patient Data90" /></span>
					
						<span class="property-value" aria-labelledby="patientData90-label"><g:fieldValue bean="${patientInstance}" field="patientData90"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData91}">
				<li class="fieldcontain">
					<span id="patientData91-label" class="property-label"><g:message code="patient.patientData91.label" default="Patient Data91" /></span>
					
						<span class="property-value" aria-labelledby="patientData91-label"><g:fieldValue bean="${patientInstance}" field="patientData91"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData92}">
				<li class="fieldcontain">
					<span id="patientData92-label" class="property-label"><g:message code="patient.patientData92.label" default="Patient Data92" /></span>
					
						<span class="property-value" aria-labelledby="patientData92-label"><g:fieldValue bean="${patientInstance}" field="patientData92"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData93}">
				<li class="fieldcontain">
					<span id="patientData93-label" class="property-label"><g:message code="patient.patientData93.label" default="Patient Data93" /></span>
					
						<span class="property-value" aria-labelledby="patientData93-label"><g:fieldValue bean="${patientInstance}" field="patientData93"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData94}">
				<li class="fieldcontain">
					<span id="patientData94-label" class="property-label"><g:message code="patient.patientData94.label" default="Patient Data94" /></span>
					
						<span class="property-value" aria-labelledby="patientData94-label"><g:fieldValue bean="${patientInstance}" field="patientData94"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData95}">
				<li class="fieldcontain">
					<span id="patientData95-label" class="property-label"><g:message code="patient.patientData95.label" default="Patient Data95" /></span>
					
						<span class="property-value" aria-labelledby="patientData95-label"><g:fieldValue bean="${patientInstance}" field="patientData95"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData96}">
				<li class="fieldcontain">
					<span id="patientData96-label" class="property-label"><g:message code="patient.patientData96.label" default="Patient Data96" /></span>
					
						<span class="property-value" aria-labelledby="patientData96-label"><g:fieldValue bean="${patientInstance}" field="patientData96"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData97}">
				<li class="fieldcontain">
					<span id="patientData97-label" class="property-label"><g:message code="patient.patientData97.label" default="Patient Data97" /></span>
					
						<span class="property-value" aria-labelledby="patientData97-label"><g:fieldValue bean="${patientInstance}" field="patientData97"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData98}">
				<li class="fieldcontain">
					<span id="patientData98-label" class="property-label"><g:message code="patient.patientData98.label" default="Patient Data98" /></span>
					
						<span class="property-value" aria-labelledby="patientData98-label"><g:fieldValue bean="${patientInstance}" field="patientData98"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData99}">
				<li class="fieldcontain">
					<span id="patientData99-label" class="property-label"><g:message code="patient.patientData99.label" default="Patient Data99" /></span>
					
						<span class="property-value" aria-labelledby="patientData99-label"><g:fieldValue bean="${patientInstance}" field="patientData99"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData100}">
				<li class="fieldcontain">
					<span id="patientData100-label" class="property-label"><g:message code="patient.patientData100.label" default="Patient Data100" /></span>
					
						<span class="property-value" aria-labelledby="patientData100-label"><g:fieldValue bean="${patientInstance}" field="patientData100"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData101}">
				<li class="fieldcontain">
					<span id="patientData101-label" class="property-label"><g:message code="patient.patientData101.label" default="Patient Data101" /></span>
					
						<span class="property-value" aria-labelledby="patientData101-label"><g:fieldValue bean="${patientInstance}" field="patientData101"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData102}">
				<li class="fieldcontain">
					<span id="patientData102-label" class="property-label"><g:message code="patient.patientData102.label" default="Patient Data102" /></span>
					
						<span class="property-value" aria-labelledby="patientData102-label"><g:fieldValue bean="${patientInstance}" field="patientData102"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData103}">
				<li class="fieldcontain">
					<span id="patientData103-label" class="property-label"><g:message code="patient.patientData103.label" default="Patient Data103" /></span>
					
						<span class="property-value" aria-labelledby="patientData103-label"><g:fieldValue bean="${patientInstance}" field="patientData103"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData104}">
				<li class="fieldcontain">
					<span id="patientData104-label" class="property-label"><g:message code="patient.patientData104.label" default="Patient Data104" /></span>
					
						<span class="property-value" aria-labelledby="patientData104-label"><g:fieldValue bean="${patientInstance}" field="patientData104"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData105}">
				<li class="fieldcontain">
					<span id="patientData105-label" class="property-label"><g:message code="patient.patientData105.label" default="Patient Data105" /></span>
					
						<span class="property-value" aria-labelledby="patientData105-label"><g:fieldValue bean="${patientInstance}" field="patientData105"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData106}">
				<li class="fieldcontain">
					<span id="patientData106-label" class="property-label"><g:message code="patient.patientData106.label" default="Patient Data106" /></span>
					
						<span class="property-value" aria-labelledby="patientData106-label"><g:fieldValue bean="${patientInstance}" field="patientData106"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData107}">
				<li class="fieldcontain">
					<span id="patientData107-label" class="property-label"><g:message code="patient.patientData107.label" default="Patient Data107" /></span>
					
						<span class="property-value" aria-labelledby="patientData107-label"><g:fieldValue bean="${patientInstance}" field="patientData107"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.patientData108}">
				<li class="fieldcontain">
					<span id="patientData108-label" class="property-label"><g:message code="patient.patientData108.label" default="Patient Data108" /></span>
					
						<span class="property-value" aria-labelledby="patientData108-label"><g:fieldValue bean="${patientInstance}" field="patientData108"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:patientInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${patientInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
