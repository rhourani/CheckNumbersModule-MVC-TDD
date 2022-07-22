using Microsoft.AspNetCore.Mvc;
using Nordia.Models;
using Nordia.Services;
using System.Diagnostics;

namespace Nordia.Controllers
{
    public class HomeController : Controller
    {
        private readonly ICheckModService _checkMod;

        public HomeController(
            ICheckModService checkMod)
        {
            _checkMod = checkMod;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult CheckNums()
        {
            var res = _checkMod.CheckNumCollectionMod(1, 100);

            return View(res.Result);
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}