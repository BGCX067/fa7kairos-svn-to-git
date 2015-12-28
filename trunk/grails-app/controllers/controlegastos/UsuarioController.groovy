package controlegastos

class UsuarioController{
  
  def scaffold = Usuario

  def login = {}

  def autenticar = {
    def usuario = Usuario.findByNomeUsuarioAndSenha(params.nomeUsuario, params.senha)
    if(usuario){
      session.usuario = usuario
      redirect(controller:"GastoPessoal", action:"list")
    }else{
      flash.message = "Nao foi possivel autenticar o usuario. Informe os dados corretamente!"
      redirect(action:"login")
    }
  }

  def logout = {
    session.usuario = null
    redirect(controller:"Usuario", action:"login")
  }
}