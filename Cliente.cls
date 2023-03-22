public class Cliente {
    public String nome;
    public String rg;
    public String cpf;
    public String telefone;
    public String email;
    public String endereco;
    
    {
        rg = 'Rg não informado';
        email ='Nãoinformado@cliente.com';
        endereco = 'Endereco Não informado';
    }
    
    public Cliente(){}
    public Cliente(String nome,String cpf,String telefone){
        this.nome =  nome;
        this.cpf =  cpf;
        this.telefone = telefone;
    }
    public Cliente(String nome,String rg,String cpf,String telefone,String email,String endereco){
        this.nome =  nome;
        this.rg = rg;
        this.cpf =  cpf;
        this.telefone = telefone;
        this.email = email;
        this.endereco = endereco;
    }
    
    
}