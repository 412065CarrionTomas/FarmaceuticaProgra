using Farmaceutica.Application.Services;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Farmaceutica.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmpleadoController : ControllerBase
    {
        private readonly EmpleadoServices _EmpleadoServices;

        public EmpleadoController(EmpleadoServices empleadoServices)
        {
            _EmpleadoServices = empleadoServices;
        }

        // GET: api/<EmpleadoController>
        [HttpGet]
        public async Task<IActionResult> Get()
        {
            try
            {
                var result = await _EmpleadoServices.GetEmpleadosAsync();
                if (result == null || !result.Any())
                {
                    return NotFound("No se encontraron empleados.");
                }
                return Ok(result);
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
            
        }

        
    }
}
