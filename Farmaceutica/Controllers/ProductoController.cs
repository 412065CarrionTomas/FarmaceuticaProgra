using FarmaceuticaBD1.Application.DTOs.ProductosDTOs;
using FarmaceuticaBD1.Application.Services;
using Microsoft.AspNetCore.Http.Features;
using Microsoft.AspNetCore.Mvc;

namespace FarmaceuticaBD1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductoController : ControllerBase
    {
        private readonly ProductoServices _ProductoServices;

        public ProductoController(ProductoServices productoServices)
        {
            _ProductoServices = productoServices;
        }
        // GET: api/<ProductoController>
        [HttpGet]
        public async Task<IActionResult> Get([FromQuery] string? nombre = null
                                            , [FromQuery] string? codigoBarra = null
                                            , [FromQuery] string? sucursal =null
                                            , [FromQuery] string? orden = null)
        {
            var productoDTOLts = await _ProductoServices.GetAllByFilters(nombre, codigoBarra,sucursal, orden);
            if (productoDTOLts == null) { return NotFound(); }
            return Ok(productoDTOLts);
        }

        [HttpGet("lote")]
        public async Task<IActionResult> GetLote([FromQuery] int id)
        {
            if (id <= 0) { return BadRequest(); }
            LoteProductoDto? loteProductoDto =
                await _ProductoServices.GetLoteProducto(id);
            if (loteProductoDto == null) { return NotFound(); }
            return Ok(loteProductoDto);
        }

    }
}
