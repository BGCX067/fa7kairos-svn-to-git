package controlegastos

class BaseController {

	def beforeInterceptor = [action:this.&login]


	def login = {
	    if(session.usuario)
	      render (view: '/index')
	    else
	      render (view: '/usuario/login')
	}
}	