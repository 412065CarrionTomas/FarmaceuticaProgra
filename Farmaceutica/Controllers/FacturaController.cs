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
            var result = await _FacturaServices.GetGanancias(dia, mes, anio);
            return Ok(result);
        }

        [HttpGet("obtener_producto_top")]
        public async Task<IActionResult> GetProductoTop()
        {
            List<VwProductoTop> top = await _FacturaServices.GetProductoTop();
            return Ok(top);
        }

        [HttpGet("obtener_medicamento_top")]
        public async Task<IActionResult> GetMedicamentoTop()
        {
            List<VwMedicamentoTop> top = await _FacturaServices.GetMedicamentoTop();
            return Ok(top);
        }

        [HttpGet("obtener_ganancias_mensuales")]
        public async Task<IActionResult> GetGanancias([FromQuery]int? anio)
        {
            List<sp_ganancias_mensualesResult> ganMensual = await _FacturaServices.GetGananciasMensualesAsync(anio);
            return Ok(ganMensual);
        }

        [HttpGet("obtener_ventas_por_sucursal")]
        public async Task<IActionResult> GetVentaPorSucursal()
        {
            List<VwVentasPorSucursal> ventasPorSucursalLts = await _FacturaServices.GetVentasPorSucursalAsync();
            if(ventasPorSucursalLts == null) { return NotFound("No hay ventas por sucursal registradas"); }
            return Ok(ventasPorSucursalLts);
        }
        [HttpGet("obtener_metodo_pago_utilizado")]
        public async Task<IActionResult> GetMPUsado()
        {
            List<VwMpusado> mpLts = await _FacturaServices.GetMPUsadoAsync();
            if (mpLts == null) { return NotFound("No hay metodo de pago registrados"); }
            return Ok(mpLts);
        }
    }
}
