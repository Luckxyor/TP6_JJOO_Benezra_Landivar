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
        ViewBag.ListaDeportes=BD.ListarDeporte();
        return View();
    }

    public IActionResult Paises(){
        ViewBag.ListaPaises=BD.ListarPaises();
        return View();
    }

    public IActionResult VerDetalleDeporte(int idDeporte){
        ViewBag.DeporteElegido=BD.VerInfoDeporte(idDeporte);
        ViewBag.ListaDeportistas=BD.ListarDeportistasDeporte(idDeporte);
        return View("VerDetalleDeporte");
    }

    public IActionResult VerDetallePais(int idPais){
        ViewBag.PaisElegido=BD.VerInfoPais(idPais);
        ViewBag.ListaDeportistas=BD.ListarDeportistasPais(idPais);
        return View("VerDetallePais");
    }

    public IActionResult VerDetalleDeportista(int idDeportista){
        ViewBag.DeportistaElegido=BD.VerInfoDeportista(idDeportista);
        return View("VerDetalleDeportista");
    }

    public IActionResult AgregarDeportista(){
        return View("AgregarDeportista");
    }

    [HttpPost]
    public IActionResult GuardarDeportista(Deportista dep){
        return View("Index");
    }

    public IActionResult EliminarDeportista(int idCandidato){
        return View();
    }

    public IActionResult Creditos(){
        return View();
    }
}
