
<%@ page import="controlegastos.GastoPessoal" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'gastoPessoal.label', default: 'GastoPessoal')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-gastoPessoal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
		
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="" action="renda">Compromete Renda</g:link></li>
			</ul>
			
		</div>
		<div id="list-gastoPessoal" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="valor" title="${message(code: 'gastoPessoal.valor.label', default: 'Valor')}" />
					
						<th><g:message code="gastoPessoal.categoria.label" default="Categoria" /></th>
					
						<g:sortableColumn property="dataPagamento" title="${message(code: 'gastoPessoal.dataPagamento.label', default: 'Data Pagamento')}" />
					
						<g:sortableColumn property="usuario" title="${message(code: 'gastoPessoal.usuario.label', default: 'Usuario')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${gastoPessoalInstanceList}" status="i" var="gastoPessoalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${gastoPessoalInstance.id}">${fieldValue(bean: gastoPessoalInstance, field: "valor")}</g:link></td>
					
						<td>${fieldValue(bean: gastoPessoalInstance, field: "categoria")}</td>
					
						<td><g:formatDate format="dd-MM-yyyy" date="${gastoPessoalInstance.dataPagamento}" /></td>
					
						<td>${fieldValue(bean: gastoPessoalInstance, field: "usuario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>

			<div class="pagination">
				<g:paginate total="${gastoPessoalInstanceTotal}" />
			</div>
			
	
		</div>
	</body>
</html>
