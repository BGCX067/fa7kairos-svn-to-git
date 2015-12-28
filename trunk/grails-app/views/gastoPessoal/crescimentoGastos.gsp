<%@ page import="controlegastos.GastoPessoal"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'gastoPessoal.label', default: 'GastoPessoal')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	<a href="#create-gastoPessoal" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="list" action="list">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="create-gastoPessoal" class="content scaffold-create"
		role="main">
		<h1></h1>
		<%
		
	def gastos = controlegastos.GastoPessoal.findAll()
		
	def mapaDeGastosPorCategoria = gastos.groupBy {custo -> custo.categoria}
		
	
	def titulos = mapaDeGastosPorCategoria.collect({categoria, gasto -> categoria.nome})
		
	def valores = mapaDeGastosPorCategoria.collect {categoria, gasto -> gasto.valor}
	
	def valoresPlanos = valores.flatten()
		
	def max = valoresPlanos.max()
	def min = valoresPlanos.min()
	def avg = max / 2
	
	def valoresNormalizados = mapaDeGastosPorCategoria.collect {categoria, custos -> custos.collect {((it.valor - min) / max) * 100}}
		
%>

		<g:lineChart title="Crescimento de Gastos Pessoais"
			colors="['8C1F0E', '590031', '376619', '6A8C0E', '1C0459', '1A022E', '030F33', '042B4F', '479D9E', '27738C', '74A0FF', '71B57A', '416131', '637D74', '403D3A', '8C3B3B', 'AB6937', 'AB882D', 'A16169', '942B08', '0C006B', '187843', 'BF5C4C']"
			legend="${titulos}"
			data="${valoresNormalizados}" type="ls" dataType="text" axes="x,y"
			axesLabels="${[0:[], 1:[0, avg, max]]}"
			gridLines="20, 50, 1, 0" />
		<!-- data="${[[1, 2, 3, 50, 70], [70, 50, 3, 2, 1]]}" -->