using Domain.Models;
using Farmaceutica.Application.DTOs.CompraDTOs;

namespace Farmaceutica.Application.Interfaces
{
    public interface IDetalleCompraRepository
    {
        Task<bool> UpdateCompraAsync(int id, DetallesCompras detalle, string entidad);
        Task<bool> InsertCompraAsync(int idCompra, DetallesCompras detalle, string entidad);
        Task<bool> DeleteCompraAsync(int id);
    }
}
