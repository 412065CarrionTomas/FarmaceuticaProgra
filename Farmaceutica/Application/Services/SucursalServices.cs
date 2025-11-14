using Domain.Models;
using Farmaceutica.Application.Interfaces;
using Farmaceutica.Infrastructure.Repositories;
using System.Linq.Expressions;

namespace Farmaceutica.Application.Services
{
    public class SucursalServices
    {
        private readonly ISucursalRepository _SucursalRepostiry;

        public SucursalServices(ISucursalRepository sucursalRepostiry)
        {
            _SucursalRepostiry = sucursalRepostiry;
        }

        public async Task<List<Sucursales>?> GetSucursalesAsync()
        {
            return await _SucursalRepostiry.GetSucursalesAsync(null);
        }
            
    }
}
