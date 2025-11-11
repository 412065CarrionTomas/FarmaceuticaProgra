using Domain.Models;
using Farmaceutica.Application.Interfaces;
using Microsoft.EntityFrameworkCore;
using System.Linq.Expressions;

namespace Farmaceutica.Infrastructure.Repositories
{
    public class SucursalRepository : ISucursalRepository
    {
        private readonly FarmaceuticaContext _Context;

        public SucursalRepository(FarmaceuticaContext context)
        {
            _Context = context;
        }

        public async Task<List<Sucursales>?> GetSucursalesAsync(Expression<Func<Sucursales, bool>>? condicion)
        {
            if(condicion == null)
            {
                return await _Context.Sucursales
                            .Include(x => x.Localidad)
                            .ToListAsync();
            }

            return await _Context.Sucursales
                .Where(condicion).ToListAsync();
        }
    }
}
