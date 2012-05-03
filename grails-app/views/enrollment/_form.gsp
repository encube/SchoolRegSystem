<%@ page import="com.onb.SchoolRegSystem.Enrollment" %>



<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'enrollmentDate', 'error')} required">
	<label for="enrollmentDate">
		<g:message code="enrollment.enrollmentDate.label" default="Enrollment Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="enrollmentDate" precision="day"  value="${enrollmentInstance?.enrollmentDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'schoolYear', 'error')} required">
	<label for="schoolYear">
		<g:message code="enrollment.schoolYear.label" default="School Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="schoolYear" required="" value="${fieldValue(bean: enrollmentInstance, field: 'schoolYear')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'semester', 'error')} required">
	<label for="semester">
		<g:message code="enrollment.semester.label" default="Semester" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="semester" required="" value="${enrollmentInstance?.semester}"/>
</div>

