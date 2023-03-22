public class Veiculo {
    public String placa;
    public String marca;
    public String tipo;
    public String modelo;
    public Integer anoFabricacao;
    public String proprietarioAtual;
    public String proprietarioAnterior;
    public Boolean novo;
    public Decimal valorCompra;
    public Decimal valorVenda;
    
    // Bloco de inicialização
    {
      valorVenda = 0;
      placa = 'Placa não informada';
      marca = 'Marca não informada';
      tipo = 'Tipo não informado';
      modelo = 'Modelo não informado';
    }
    // Criando construtores
    // modificador Classe(argumentos){
    //     Corpo do construtor
  // }
    public Veiculo(){}
    public Veiculo(String placa,String marca,String tipo,String modelo,Integer anoFabricacao,String proprietarioAtual,String proprietarioAnterior,Decimal valorCompra){
        this.placa = placa;
        this.anoFabricacao = anoFabricacao;
        this.valorCompra = valorCompra;
        if(Date.today().year() == anoFabricacao){
            this.novo = true;
            this.proprietarioAtual = 'A loja';
            this.proprietarioAnterior = 'A loja';
            this.valorVenda = this.valorCompra + 1000;
        }else{
            this.novo = false;
            this.desvalorizacao();
            this.proprietarioAnterior = proprietarioAnterior;
        }
        this.marca = marca;
        this.tipo = tipo;
        this.modelo = modelo;
        
    }
    public Veiculo(String placa, Integer anoFabricacao, Decimal valorCompra){
        // Referência this
        // Utiliza o objeto ativo na aplicação.
        this.placa = placa;
        this.anoFabricacao = anoFabricacao;
        this.valorCompra = valorCompra;
        if(Date.today().year() == anoFabricacao){
            this.novo = true;
          this.proprietarioAtual = 'A loja';
            this.proprietarioAnterior = 'A loja';
            this.valorVenda = this.valorCompra + 1000;
        }else{
            this.novo = false;
            this.desvalorizacao();
        }
    }
    
    public void desvalorizacao(){
       valorVenda -= (200 * (Date.today().year() - anoFabricacao)) - valorCompra; 
    }
}