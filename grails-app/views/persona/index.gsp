
<%@ page import="practica.Persona" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-persona" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-persona" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="apellidos" title="${message(code: 'persona.apellidos.label', default: 'Apellidos')}" />
					
						<g:sortableColumn property="edad" title="${message(code: 'persona.edad.label', default: 'Edad')}" />
					
						<g:sortableColumn property="genero" title="${message(code: 'persona.genero.label', default: 'Genero')}" />
					
						<g:sortableColumn property="nombres" title="${message(code: 'persona.nombres.label', default: 'Nombres')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personaInstanceList}" status="i" var="personaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personaInstance.id}">${fieldValue(bean: personaInstance, field: "apellidos")}</g:link></td>
					
						<td>${fieldValue(bean: personaInstance, field: "edad")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "genero")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "nombres")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
