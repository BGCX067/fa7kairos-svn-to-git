package controlegastos

class GastoPessoal {

    String usuario
    Categoria categoria
    Double valor
    Date dataPagamento
    
    static constraints = {
    	valor(min: 0.01d)
    }
}
