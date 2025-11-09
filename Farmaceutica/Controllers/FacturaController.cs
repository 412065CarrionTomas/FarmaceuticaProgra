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
        [HttpGet("ganancia")]
        public async Task<IActionResult> GetGanancia([FromQuery]int?dia=null
                                                , [FromQuery]int?mes=null
                                                , [FromQuery]int?anio=null)
        {
            var result = await _FacturaServices.GetGanancias(dia, mes, anio);
            return Ok(result);
        }

        [HttpGet("producto_top")]
        public async Task<IActionResult> GetProductoTop()
        {
            VwProductoTop top = await _FacturaServices.GetProductoTop();
            return Ok(top);
        }

        [HttpGet("medicamento_top")]
        public async Task<IActionResult> GetMedicamentoTop()
        {
            VwMedicamentoTop top = await _FacturaServices.GetMedicamentoTop();
            return Ok(top);
        }
    }
}
