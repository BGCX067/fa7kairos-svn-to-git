<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Controle de Gastos Pessoais</title>
		<style type="text/css" media="screen">
			#status h1 {
				font-size: 1.1em;
				margin: 0 0 0.3em;
				font-weight:bold;
			}
			#controller-list li {
						text-transform: uppercase;
						
			}

		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">
			<h1>Menu</h1>
			<ul>
				<li class="controller"><g:link controller="usuario">Usu&aacute;rio</g:link></li>
				<li class="controller"><g:link controller="categoria">Categoria</g:link></li>
				<li class="controller"><g:link controller="gastoPessoal">Gasto Pessoal</g:link></li>
				<li class="controller"><g:link action="gastosPorCategoria" controller="gastoPessoal">Gr&aacute;fico por Categoria</g:link></li>
				<li class="controller"><g:link action="crescimentoGastos" controller="gastoPessoal">Gr&aacute;fico Crescimento Gastos</g:link></li>
			</ul>
		</div>
		<div id="page-body" role="main">
			
			<table>
				<thead>
					<tr class="skip">
					
						<td colspan="3"><h3>Meus Gastos nos Pr&oacute;ximos 7 Dias</h3>
						</td>
					
					</tr>

					<tr>
					
						<g:sortableColumn property="valor" title="${message(code: 'gastoPessoal.valor.label', default: 'Valor')}" />
					
						<th><g:message code="gastoPessoal.categoria.label" default="Categoria" /></th>
					
						<g:sortableColumn property="dataPagamento" title="${message(code: 'gastoPessoal.dataPagamento.label', default: 'Data Pagamento')}" />
					
					
					</tr>
				</thead>
				
				<tbody>
				<%
					
					def hoje = new Date()
					//def listaGastos = controlegastos.GastoPessoal.findByDataPagamentoBetween(hoje-1, hoje + 10,[max: 3, offset: 2, sort: "dataPagamento", order: "desc"])
					def listaGastos = controlegastos.GastoPessoal.findAll()
															
				%>
				<g:each in="${listaGastos}" status="i" var="lstGastos">
				   <g:if test="${lstGastos.dataPagamento > new Date() && lstGastos.dataPagamento <= new Date() + 7}">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${lstGastos.id}">${fieldValue(bean: lstGastos, field: "valor")}</g:link></td>
					
						<td>${fieldValue(bean: lstGastos, field: "categoria")}</td>
					
						<td><g:formatDate format="dd-MM-yyyy" date="${lstGastos.dataPagamento}" /></td>
					
					</tr>
				   </g:if>	
				</g:each>
				
				</tbody>
			</table>			
			
						
			<p></p>

		</div>
	</body>
</html>
