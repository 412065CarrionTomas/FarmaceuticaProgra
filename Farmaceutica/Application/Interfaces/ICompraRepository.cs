using Domain.Models;
using Farmaceutica.Application.DTOs.CompraDTOs;
using System.Linq.Expressions;

namespace Farmaceutica.Application.Interfaces
{
    public interface ICompraRepository
    {
        Task<List<Compras>?> GetComprasAsync(Expression<Func<Compras, bool>> condicion);
        Task<bool> UpdateCompraAsync(int id, Compras compras);
        Task<bool> InsertCompraAsync(Compras compras);
        Task<bool> DeleteCompraAsync(int id);

    }
}
