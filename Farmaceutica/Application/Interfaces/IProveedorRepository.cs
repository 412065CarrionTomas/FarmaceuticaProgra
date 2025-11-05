using Domain.Models;
using System.Linq.Expressions;

namespace Farmaceutica.Application.Interfaces
{
    public interface IProveedorRepository
    {
        public Task<List<string>> GetProveedoresAsync(string nombre);
    }
}
