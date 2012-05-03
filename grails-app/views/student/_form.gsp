<%@ page import="com.onb.SchoolRegSystem.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'idNumber', 'error')} required">
	<label for="idNumber">
		<g:message code="student.idNumber.label" default="Id Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="idNumber" maxlength="8" required="" value="${studentInstance?.idNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="student.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${studentInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'level', 'error')} required">
	<label for="level">
		<g:message code="student.level.label" default="Level" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="level" from="${1..4}" class="range" required="" value="${fieldValue(bean: studentInstance, field: 'level')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'registrationDate', 'error')} required">
	<label for="registrationDate">
		<g:message code="student.registrationDate.label" default="Registration Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="registrationDate" precision="day"  value="${studentInstance?.registrationDate}"  />
</div>

