<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'comunidad.label', default: 'Comunidad')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-comunidad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-comunidad" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.comunidad}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.comunidad}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="save">
                <fieldset class="form">
<f:field bean="comunidad" property="nombre_Comunidad">
    <g:textField name="${property}" value="${value}"/>
</f:field>
<f:field bean="comunidad" property="tiene_junta_comunitaria">
    <g:textField name="${property}" value="${value}"/>
</f:field>
<f:field bean="comunidad" property="junta_comunitaria">
    <g:textField name="${property}" value="${value}"/>
</f:field>
<f:field bean="comunidad" property="facebook">
    <g:textField name="${property}" value="${value}"/>
</f:field>
<h2>Contacto</h2>
<f:field bean="comunidad" property="nombre">
    <g:textField name="${property}" value="${value}"/>
</f:field>
<f:field bean="comunidad" property="apellido">
    <g:textField name="${property}" value="${value}"/>
</f:field>
<f:field bean="comunidad" property="teléfono">
    <g:textField name="${property}" value="${value}"/>
</f:field>
<f:field bean="comunidad" property="email">
    <g:textField name="${property}" value="${value}"/>
</f:field>
<h2>Activos</h2>
<f:field bean="comunidad" property="alianzas_que_tiene_la_junta">
    <g:textField name="${property}" value="${value}"/>
</f:field>
<f:field bean="comunidad" property="otras_organizaciones">
    <g:textField name="${property}" value="${value}"/>
</f:field>
<f:field bean="comunidad" property="servicioes_gubernamentales">
    <g:textField name="${property}" value="${value}"/>
</f:field>
<f:field bean="comunidad" property="recursos_Naturales_cerca">
    <g:textField name="${property}" value="${value}"/>
</f:field>
<f:field bean="comunidad" property="eventos_culturales">
    <g:textField name="${property}" value="${value}"/>
</f:field>
<f:field bean="comunidad" property="proyectos_comunitarios">
    <g:textField name="${property}" value="${value}"/>
</f:field>
<f:field bean="comunidad" property="empresas_comunitarias">
    <g:textField name="${property}" value="${value}"/>
</f:field>
<f:field bean="comunidad" property="necesidades">
    <g:textField name="${property}" value="${value}"/>
</f:field>
<f:field bean="comunidad" property="informacion_Adicional">
    <g:textField name="${property}" value="${value}"/>
</f:field>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
