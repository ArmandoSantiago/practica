<%@ page import="practica.Persona" %>



<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'apellidos', 'error')} ">
	<label for="apellidos">
		<g:message code="persona.apellidos.label" default="Apellidos" />
		
	</label>
	<g:textField name="apellidos" value="${personaInstance?.apellidos}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="persona.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edad" type="number" min="1" max="100" value="${personaInstance.edad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'genero', 'error')} required">
	<label for="genero">
		<g:message code="persona.genero.label" default="Genero" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="genero" from="${personaInstance.constraints.genero.inList}" required="" value="${personaInstance?.genero}" valueMessagePrefix="persona.genero"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'contacto', 'error')} ">
	<label for="contacto">
		<g:message code="persona.contacto.label" default="Contacto" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${personaInstance?.contacto?}" var="c">
    <li><g:link controller="contacto" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="contacto" action="create" params="['persona.id': personaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'contacto.label', default: 'Contacto')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'nombres', 'error')} required">
	<label for="nombres">
		<g:message code="persona.nombres.label" default="Nombres" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombres" required="" value="${personaInstance?.nombres}"/>

</div>

