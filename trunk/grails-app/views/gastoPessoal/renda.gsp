<%@ page import="controlegastos.GastoPessoal" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'gastoPessoal.label', default: 'GastoPessoal')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-gastoPessoal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-gastoPessoal" class="content scaffold-create" role="main">
			<h1>Comprometimento de Renda Futura</h1>
			
			<g:form action="relatorio" method="get">
				<fieldset class="form">
					<span id="categoria-label" class="property-label">M&ecirc;s Refer&ecirc;ncia</span>
					<g:textField name="mesReferencia" value="" />
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="visualizar" class="save" value="Visualizar" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
