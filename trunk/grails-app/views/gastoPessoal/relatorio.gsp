
<html>
<head>
<title>Relatorio de Comprometimento de Renda Futura</title>
<style>.fdcabmenu {  font-family: Verdana; font-size: 12px; background-color: #0066CC; font-weight: bold; color: #FFFFFF}</style>
<style>.fdbodymenu {  font-family: Verdana; font-size: 12px; background-color: #99CCFF}</style>
</head>
<body>
			<table>
				<thead>
					<tr class="skip">
						<td colspan="3"><h3>Comprometimento Gastos Futuros</h3></td>
					</tr>

					<tr class="fdcabmenu">
					
						<th><g:message code="gastoPessoal.categoria.label" default="Valor" /></th>
					
						<th><g:message code="gastoPessoal.categoria.label" default="Categoria" /></th>
					
						<th><g:message code="gastoPessoal.categoria.label" default="Data de Pagamento" /></th>
					</tr>
				</thead>
				
				<tbody>
				<%
					def hoje = new Date() - 1
					params["mesReferencia"]
					def results = controlegastos.GastoPessoal.findAll()
					
				%>
				<g:each status="i" in="${results}" var="item">
				    <tr class="${(i % 2) == 0 ? 'fdbodymenu' : 'fdbodymenu'}">
					
						<td><div align="center"><g:link action="show" id="${item.id}">${fieldValue(bean: item, field: "valor")}</g:link></div></td>
					
						<td><div align="center">${fieldValue(bean: item, field: "categoria")}</div></td>
					
						<td><div align="center"><g:formatDate format="dd-MM-yyyy" date="${item.dataPagamento}" /></div></td>
										
					</tr>
  				</g:each>
				</tbody>
			</table>			


</body>
</html>
