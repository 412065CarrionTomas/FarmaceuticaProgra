using Domain.Models;
using FarmaceuticaBD1.Application.Services;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace FarmaceuticaBD1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FacturaController : ControllerBase
    {
        private readonly FacturaServices _FacturaServices;

        public FacturaController(FacturaServices facturaServices)
        {
            _FacturaServices = facturaServices;
        }

        // GET: api/<FacturaController>
        [HttpGet("obtener_ganancia")]
        public async Task<IActionResult> GetGanancia([FromQuery]int?dia=null
                                                , [FromQuery]int?mes=null
                                                , [FromQuery]int?anio=null)
        {
            try
            {
                var result = await _FacturaServices.GetGanancias(dia, mes, anio);
                return Ok(result);
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
        }

        [HttpGet("obtener_producto_top")]
        public async Task<IActionResult> GetProductoTop()
        {
            try
            {
                List<VwProductoTop> top = await _FacturaServices.GetProductoTop();
                return Ok(top);
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
        }

        [HttpGet("obtener_medicamento_top")]
        public async Task<IActionResult> GetMedicamentoTop()
        {
            try
            {
                List<VwMedicamentoTop> top = await _FacturaServices.GetMedicamentoTop();
                return Ok(top);
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
        }

        [HttpGet("obtener_ganancias_mensuales")]
        public async Task<IActionResult> GetGanancias([FromQuery] int? anio)
        {
            try
            {
                List<sp_ganancias_mensualesResult> ganMensual = await _FacturaServices.GetGananciasMensualesAsync(anio);
                return Ok(ganMensual);
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
        }

        [HttpGet("obtener_ventas_por_sucursal")]
        public async Task<IActionResult> GetVentaPorSucursal([FromQuery] int? anio = null)
        {
            try
            {
                List<sp_VentasPorSucursalResult> ventasPorSucursalLts = await _FacturaServices.GetVentasPorSucursalAsync(anio);
                if (ventasPorSucursalLts == null) { return NotFound("No hay ventas por sucursal registradas"); }
                return Ok(ventasPorSucursalLts);
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
        }

        [HttpGet("obtener_metodo_pago_utilizado")]
        public async Task<IActionResult> GetMPUsado([FromQuery]int? anio)
        {
            try
            {
                List<sp_MPUsadosResult> mpLts = await _FacturaServices.GetMPUsadoAsync(anio);
                if (mpLts == null) { return NotFound("No hay metodo de pago registrados"); }
                return Ok(mpLts);
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
        }
    }
}
