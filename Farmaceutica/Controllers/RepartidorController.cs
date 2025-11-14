using Farmaceutica.Application.Services;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Farmaceutica.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RepartidorController : ControllerBase
    {
        private readonly RepartidorServices _repartidorServices;

        public RepartidorController(RepartidorServices repartidorServices)
        {
            _repartidorServices = repartidorServices;
        }

        // GET: api/<RepartidorController>
        [HttpGet]
        public async Task<IActionResult> Get()
        {
            var result = await _repartidorServices.GetRepartidoresAsync();
            if (result == null || !result.Any())
            {
                return NotFound("No se encontraron repartidores.");
            }
            return Ok(result);
        }

    }
}
