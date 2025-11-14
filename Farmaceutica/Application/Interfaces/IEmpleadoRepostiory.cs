using Domain.Models;
using System.Linq.Expressions;

namespace Farmaceutica.Application.Interfaces
{
    public interface IEmpleadoRepostiory
    {
        Task<List<Empleados>> GetEmpleadosAsync();
    }
}
