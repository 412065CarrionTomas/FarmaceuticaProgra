using Domain.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace FarmaceuticaBD1.Application.Interfaces
{
    public interface IFacturaRepository
    {
        Task<List<Facturas>> GetGananciasFacturasAsync(Expression<Func<Facturas, bool>> condicion);
        Task<VwProductoTop> GetProductoTopAsync();
        Task<VwMedicamentoTop> GetMedicamentoTopAsync();
    }
}
