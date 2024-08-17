class Deporte{
    public int IdDeporte { get; set; }
    public string Nombre {get; set;}
    public string Foto {get; set;}

    public Deporte(){
    }
    public Deporte(string nombre,string foto){
        Nombre=nombre;
        Foto=foto;
    }
}