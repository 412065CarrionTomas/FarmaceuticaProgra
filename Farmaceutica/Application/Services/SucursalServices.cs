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

        public async Task<List<string>?> GetSucursalesByNameAsync(string? nombre = null)
        {
            Expression<Func<Sucursales, bool>> condicion = x =>
            (string.IsNullOrEmpty(nombre) || x.Descripcion.Contains(nombre));
            var listSucursalDom = await _SucursalRepostiry.GetSucursalesAsync(condicion);
            var listSucursalString = listSucursalDom.Select(x => x.Descripcion).ToList();
            return listSucursalString;
        }

        public async Task<List<Sucursales>?> GetSucursalesAsync()
        {
            return await _SucursalRepostiry.GetSucursalesAsync(null);
        }
            
    }
}
