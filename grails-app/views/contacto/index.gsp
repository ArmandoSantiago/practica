
<%@ page import="practica.Contacto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contacto.label', default: 'Contacto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-contacto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-contacto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="tipoContacto" title="${message(code: 'contacto.tipoContacto.label', default: 'Tipo Contacto')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'contacto.descripcion.label', default: 'Descripcion')}" />
					
						<th><g:message code="contacto.persona.label" default="Persona" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${contactoInstanceList}" status="i" var="contactoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${contactoInstance.id}">${fieldValue(bean: contactoInstance, field: "tipoContacto")}</g:link></td>
					
						<td>${fieldValue(bean: contactoInstance, field: "descripcion")}</td>
					
						<td>${fieldValue(bean: contactoInstance, field: "persona")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${contactoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
