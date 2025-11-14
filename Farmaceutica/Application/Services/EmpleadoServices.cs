using Domain.Models;
using Farmaceutica.Application.Interfaces;

namespace Farmaceutica.Application.Services
{
    public class EmpleadoServices
    {
        private readonly IEmpleadoRepostiory _EmpleadoRepository;

        public EmpleadoServices(IEmpleadoRepostiory empleadoRepository)
        {
            _EmpleadoRepository = empleadoRepository;
        }

        public async Task<List<Empleados>> GetEmpleadosAsync()
        {
            return await _EmpleadoRepository.GetEmpleadosAsync();
        }
    }
}
