using Farmaceutica.Application.Services;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Farmaceutica.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SucursalController : ControllerBase
    {
        private readonly SucursalServices _SucursalServices;

        public SucursalController(SucursalServices sucursalServices)
        {
            _SucursalServices = sucursalServices;
        }

        // GET: api/<ProveedorController>
        [HttpGet("sucursal")]
        public async Task<IActionResult> Get(string? nombre)
        {
            var result = await _SucursalServices.GetSucursalesAsync(nombre);
            if (result == null) { return NotFound("No hay sucursales."); }
            return Ok(result);
        }
    }
}
