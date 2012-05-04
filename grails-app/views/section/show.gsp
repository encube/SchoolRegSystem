
<%@ page import="com.onb.SchoolRegSystem.Section" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'section.label', default: 'Section')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-section" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-section" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list section">
			
				<g:if test="${sectionInstance?.subject}">
				<li class="fieldcontain">
					<span id="subject-label" class="property-label"><g:message code="section.subject.label" default="Subject" /></span>
					
						<span class="property-value" aria-labelledby="subject-label"><g:link controller="subject" action="show" id="${sectionInstance?.subject?.id}">${sectionInstance?.subject?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sectionInstance?.timeSlot}">
				<li class="fieldcontain">
					<span id="timeSlot-label" class="property-label"><g:message code="section.timeSlot.label" default="Time Slot" /></span>
					
						<span class="property-value" aria-labelledby="timeSlot-label"><g:link controller="timeSlot" action="show" id="${sectionInstance?.timeSlot?.id}">${sectionInstance?.timeSlot?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sectionInstance?.teacher}">
				<li class="fieldcontain">
					<span id="teacher-label" class="property-label"><g:message code="section.teacher.label" default="Teacher" /></span>
					
						<span class="property-value" aria-labelledby="teacher-label"><g:link controller="teacher" action="show" id="${sectionInstance?.teacher?.id}">${sectionInstance?.teacher?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sectionInstance?.room}">
				<li class="fieldcontain">
					<span id="room-label" class="property-label"><g:message code="section.room.label" default="Room" /></span>
					
						<span class="property-value" aria-labelledby="room-label"><g:link controller="room" action="show" id="${sectionInstance?.room?.id}">${sectionInstance?.room?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sectionInstance?.enrollments}">
				<li class="fieldcontain">
					<span id="enrollments-label" class="property-label"><g:message code="section.enrollments.label" default="Enrollments" /></span>
					
						<g:each in="${sectionInstance.enrollments}" var="e">
						<span class="property-value" aria-labelledby="enrollments-label"><g:link controller="enrollment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${sectionInstance?.id}" />
					<g:link class="edit" action="edit" id="${sectionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
