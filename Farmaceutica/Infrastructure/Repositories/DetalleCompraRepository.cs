using Domain.Models;
using Farmaceutica.Application.Interfaces;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace Farmaceutica.Infrastructure.Repositories
{
    public class DetalleCompraRepository : IDetalleCompraRepository
    {
        private readonly FarmaceuticaContext _Context;

        public DetalleCompraRepository(FarmaceuticaContext context)
        {
            _Context = context;
        }

        public async Task<bool> DeleteCompraAsync(int id)
        {
            var detalle = await _Context.DetallesCompras
                .FirstOrDefaultAsync(d => d.DetalleCompraId == id);

            if (detalle == null) return false;

            detalle.Activo = false;
            return await _Context.SaveChangesAsync() > 0;
        }

        public Task<List<DetallesCompras>?> GetAllDetallesComprasAsync(Expression<Func<DetallesCompras, bool>> condicion)
        {
            return _Context.DetallesCompras
                .Where(condicion)
                .ToListAsync();
        }

        public async Task<bool> InsertCompraAsync(int compraId, DetallesCompras detalle, string entidad)
        {
            Compras? compraExiste = await _Context.Compras.FirstAsync(c => c.CompraId == compraId);

            if (compraExiste == null)
                return false;

            var codBarraProducto = new OutputParameter<string?>();
            var codBarraMedicamento = new OutputParameter<string?>();
            var loteMedicamento = new OutputParameter<int?>();
            var loteProducto = new OutputParameter<int?>();

            await _Context.Procedures.sp_TraerTablasDetalleAsync(detalle.CodigoBarraProductoId
                , detalle.CodigoBarraMedicamentoId
                , detalle.LoteMedicamentoId
                , detalle.LoteProductoId
                , codBarraProducto
                , codBarraMedicamento
                , loteMedicamento
                , loteProducto);

            if(entidad == "p")
            {
                if (codBarraProducto.Value == null)
                    throw new ArgumentException("Codigo-Barra de Producto no encontrado");
                if (loteProducto.Value == null)
                    throw new ArgumentException("Lote Producto no encontrado");
            }
            
            if (entidad == "m")
            {
                if (loteMedicamento.Value == null)
                    throw new ArgumentException("Lote Medicamento no encontrado");
                if (codBarraMedicamento.Value == null)
                    throw new ArgumentException("Codigo-Barra de Medicamento no encontrado");
            }

            detalle.CompraId = compraId;

            await _Context.DetallesCompras.AddAsync(detalle);
            return await _Context.SaveChangesAsync() > 0;
        }

        public async Task<bool> UpdateCompraAsync(int id, DetallesCompras detalle, string entidad)
        {
            var actual = await _Context.DetallesCompras
                .FirstOrDefaultAsync(d => d.DetalleCompraId == id);

            if (actual == null) return false;

            var codBarraProducto = new OutputParameter<string?>();
            var codBarraMedicamento = new OutputParameter<string?>();
            var loteMedicamento = new OutputParameter<int?>();
            var loteProducto = new OutputParameter<int?>();

            await _Context.Procedures.sp_TraerTablasDetalleAsync(detalle.CodigoBarraProductoId
                , detalle.CodigoBarraMedicamentoId
                , detalle.LoteMedicamentoId
                , detalle.LoteProductoId
                , codBarraProducto
                , codBarraMedicamento
                , loteMedicamento
                , loteProducto);

            if (entidad == "p")
            {
                if (codBarraProducto.Value == null)
                    throw new ArgumentException("Codigo-Barra de Producto no encontrado");
                if (loteProducto.Value == null)
                    throw new ArgumentException("Lote Producto no encontrado");
            }

            if (entidad == "m")
            {
                if (loteMedicamento.Value == null)
                    throw new ArgumentException("Lote Medicamento no encontrado");
                if (codBarraMedicamento.Value == null)
                    throw new ArgumentException("Codigo-Barra de Medicamento no encontrado");
            }

            actual.CodigoBarraProductoId = detalle.CodigoBarraProductoId;
            actual.CodigoBarraMedicamentoId = detalle.CodigoBarraMedicamentoId;
            actual.LoteProductoId = detalle.LoteProductoId;
            actual.LoteMedicamentoId = detalle.LoteMedicamentoId;
            actual.Cantidad = detalle.Cantidad;
            actual.Activo = detalle.Activo ?? actual.Activo;

            return await _Context.SaveChangesAsync() > 0;
        }
    }
}
