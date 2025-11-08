using Domain.Models;
using Farmaceutica.Application.DTOs;
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

        public async Task<bool> DeleteProveedorAsync(string cuit)
        {
            Proveedores? proveedor = await _Context.Proveedores
                                    .FirstAsync(x => x.Cuit.Equals(cuit));
            if (proveedor == null) { throw new InvalidOperationException(); }
            proveedor.Activo = 0;

            return await _Context.SaveChangesAsync() > 0;
        }

        public async Task<List<string>> GetProveedoresAsync(string? nombre = null)
        {
            return await _Context.Proveedores
                .Where(x => string.IsNullOrEmpty(nombre) || x.RazonSocial.Contains(nombre) && x.Activo == 1)
                .Select(x => x.RazonSocial)
                .ToListAsync();
        }

        public async Task<List<Proveedores>> GetProveedoresFilterAsync(Expression<Func<Proveedores, bool>> condicion)
        {
            return await _Context.Proveedores
                        .Where(condicion).ToListAsync();
        }

        public async Task<bool> InsertProveedorAsync(Proveedores proveedor)
        {
            await _Context.Proveedores.AddAsync(proveedor);
            return await _Context.SaveChangesAsync() > 0;
        }

        public async Task<bool> UpdateProveedoresAsync(string cuit, Proveedores proveedor)
        {
            var objTrack = await _Context.Proveedores.FirstOrDefaultAsync(x => x.Cuit == cuit);
            if (objTrack == null) return false;

            objTrack.RazonSocial = proveedor.RazonSocial;
            objTrack.Cuit = proveedor.Cuit;
            objTrack.EmailProveedor = proveedor.EmailProveedor;
            objTrack.TelefonoProveedor = proveedor.TelefonoProveedor;
            objTrack.Activo = proveedor.Activo;

            return await _Context.SaveChangesAsync() > 0;
        }
    }
}
