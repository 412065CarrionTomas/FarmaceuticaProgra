using Domain.Models;
using Farmaceutica.Application.Interfaces;
using Microsoft.AspNetCore.Http.Features;
using Microsoft.EntityFrameworkCore;
using System.Linq.Expressions;

namespace Farmaceutica.Infrastructure.Repositories
{
    public class RepartidorRepository : IRepartidorRepository
    {
        private readonly FarmaceuticaContext _context;

        public RepartidorRepository(FarmaceuticaContext context)
        {
            _context = context;
        }

        public async Task<List<Repartidores>> GetRepartidoresAsync()
        {
            return await _context.Repartidores.ToListAsync();
        }
    }
}
