using Domain.Models;
using Farmaceutica.Application.DTOs.CompraDTOs;
using System.Linq.Expressions;

namespace Farmaceutica.Application.Interfaces
{
    public interface ICompraRepository
    {
        Task<List<Compras>?> GetComprasAsync(Expression<Func<Compras, bool>> condicion);
        Task<bool> UpdateCompraAsync(int id, CompraDto compras, List<DetallesCompras> details);
        Task<bool> InsertCompraAsync(CompraDto compras, List<DetallesCompras> details);
        Task<bool> DeleteCompraAsync(int id);

    }
}
