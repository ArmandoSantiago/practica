<%@ page import="practica.Contacto" %>



<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'tipoContacto', 'error')} required">
	<label for="tipoContacto">
		<g:message code="contacto.tipoContacto.label" default="Tipo Contacto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoContacto" from="${contactoInstance.constraints.tipoContacto.inList}" required="" value="${contactoInstance?.tipoContacto}" valueMessagePrefix="contacto.tipoContacto"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="contacto.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${contactoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'persona', 'error')} required">
	<label for="persona">
		<g:message code="contacto.persona.label" default="Persona" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="persona" name="persona.id" from="${practica.Persona.list()}" optionKey="id" required="" value="${contactoInstance?.persona?.id}" class="many-to-one"/>

</div>

