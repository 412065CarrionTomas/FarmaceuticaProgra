using Farmaceutica.Application.DTOs.CompraDTOs;
using Farmaceutica.Application.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using System.Threading.Tasks;

namespace Farmaceutica.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CompraController : ControllerBase
    {
        private readonly CompraServices _CompraServices;

        public CompraController(CompraServices compraServices)
        {
            _CompraServices = compraServices;
        }

        // GET: api/<CompraController>
        [HttpGet("obtener_compras_por_filtros")]
        public async Task<IActionResult> GetCompra(DateTime? fechaInicio = null
                                                        , DateTime? fechaFin = null
                                                        , string? sucursal = null
                                                        , string? proveedor = null)
        {
            var listDto = await _CompraServices.GetComprasByFilters(fechaInicio, fechaFin, sucursal, proveedor);
            if (listDto == null) { return NotFound(); }
            return Ok(listDto);
        }


        [HttpPost("insertar_maestro_detalle")]
        public async Task<IActionResult> Post([FromBody] CompraDto value)
        {
            var result = await _CompraServices.InsertCompraAsync(value);
            if (result ==false) { return BadRequest("No se pudo insertar la compra."); }
            return Ok(result);
        }

        [HttpPut("actulizar_maestro_detalle")]
        public async Task<IActionResult> Put([FromQuery] int id, [FromBody] CompraDto value)
        {
            if(id <= 0) { return BadRequest("No puede enviar id 0 o menor."); }
            bool result = await _CompraServices.UpdateComprasAsync(id, value);
            if(result == false) { return BadRequest("No se puedo actualizar la Compra."); }
            return Ok(result);
        }

        [HttpDelete("borrar_compra")]
        public async Task<IActionResult> Delete(int id)
        {
            bool result = await _CompraServices.DeleteCompraAsync(id);
            if(result == false) { BadRequest("No se pudo completar la eliminacion de la factura"); }
            return Ok(result);
        }
    }
}

