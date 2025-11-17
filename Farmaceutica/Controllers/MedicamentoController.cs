using FarmaceuticaBD1.Application.DTOs.MedicamentosDTOs;
using FarmaceuticaBD1.Application.Services;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace FarmaceuticaBD1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MedicamentoController : ControllerBase
    {
        private readonly MedicamentoServices _MedicamentoServices;

        public MedicamentoController(MedicamentoServices medicamentoServices)
        {
            _MedicamentoServices = medicamentoServices;
        }

        // GET: api/<MedicamentoController>
        [HttpGet("obtener_medicamentos_por_filtros")]
        public async Task<IActionResult> GetBasic([FromQuery] string? nombre = null
                                            , [FromQuery] string? codigoBarra = null
                                            , [FromQuery] string? sucursal =null
                                            , [FromQuery] string? orden = null)
        {
            try
            {
                var medicamentoDTOLTS = await _MedicamentoServices.GetAllAsync(nombre, codigoBarra, sucursal, orden);
                if (medicamentoDTOLTS == null) { return NotFound(); }
                return Ok(medicamentoDTOLTS);
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
        }

        [HttpGet("obtener_loteMed_por_id")]
        public async Task<IActionResult> GetLote([FromQuery] int id)
        {
            try
            {
                if (id <= 0) { return BadRequest(); }
                LoteMedicamentoDTO? loteMedicamentoDTO =
                    await _MedicamentoServices.GetLoteMedicamentoAsync(id);
                if (loteMedicamentoDTO == null) { return NotFound(); }
                return Ok(loteMedicamentoDTO);
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
        }

    }
}
