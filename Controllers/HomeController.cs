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
}
