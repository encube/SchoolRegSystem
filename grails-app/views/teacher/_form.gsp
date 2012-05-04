<%@ page import="com.onb.SchoolRegSystem.Teacher" %>



<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="teacher.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${teacherInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="teacher.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${teacherInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'idNumber', 'error')} required">
	<label for="idNumber">
		<g:message code="teacher.idNumber.label" default="Id Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="idNumber" maxlength="8" required="" value="${teacherInstance?.idNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="teacher.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${teacherInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="teacher.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${teacherInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="teacher.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${teacherInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="teacher.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${teacherInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="teacher.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${teacherInstance?.passwordExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: teacherInstance, field: 'sections', 'error')} ">
	<label for="sections">
		<g:message code="teacher.sections.label" default="Sections" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${teacherInstance?.sections?}" var="s">
    <li><g:link controller="section" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="section" action="create" params="['teacher.id': teacherInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'section.label', default: 'Section')])}</g:link>
</li>
</ul>

</div>

