public class Funcionario {
	public String nome;
    public Integer rg;
    public String cpf;
    public String email;
    public String telefone;
    public String nascimento;
    public Integer idVendedor;
    
    public void vender (String nomeVendedor,Integer idProduto,String modeloProduto, String nomeComprador){
        System.debug('Venda Realizada :');
        System.debug('Veiculo de Número : '+idProduto);
        System.debug('Modelo :' +modeloProduto);
        System.debug('Comprador :'+nomeComprador);
        System.debug('Comprador :'+nomeVendedor);
            
    }
    
}