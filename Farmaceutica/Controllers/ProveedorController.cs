using System.Security.Authentication;
using Azure.Messaging;
using Farmaceutica.Application.DTOs;
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
        [HttpGet("obtener_proveedores")]
        public async Task<IActionResult> GetAll()
        {
            var result = await _ProveedorServices.GetAllProveedoresAsync();
            if (result == null) { return NotFound("No hay proveedores"); }
            return Ok(result);
        }

        [HttpPut("insert_proveedor")]
        public async Task<IActionResult> Put([FromBody] ProveedoresDTOs value)
        {
            var result = await _ProveedorServices.InsertProveedorAsync(value);
            if (result == false) { return BadRequest("Hubo un problema en el insert del proveedor"); }
            return Ok(result);
        }

        [HttpPost("actualizar_proveedor")]
        public async Task<IActionResult> Post([FromQuery] string cuit, [FromBody] ProveedoresDTOs value)
        {
            if (string.IsNullOrEmpty(cuit)) { return BadRequest("No pued eingresar cuit vacio."); }
            var result = await _ProveedorServices.UpdateProveedorAsync(cuit, value);
            if (result == false) { return BadRequest("Hubo un problema en la actualizacion del proveedor"); }
            return Ok(result);
        }

        [HttpDelete("borrar_proveedor")]
        public async Task<IActionResult> Delete([FromQuery] string cuit)
        {
            if (string.IsNullOrEmpty(cuit)) { return BadRequest("No pued eingresar cuit vacio."); }
            var result = await _ProveedorServices.DeleteProveedorAsync(cuit);
            if (result == false) { return BadRequest("Hubo un problema en la eliminacion del Proveedor."); }
            return Ok(result);
        }
    }
}
