using Domain.Models;
using Farmaceutica.Application.Interfaces;
using System.Linq.Expressions;

namespace Farmaceutica.Application.Services
{
    public class ProveedorServices
    {
        private readonly IProveedorRepository _ProveedorRepository;

        public ProveedorServices(IProveedorRepository proveedorRepository)
        {
            _ProveedorRepository = proveedorRepository;
        }

        public async Task<List<string>> GetProveedoresAsync(string nombre)
        {
            return await _ProveedorRepository.GetProveedoresAsync(nombre);
        }
    }
}
