using Farmaceutica.Application.Interfaces;

namespace Farmaceutica.Application.Services
{
    public class SucursalServices
    {
        private readonly ISucursalRepository _SucursalRepostiry;

        public SucursalServices(ISucursalRepository sucursalRepostiry)
        {
            _SucursalRepostiry = sucursalRepostiry;
        }

        public async Task<List<string>> GetSucursalesAsync(string? nombre) =>
            await _SucursalRepostiry.GetSucursalesAsync(nombre);
    }
}
