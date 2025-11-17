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


        [HttpGet("sucursales")]
        public async Task<IActionResult> GetSucursal()
        {
            try
            {
                var sucursal = await _SucursalServices.GetSucursalesAsync();
                if (sucursal == null) { return NotFound(); }
                return Ok(sucursal);

            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
            
        }
    }
}
