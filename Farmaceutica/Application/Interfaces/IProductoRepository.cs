using Domain.Models;
using System.Linq.Expressions;

namespace Farmaceutica.Application.Interfaces
{
    public interface IProductoRepository
    {
        Task<List<InventariosProductos>> GetAllByFiltersAsync(Expression<Func<InventariosProductos, bool>> condicion);
        Task<LotesProductos?> GetLoteProductoAsync(Expression<Func<LotesProductos, bool>> condicion);

    }
}
