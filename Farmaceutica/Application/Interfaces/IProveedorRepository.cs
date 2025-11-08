using Domain.Models;
using Farmaceutica.Application.DTOs;
using System.Linq.Expressions;

namespace Farmaceutica.Application.Interfaces
{
    public interface IProveedorRepository
    {
        public Task<List<string>> GetProveedoresAsync(string nombre);
        public Task<List<Proveedores>> GetProveedoresFilterAsync(Expression<Func<Proveedores, bool>> condicion);
        public Task<bool> UpdateProveedoresAsync(string cuit, Proveedores proveedor);
        public Task<bool> InsertProveedorAsync(Proveedores proveedor);
        public Task<bool> DeleteProveedorAsync(string cuit);
    }
}
