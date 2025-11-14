using Domain.Models;
using Farmaceutica.Application.Interfaces;

namespace Farmaceutica.Application.Services
{
    public class RepartidorServices
    {
        private readonly IRepartidorRepository _repartidorRepository;
        public RepartidorServices(IRepartidorRepository repartidorRepository)
        {
            _repartidorRepository = repartidorRepository;
        }
        public async Task<List<Repartidores>> GetRepartidoresAsync()
        {
            return await _repartidorRepository.GetRepartidoresAsync();
        }
    }
}
