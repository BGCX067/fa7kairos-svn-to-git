<%@ page import="controlegastos.GastoPessoal" %>



<div class="fieldcontain ${hasErrors(bean: gastoPessoalInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="gastoPessoal.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="valor" min="0.01" required="" value="${fieldValue(bean: gastoPessoalInstance, field: 'valor')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gastoPessoalInstance, field: 'categoria', 'error')} required">
	<label for="categoria">
		<g:message code="gastoPessoal.categoria.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="categoria" name="categoria.id" from="${controlegastos.Categoria.list()}" optionKey="id" required="" value="${gastoPessoalInstance?.categoria?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gastoPessoalInstance, field: 'dataPagamento', 'error')} required">
	<label for="dataPagamento">
		<g:message code="gastoPessoal.dataPagamento.label" default="Data Pagamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataPagamento" precision="day"  value="${gastoPessoalInstance?.dataPagamento}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: gastoPessoalInstance, field: 'usuario', 'error')} ">
	
	<g:textField style="visibility:hidden;" name="usuario" value="${session.usuario.nome}" />
</div>

