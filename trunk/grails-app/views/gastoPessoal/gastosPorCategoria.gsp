
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
			<h1></h1>
		<% 
			def gastos = controlegastos.GastoPessoal.findAll()

			def sumario = gastos.groupBy { custo -> custo.categoria }.collect { categoria, custosPorCategoria ->
				[ categoria, custosPorCategoria.sum { it.valor }]
			}

			def titulos = sumario.collect({chave, valor -> chave})
			def dados = sumario.collect({chave, valor -> valor})
		%>

		<g:pieChart title='Gastos por categoria' labels="${titulos}" fill="${'bg,s,efefef'}" dataType='simple' data='${dados}' />	</body>
</html>
