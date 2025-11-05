using Azure.Messaging;
using Farmaceutica.Application.Services;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Farmaceutica.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProveedorController : ControllerBase
    {
        private readonly ProveedorServices _ProveedorServices;

        public ProveedorController(ProveedorServices proveedorServices)
        {
            _ProveedorServices = proveedorServices;
        }

        // GET: api/<ProveedorController>
        [HttpGet("proveedor")]
        public async Task<IActionResult> Get(string? nombre)
        {
            var result = await _ProveedorServices.GetProveedoresAsync(nombre);
            if(result == null) { return NotFound("No hay proveedores."); }
            return Ok(result);
        }
    }
}
