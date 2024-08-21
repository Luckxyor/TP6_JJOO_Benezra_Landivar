using System.Data.SqlClient;
using Dapper;
static class BD{
    private static string _connectionString="Server=localhost; DataBase=JJOO; Trusted_Connection=True;";

    public static void AgregarDeportista(Deportista dep){
        string sqlInsert="Insert Into Deportistas (Apellido, Nombre, FechaNacimiento, Foto, IdPais, IdDeporte) values (@pApellido, @pNombre, @pFechaNacimiento, @pFoto, @pIdPais, @pIdDeporte)";
        using(SqlConnection db=new SqlConnection(_connectionString)){
            db.Execute(sqlInsert, new{pApellido=dep.Apellido, pNombre=dep.Nombre, pFechaNacimiento=dep.FechaNacimiento, pFoto=dep.Foto, pIdPais=dep.IdPais, pIdDeporte=dep.IdDeporte});
        }
    }
    public static void EliminarDeportista(string Nombre, string Apellido){
        string sql="Delete from Deportistas where Apellido=@pApellido and Nombre=@pNombre";
        using(SqlConnection db=new SqlConnection(_connectionString)){
            db.Execute(sql, new{pApellido=Apellido, pNombre=Nombre});
        }
    }
    public static Deporte VerInfoDeporte(int idDeporte){
        Deporte DeporteElegido=null;
        using(SqlConnection db=new SqlConnection(_connectionString)){
            string sql= "Select * from Deportes where IdDeporte=@pIdDeporte";
            DeporteElegido=db.QueryFirstOrDefault<Deporte>(sql, new{pIdDeporte=idDeporte});
        }
        return DeporteElegido;
    }
    public static Pais VerInfoPais(int idPais){
        Pais PaisElegido=null;
        using(SqlConnection db=new SqlConnection(_connectionString)){
            string sql= "Select * from Paises where IdPais=@pIdPais";
            PaisElegido=db.QueryFirstOrDefault<Pais>(sql, new{pIdPais=idPais});
        }
        return PaisElegido;
    }
    public static Deportista VerInfoDeportista(int idDeportista){
        Deportista DeportistaElegido=null;
        using(SqlConnection db=new SqlConnection(_connectionString)){
            string sql= "Select * from Deportistas where IdDeportista=@pIdDeportista";
            DeportistaElegido=db.QueryFirstOrDefault<Deportista>(sql, new{pIdDeportista=idDeportista});
        }
        return DeportistaElegido;
    }
    public static List<Pais> ListarPaises(){
        List<Pais> ListaPaises = new List<Pais>();
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql="SELECT * FROM Paises";
            ListaPaises = db.Query<Pais>(sql).ToList();
        }
        return ListaPaises;
    }
    public static List<Deporte> ListarDeportes(){
        List<Deporte> ListaDeportes = new List<Deporte>();
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql="SELECT * FROM Deportes";
            ListaDeportes = db.Query<Deporte>(sql).ToList();
        }
        return ListaDeportes;
    }
    public static List<Deportista> ListarDeportistasDeporte(int idDeporte){
        List<Deportista> ListaDeportista = new List<Deportista>();
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql="SELECT * FROM Deportistas where IdDeporte=@pIdDeporte";
            ListaDeportista = db.Query<Deportista>(sql,new{pIdDeporte=idDeporte}).ToList();
        }
        return ListaDeportista;
    }
    public static List<Deportista> ListarDeportistasPais(int idPais){
        List<Deportista> ListaDeportista = new List<Deportista>();
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sql="SELECT * FROM Deportistas where IdPais=@pIdPais";
            ListaDeportista = db.Query<Deportista>(sql,new{pIdPais=idPais}).ToList();
        }
        return ListaDeportista;
    }
    
    public static Pais PaisxDeportista(int idDeportista){
        Pais PaisElegido=null;
        using(SqlConnection db=new SqlConnection(_connectionString)){
            string sql= "Select Paises.* from Deportistas inner join Paises on Paises.IdPais = Deportistas.IdPais where IdDeportista=@pIdDeportista";
            PaisElegido=db.QueryFirstOrDefault<Pais>(sql, new{pIdDeportista=idDeportista});
        }
        return PaisElegido;
    }
    public static Deporte DeportexDeportista(int idDeportista){
        Deporte DeporteElegido=null;
        using(SqlConnection db=new SqlConnection(_connectionString)){
            string sql= "Select Deportes.* from Deportistas inner join Deportes on Deportes.IdDeporte = Deportistas.IdDeporte where IdDeportista=@pIdDeportista";
            DeporteElegido=db.QueryFirstOrDefault<Deporte>(sql, new{pIdDeportista=idDeportista});
        }
        return DeporteElegido;
    }
}

