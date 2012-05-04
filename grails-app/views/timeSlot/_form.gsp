<%@ page import="com.onb.SchoolRegSystem.TimeSlot" %>



<div class="fieldcontain ${hasErrors(bean: timeSlotInstance, field: 'days', 'error')} required">
	<label for="days">
		<g:message code="timeSlot.days.label" default="Days" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="days" from="${timeSlotInstance.constraints.days.inList}" required="" value="${timeSlotInstance?.days}" valueMessagePrefix="timeSlot.days"/>
</div>

<div class="fieldcontain ${hasErrors(bean: timeSlotInstance, field: 'start', 'error')} required">
	<label for="start">
		<g:message code="timeSlot.start.label" default="Start" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="start" from="${0..23}" class="range" required="" value="${fieldValue(bean: timeSlotInstance, field: 'start')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: timeSlotInstance, field: 'end', 'error')} required">
	<label for="end">
		<g:message code="timeSlot.end.label" default="End" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="end" from="${0..23}" class="range" required="" value="${fieldValue(bean: timeSlotInstance, field: 'end')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: timeSlotInstance, field: 'sections', 'error')} ">
	<label for="sections">
		<g:message code="timeSlot.sections.label" default="Sections" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${timeSlotInstance?.sections?}" var="s">
    <li><g:link controller="section" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="section" action="create" params="['timeSlot.id': timeSlotInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'section.label', default: 'Section')])}</g:link>
</li>
</ul>

</div>

