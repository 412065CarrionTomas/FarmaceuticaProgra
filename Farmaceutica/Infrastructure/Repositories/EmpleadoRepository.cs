using Domain.Models;
using Farmaceutica.Application.Interfaces;
using Microsoft.EntityFrameworkCore;
using System.Linq.Expressions;

namespace Farmaceutica.Infrastructure.Repositories
{
    public class EmpleadoRepository : IEmpleadoRepostiory
    {
        private readonly FarmaceuticaContext _context;

        public EmpleadoRepository(FarmaceuticaContext context)
        {
            _context = context;
        }

        public async Task<List<Empleados>> GetEmpleadosAsync()
        {
            return await _context.Empleados.ToListAsync();
        }
    }
}
