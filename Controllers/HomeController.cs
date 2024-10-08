using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP6_JJOO_Benezra_Landivar.Models;

namespace TP6_JJOO_Benezra_Landivar.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        return View();
    }

    public IActionResult Deportes(){
        ViewBag.ListaDeportes=BD.ListarDeportes();
        return View();
    }
    public IActionResult Historia(){
        return View();
    }

    public IActionResult Paises(){
        ViewBag.ListaPaises=BD.ListarPaises();
        return View();
    }

    public IActionResult VerDetalleDeporte(int idDeporte){
        ViewBag.DeporteElegido=BD.VerInfoDeporte(idDeporte);
        ViewBag.ListaDeportistas=BD.ListarDeportistasDeporte(idDeporte);
        return View();
    }

    public IActionResult VerDetallePais(int idPais){
        ViewBag.PaisElegido=BD.VerInfoPais(idPais);
        ViewBag.ListaDeportistas=BD.ListarDeportistasPais(idPais);
        return View();
    }

    public IActionResult VerDetalleDeportista(int idDeportista){
        ViewBag.DeportistaElegido=BD.VerInfoDeportista(idDeportista);
        ViewBag.PaisDeportista=BD.PaisxDeportista(idDeportista);
        ViewBag.DeporteDeportista=BD.DeportexDeportista(idDeportista);
        return View();
    }

    public IActionResult AgregarDeportista(){
        ViewBag.ListaPaises=BD.ListarPaises();
        ViewBag.ListaDeportes=BD.ListarDeportes();
        return View();
    }

    [HttpPost]
    public IActionResult ProcesarForm(Deportista deportista, string accion){
        if (accion == "Agregar")
        {
            return RedirectToAction("GuardarDeportista", deportista);
        }
        else{
            return RedirectToAction("EliminarDeportista", deportista);
        }
    }
    public IActionResult GuardarDeportista(Deportista dep){
        BD.AgregarDeportista(dep);
        return View("Index");
    }

    public IActionResult EliminarDeportista(Deportista deportista){
        BD.EliminarDeportista(deportista);
        return View("Index");
    }

    public IActionResult Creditos(){
        return View();
    }
}
