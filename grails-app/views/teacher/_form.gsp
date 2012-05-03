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

