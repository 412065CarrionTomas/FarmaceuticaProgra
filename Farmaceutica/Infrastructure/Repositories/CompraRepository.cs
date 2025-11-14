using Domain.Models;
using Farmaceutica.Application.DTOs.CompraDTOs;
using Farmaceutica.Application.Interfaces;
using Microsoft.AspNetCore.Mvc.ModelBinding.Binders;
using Microsoft.EntityFrameworkCore;
using System.Linq.Expressions;
using System.Text.Json;

namespace Farmaceutica.Infrastructure.Repositories
{
    public class CompraRepository : ICompraRepository
    {
        private readonly FarmaceuticaContext _Context;

        public CompraRepository(FarmaceuticaContext context)
        {
            _Context = context;
        }

        public async Task<bool> DeleteCompraAsync(int id)
        {
            Compras? objTrack = await _Context.Compras.FindAsync(id);
            if (objTrack == null) { return false; }
            objTrack.Activo = false;
            return await _Context.SaveChangesAsync() > 0;
        }

        public async Task<List<Compras>?> GetComprasAsync(Expression<Func<Compras, bool>> condicion)
        {
            var compras = await _Context.Compras
                .Include(x => x.DetallesCompras)
                    .ThenInclude(x => x.LoteMedicamento)
                    .ThenInclude(x => x.Medicamento)
                .Include(x => x.DetallesCompras)
                    .ThenInclude(x => x.LoteProducto)
                    .ThenInclude(x => x.Producto)
                .Include(x => x.Empleado)
                .Include(x => x.Sucursal)
                .Include(x => x.Proveedor)
                .Include(x => x.Repartidor)
                .Where(condicion)
                .ToListAsync();

            foreach (var compra in compras)
            {
                compra.DetallesCompras = compra.DetallesCompras
                    .Where(d => d.Activo == true)
                    .ToList();
            }

            return compras;
        }

        public async Task<bool> InsertCompraAsync(Compras compra)
        {
            await _Context.Compras.AddAsync(compra);

            return await _Context.SaveChangesAsync() > 0;
        }

        public async Task<bool> UpdateCompraAsync(int id, Compras compra)
        {
            var objTrack = await _Context.Compras.FindAsync(id);
            if (objTrack == null) { throw new InvalidOperationException(); }
            _Context.Entry(objTrack).CurrentValues.SetValues(objTrack);

            objTrack.SucursalId = compra.SucursalId;
            objTrack.EmpleadoId = compra.EmpleadoId;
            objTrack.ProveedorId = compra.ProveedorId;
            objTrack.RepartidorId = compra.RepartidorId;
            objTrack.FechaCompra = compra.FechaCompra;
            objTrack.Activo = compra.Activo;
            objTrack.DetallesCompras = compra.DetallesCompras;

            return await _Context.SaveChangesAsync() > 0;
        }
    }
}
