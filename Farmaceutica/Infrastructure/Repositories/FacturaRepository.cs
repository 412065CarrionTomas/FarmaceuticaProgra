using Domain.Models;
using FarmaceuticaBD1.Application.Interfaces;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.ChangeTracking.Internal;
using System.Linq.Expressions;

namespace FarmaceuticaBD1.Infrastructure.Repositories
{
    public class FacturaRepository : IFacturaRepository
    {
        private readonly FarmaceuticaContext _Context;
        public FacturaRepository(FarmaceuticaContext context)
        {
            _Context = context;
        }

        

        public async Task<List<Facturas>> GetGananciasFacturasAsync(Expression<Func<Facturas, bool>> condicion)
        {
            return await _Context.Facturas
                .Include(f => f.DetallesFacturas)
                .Where(condicion)
                .ToListAsync();
        }

        public async Task<List<sp_ganancias_mensualesResult>> GetGananciasMensualesAsync(int? anio)
            => await _Context.Procedures.sp_ganancias_mensualesAsync(anio);

        public async Task<List<VwMedicamentoTop>> GetMedicamentoTopAsync() 
            => await _Context.VwMedicamentoTop.ToListAsync();

        public async Task<List<sp_MPUsadosResult>> GetMPUsadosAsync(int? anio)
            => await _Context.Procedures.sp_MPUsadosAsync(anio);
        public async Task<List<sp_VentasPorSucursalResult>> GetVentasPorSucursalAsync(int? anio)
            => await _Context.Procedures.sp_VentasPorSucursalAsync(anio);
        public async Task<List<VwProductoTop>> GetProductoTopAsync() 
            => await _Context.VwProductoTop.ToListAsync();

    }
}
