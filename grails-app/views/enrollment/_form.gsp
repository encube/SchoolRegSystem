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
	<g:select name="semester" from="${enrollmentInstance.constraints.semester.inList}" required="" value="${enrollmentInstance?.semester}" valueMessagePrefix="enrollment.semester"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="enrollment.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${com.onb.SchoolRegSystem.Student.list()}" optionKey="id" required="" value="${enrollmentInstance?.student?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'sections', 'error')} ">
	<label for="sections">
		<g:message code="enrollment.sections.label" default="Sections" />
		
	</label>
	<g:select name="sections" from="${com.onb.SchoolRegSystem.Section.list()}" multiple="multiple" optionKey="id" size="5" value="${enrollmentInstance?.sections*.id}" class="many-to-many"/>
</div>

