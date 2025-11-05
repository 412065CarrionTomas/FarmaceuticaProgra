using Domain.Models;
using Farmaceutica.Application.Interfaces;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.SqlServer.Query.Internal;

namespace Farmaceutica.Infrastructure.Repositories
{
    public class SucursalRepository : ISucursalRepository
    {
        private readonly FarmaceuticaContext _Context;

        public SucursalRepository(FarmaceuticaContext context)
        {
            _Context = context;
        }

        public async Task<List<string>> GetSucursalesAsync(string? nombre = null)
        {
            return await _Context.Sucursales
                .Where(x => string.IsNullOrEmpty(nombre) || x.Descripcion.Contains(nombre))
                .Select(x => x.Descripcion)
                .ToListAsync();
        }
    }
}
