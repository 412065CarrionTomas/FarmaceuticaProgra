using Domain.Models;
using Farmaceutica.Application.Interfaces;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.SqlServer.Query.Internal;
using System.Linq.Expressions;
using static System.Runtime.InteropServices.JavaScript.JSType;

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
                return await _Context.Sucursales.ToListAsync();
            }

            return await _Context.Sucursales
                .Where(condicion).ToListAsync();
        }
    }
}
