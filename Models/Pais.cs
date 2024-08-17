class Pais{
    public int IdPais { get; set; }
    public string Nombre {get; set;}
    public string Bandera {get; set;}
    public DateTime FechaFundacion {get; set;}
    public Pais(){
    }
    public Pais(string nombre,string bandera,DateTime fechaFundacion){
        Nombre = nombre;
        Bandera = bandera;
        FechaFundacion = fechaFundacion;
    }
}