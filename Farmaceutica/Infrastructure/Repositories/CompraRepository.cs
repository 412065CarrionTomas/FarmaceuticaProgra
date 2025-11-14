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

        public async Task<bool> InsertCompraAsync(CompraDto compra, List<DetallesCompras> details)
        {
            var empleadoID = new OutputParameter<int?>();
            var proveedorID = new OutputParameter<int?>();
            var repartidorID = new OutputParameter<int?>();
            var sucursalID = new OutputParameter<int?>();

            await _Context.Procedures.sp_TraerTablasAsync(
                compra.EmpleadoDni,
                compra.Proveedor,
                compra.RepartidorGmail,
                compra.Sucursal,
                empleadoID,
                proveedorID,
                repartidorID,
                sucursalID
            );

            if (empleadoID.Value == null)
                throw new ArgumentException("Empleado no encontrado");
            if (proveedorID.Value == null)
                throw new ArgumentException("Proveedor no encontrado");
            if (repartidorID.Value == null)
                throw new ArgumentException("Repartidor no encontrado");
            if (sucursalID.Value == null)
                throw new ArgumentException("Sucursal no encontrado");

            var maestro = new Compras()
            {
                EmpleadoId = empleadoID.Value,
                ProveedorId = proveedorID.Value,
                RepartidorId = repartidorID.Value,
                SucursalId = sucursalID.Value,
                FechaCompra = compra.FechaCompra,
                DetallesCompras = details,
                Activo = compra.Activo
            };

            await _Context.Compras.AddAsync(maestro);

            return await _Context.SaveChangesAsync() > 0;
        }

        public async Task<bool> UpdateCompraAsync(int id, CompraDto compra, List<DetallesCompras> details)
        {
            var empleadoID = new OutputParameter<int?>();
            var proveedorID = new OutputParameter<int?>();
            var repartidorID = new OutputParameter<int?>();
            var sucursalID = new OutputParameter<int?>();

            await _Context.Procedures.sp_TraerTablasAsync(
                compra.EmpleadoDni,
                compra.Proveedor,
                compra.RepartidorGmail,
                compra.Sucursal,
                empleadoID,
                proveedorID,
                repartidorID,
                sucursalID
            );

            if (empleadoID.Value == null)
                throw new ArgumentException("EmpleadoID no encontrado");
            if (proveedorID.Value == null)
                throw new ArgumentException("ProveedorID no encontrado");
            if (repartidorID.Value == null)
                throw new ArgumentException("RepartidorID no encontrado");
            if (sucursalID.Value == null)
                throw new ArgumentException("SucursalID no encontrado");

            var objTrack = await _Context.Compras.FindAsync(id);
            if (objTrack == null) { throw new InvalidOperationException(); }

            objTrack.EmpleadoId = empleadoID.Value;
            objTrack.SucursalId = sucursalID.Value;
            objTrack.RepartidorId = repartidorID.Value;
            objTrack.ProveedorId = proveedorID.Value;
            objTrack.FechaCompra = compra.FechaCompra;
            objTrack.Activo = compra.Activo;
            objTrack.DetallesCompras = details;

            _Context.Entry(objTrack).CurrentValues.SetValues(objTrack);

            return await _Context.SaveChangesAsync() > 0;
        }
    }
}
