using Domain.Models;
using Farmaceutica.Application.DTOs.CompraDTOs;
using System.Linq.Expressions;

namespace Farmaceutica.Application.Interfaces
{
    public interface IDetalleCompraRepository
    {
        Task<List<DetallesCompras>?> GetAllDetallesComprasAsync(Expression<Func<DetallesCompras,bool>> condicion);
        Task<bool> UpdateCompraAsync(int id, DetallesCompras detalle, string entidad);
        Task<bool> InsertCompraAsync(int idCompra, DetallesCompras detalle, string entidad);
        Task<bool> DeleteCompraAsync(int id);
    }
}
