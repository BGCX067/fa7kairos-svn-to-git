package controlegastos

class Usuario {
  static constraints = {
    nomeUsuario(unique:true)
    senha(password:true)
    nome()
    perfil(inList:["Administrador", "Usuario"])
  }



  String nomeUsuario
  String senha
  String nome
  String perfil = "Usuario"

  String toString() {
    nome
  }
}
