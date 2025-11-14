using Domain.Models;
using System.Linq.Expressions;

namespace Farmaceutica.Application.Interfaces
{
    public interface IRepartidorRepository
    {
        Task<List<Repartidores>> GetRepartidoresAsync();
    }
}
