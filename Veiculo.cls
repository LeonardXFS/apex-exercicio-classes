public class Veiculo {
    public String idVeiculo;
	public String marca;
    public String modelo;
    public Integer anoFabricacao;
    public Decimal valorCompra;
    public Decimal valorVenda;
    public Boolean usado = false;
    public String donoAtual = '';
    public String donoAntigo = '';
    
    
    public void perdaDesvalorizar(Integer anoFa){
        valorVenda = valorCompra - (((Date.today().year()) - anoFa) * 200);
    }
}