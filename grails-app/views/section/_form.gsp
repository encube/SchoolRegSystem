<%@ page import="com.onb.SchoolRegSystem.Section" %>



<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'subject', 'error')} required">
	<label for="subject">
		<g:message code="section.subject.label" default="Subject" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="subject" name="subject.id" from="${com.onb.SchoolRegSystem.Subject.list()}" optionKey="id" required="" value="${sectionInstance?.subject?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'timeSlot', 'error')} required">
	<label for="timeSlot">
		<g:message code="section.timeSlot.label" default="Time Slot" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="timeSlot" name="timeSlot.id" from="${com.onb.SchoolRegSystem.TimeSlot.list()}" optionKey="id" required="" value="${sectionInstance?.timeSlot?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'teacher', 'error')} required">
	<label for="teacher">
		<g:message code="section.teacher.label" default="Teacher" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="teacher" name="teacher.id" from="${com.onb.SchoolRegSystem.Teacher.list()}" optionKey="id" required="" value="${sectionInstance?.teacher?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'room', 'error')} required">
	<label for="room">
		<g:message code="section.room.label" default="Room" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="room" name="room.id" from="${com.onb.SchoolRegSystem.Room.list()}" optionKey="id" required="" value="${sectionInstance?.room?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'enrollments', 'error')} ">
	<label for="enrollments">
		<g:message code="section.enrollments.label" default="Enrollments" />
		
	</label>
	
</div>

