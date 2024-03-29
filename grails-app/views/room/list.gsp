
<%@ page import="com.onb.SchoolRegSystem.Room" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'room.label', default: 'Room')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-room" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-room" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="idNumber" title="${message(code: 'room.idNumber.label', default: 'Id Number')}" />
					
						<g:sortableColumn property="building" title="${message(code: 'room.building.label', default: 'Building')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${roomInstanceList}" status="i" var="roomInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${roomInstance.id}">${fieldValue(bean: roomInstance, field: "idNumber")}</g:link></td>
					
						<td>${fieldValue(bean: roomInstance, field: "building")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${roomInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
