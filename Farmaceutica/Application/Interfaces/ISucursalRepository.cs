using Domain.Models;
using System.Linq.Expressions;

namespace Farmaceutica.Application.Interfaces
{
    public interface ISucursalRepository
    {
        Task<List<Sucursales>?> GetSucursalesAsync(Expression<Func<Sucursales,bool>>? condicion);
    }
}
