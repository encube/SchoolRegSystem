
<%@ page import="com.onb.SchoolRegSystem.Teacher" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'teacher.label', default: 'Teacher')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-teacher" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-teacher" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'teacher.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'teacher.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="idNumber" title="${message(code: 'teacher.idNumber.label', default: 'Id Number')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'teacher.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'teacher.accountExpired.label', default: 'Account Expired')}" />
					
						<g:sortableColumn property="accountLocked" title="${message(code: 'teacher.accountLocked.label', default: 'Account Locked')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${teacherInstanceList}" status="i" var="teacherInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${teacherInstance.id}">${fieldValue(bean: teacherInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: teacherInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: teacherInstance, field: "idNumber")}</td>
					
						<td>${fieldValue(bean: teacherInstance, field: "name")}</td>
					
						<td><g:formatBoolean boolean="${teacherInstance.accountExpired}" /></td>
					
						<td><g:formatBoolean boolean="${teacherInstance.accountLocked}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${teacherInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
