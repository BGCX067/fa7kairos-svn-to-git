package controlegastos

class GastoPessoalController {

	def scaffold = GastoPessoal

	def gastosPorCategoria = { render (view: '/gastoPessoal/gastosPorCategoria') }
	
	def crescimentoGastos = { render (view: '/gastoPessoal/crescimentoGastos') }
	
	def renda = {}
		
	def relatorio = {}
}
