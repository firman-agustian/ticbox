
<%@ page import="com.chicow.ticbox.engine.Survey" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'survey.label', default: 'Survey')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-survey" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-survey" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="footer" title="${message(code: 'survey.footer.label', default: 'Footer')}" />
					
						<g:sortableColumn property="header" title="${message(code: 'survey.header.label', default: 'Header')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'survey.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="uuid" title="${message(code: 'survey.uuid.label', default: 'Uuid')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${surveyInstanceList}" status="i" var="surveyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${surveyInstance.id}">${fieldValue(bean: surveyInstance, field: "footer")}</g:link></td>
					
						<td>${fieldValue(bean: surveyInstance, field: "header")}</td>
					
						<td>${fieldValue(bean: surveyInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: surveyInstance, field: "uuid")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${surveyInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
