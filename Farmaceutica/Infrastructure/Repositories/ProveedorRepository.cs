using Domain.Models;
using Farmaceutica.Application.Interfaces;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using System.Linq;
using System.Linq.Expressions;

namespace Farmaceutica.Infrastructure.Repositories
{
    public class ProveedorRepository : IProveedorRepository
    {
        private readonly FarmaceuticaContext _Context;

        public ProveedorRepository(FarmaceuticaContext context)
        {
            _Context = context;
        }

       public async Task<List<string>> GetProveedoresAsync(string? nombre = null)
        {
            return await _Context.Proveedores
                .Where(x => string.IsNullOrEmpty(nombre) || x.RazonSocial.Contains(nombre))
                .Select(x => x.RazonSocial)
                .ToListAsync();
        }
    }
}
