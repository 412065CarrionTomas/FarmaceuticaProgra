using Domain.Models;
using FarmaceuticaBD1.Application.Interfaces;
using Microsoft.EntityFrameworkCore;
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

        public async Task<VwMedicamentoTop> GetMedicamentoTopAsync() => await _Context.VwMedicamentoTop.FirstAsync();

        public async Task<VwProductoTop> GetProductoTopAsync() => await _Context.VwProductoTop.FirstAsync();
        
    }
}
