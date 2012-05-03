<%@ page import="com.onb.SchoolRegSystem.Teacher" %>



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

