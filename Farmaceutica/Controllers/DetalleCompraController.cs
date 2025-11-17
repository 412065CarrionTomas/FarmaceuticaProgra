using Farmaceutica.Application.DTOs.CompraDTOs;
using Farmaceutica.Application.Services;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace Farmaceutica.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DetalleCompraController : ControllerBase
    {
        private readonly DetalleCompraService _DetalleCompraService;

        public DetalleCompraController(DetalleCompraService detalleCompraService)
        {
            _DetalleCompraService = detalleCompraService;
        }

        [HttpGet("obtener_detalle_compra_por_id")]
        public async Task<IActionResult> Get([FromQuery] int idCompra)
        {
            try
            {
                if (idCompra <= 0) return BadRequest("El idCompra debe ser mayor a 0.");
                var result = await _DetalleCompraService.GetAllDetallesCompraAsync(idCompra);
                if (result == null) return NotFound("No se encontraron detalles para la compra especificada.");
                return Ok(result);
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
        }


        [HttpPost("insertar_detalle_compra")]
        public async Task<IActionResult> Post([FromQuery] int idCompra, [FromBody] DetalleCompraDto value)
        {
            try
            {
                if (idCompra <= 0) return BadRequest("El idCompra debe ser mayor a 0.");
                var result = await _DetalleCompraService.InsertDetalleCompraAsync(idCompra, value);
                if (!result) return BadRequest("No se pudo insertar el detalle.");
                return Ok(result);
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
        }


        [HttpPut("actualizar_detalle_compra")]
        public async Task<IActionResult> Put(int id, [FromBody] DetalleCompraDto value)
        {
            try
            {
                if (id <= 0) return BadRequest("El id debe ser mayor a 0.");
                var result = await _DetalleCompraService.UpdateDetalleCompraAsync(id, value);
                if (!result) return BadRequest("No se pudo actualizar el detalle.");
                return Ok(result);
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
        }


        [HttpDelete("borrar_detalle_compra")]
        public async Task<IActionResult> Delete(int id)
        {
            try
            {
                if (id <= 0) return BadRequest("El id debe ser mayor a 0.");
                var result = await _DetalleCompraService.DeleteDetalleCompraAsync(id);
                if (!result) return NotFound("No se encontró el detalle.");
                return Ok(result);
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
        }
    }
}
