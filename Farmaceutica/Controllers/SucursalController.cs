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
        [HttpGet("sucursal_por_nombre")]
        public async Task<IActionResult> Get([FromQuery]string? nombre = null)
        {
            var result = await _SucursalServices.GetSucursalesByNameAsync(nombre);
            if (result == null) { return NotFound("No hay sucursales."); }
            return Ok(result);
        }

        [HttpGet("sucursales")]
        public async Task<IActionResult> GetSucursal()
        {
            var sucursal = await _SucursalServices.GetSucursalesAsync();
            if (sucursal == null) { return NotFound(); }
            return Ok(sucursal);
        }
    }
}
