public class Funcionario {
    public String nome;
    public Integer rg;
    public String cpf;
    public Integer matricula;
    public String email;
    public String telefone;
    
    {
        nome = 'Nome não informado';
        email ='Nãoinformado@funcionario.com';
        telefone = '(00)000000000';
    }
    
    
    public Funcionario (){}
    public Funcionario (String nome,String cpf,String telefone,Integer matricula){
        this.nome =  nome;
        this.cpf =  cpf;
        this.telefone = telefone;
        this.matricula = matricula;
    }
    public Funcionario(String nome,Integer rg,String cpf,String telefone,String email,Integer matricula){
        this.nome =  nome;
        this.rg = rg;
        this.cpf =  cpf;
        this.telefone = telefone;
        this.email = email;
        this.matricula = matricula;
    }
    
    
    public void comissionando(Veiculo vendido){
        if(vendido.tipo == 'Carro'){
            System.debug('Comissão de 15% adicionado pela venda de Carro');
        }else{
			System.debug('Comissão de 10% adicionado pela venda do veiculo');
        }
        
        if(vendido.novo){
            System.debug('Bonus de R$300 pelo veiculo novo');
        }else{
            System.debug('Bonus de R$200 pelo veiculo');
        }
    }
    
    
    
    // Método que utiliza objetos como argumentos = MENSAGEM
    public void venderVeiculo(Veiculo veiculo, Cliente cliente){
        System.debug('Veículo de placa ' + veiculo.placa + ' foi vendido pelo funcionario(a): ' + nome);
        System.debug('Proprietário anterior: ' + veiculo.proprietarioAnterior);
        System.debug('Novo proprietário: ' + cliente.nome);
        System.debug('Endereço: ' + cliente.endereco);
        System.debug('Telefone: ' + cliente.telefone);
        veiculo.desvalorizacao();
        System.debug('Valor da venda: ' + veiculo.valorVenda);
        
        comissionando(veiculo);
    }
}