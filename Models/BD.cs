using System.Data.SqlClient;
using Dapper;
static class BD{
    private static string _connectionString="@Server=localhost; DataBase=JJOO; Trusted_Connection=True;";

    public static void AgregarDeportista(Deportista dep){
        string sql="Insert Into Deportistas (IdDeportista, Apellido, Nombre, FechaNacimiento, Foto, IdPais, IdDeporte) values (@pIdDeportista, @pApellido, @pNombre, @pFechaNacimiento, @pFoto, @pIdPais, @pIdDeporte)";
        using(SqlConnection db=new SqlConnection(_connectionString)){
            db.Execute(sql, new{pIdDeportista=dep.IdDeportista, pApellido=dep.Apellido, pNombre=dep.Nombre, pFechaNacimiento=dep.FechaNacimiento, pFoto=dep.Foto, pIdPais=dep.IdPais, pIdDeporte=dep.IdDeporte});
        }
    }
    public static void EliminarDeportista(int idDeportista){
        string sql="Delete from Deportistas where IdDeportista=@pIdDeportista)";
        using(SqlConnection db=new SqlConnection(_connectionString)){
            db.Execute(sql, new{@pIdDeportista=idDeportista});
        }
    }
    public static Deporte VerInfoDeporte(int idDeporte){
        Deporte DeporteElegido=null;
        using(SqlConnection db=new SqlConnection(_connectionString)){
            string sql= "Select IdDeporte from Deportes where IdDeporte=@pIdDeporte";
            DeporteElegido=db.QueryFirstOrDefault<Deporte>(sql, new{pIdDeporte=idDeporte});
        }
        return DeporteElegido;
    }
    public static Pais VerInfoPais(int idPais){
        Pais PaisElegido=null;
        using(SqlConnection db=new SqlConnection(_connectionString)){
            string sql= "Select IdPais from Paises where IdPais=@pIdPais";
            PaisElegido=db.QueryFirstOrDefault<Pais>(sql, new{pIdPais=idPais});
        }
        return PaisElegido;
    }
    public static Deportista VerInfoDeportista(int idDeportista){
        Deportista DeportistaElegido=null;
        using(SqlConnection db=new SqlConnection(_connectionString)){
            string sql= "Select IdDeportista from Deportistas where IdDeportista=@pIdDeportista";
            DeportistaElegido=db.QueryFirstOrDefault<Deportista>(sql, new{pIdDeportista=idDeportista});
        }
        return DeportistaElegido;
    }
    public static List<Pais> ListarPaises(){
        List<Pais> ListaPaises = new List<Pais>();
        using(SqlConnection conn = new SqlConnection(_connectionString)){
            string sql="SELECT * FROM Paises";
            ListaPaises = conn.Query<Pais>(sql).ToList();
        }
        return ListaPaises;
    }
    public static List<Deportista> ListarDeportistasDeporte(int idDeporte){
        List<Deportista> ListaDeportista = new List<Deportista>();
        using(SqlConnection conn = new SqlConnection(_connectionString)){
            string sql="SELECT * FROM Deportistas where IdDeporte=@pIdDeporte";
            ListaDeportista = conn.Query<Deportista>(sql,new{IdDeporte=idDeporte}).ToList();
        }
        return ListaDeportista;
    }
    public static List<Deportista> ListarDeportistasPais(int idPais){
        List<Deportista> ListaDeportista = new List<Deportista>();
        using(SqlConnection conn = new SqlConnection(_connectionString)){
            string sql="SELECT * FROM Deportistas where IdPais=@pIdPais";
            ListaDeportista = conn.Query<Deportista>(sql,new{pIdPais=idPais}).ToList();
        }
        return ListaDeportista;
    }
    
}

