namespace Farmaceutica.Application.Interfaces
{
    public interface ISucursalRepository
    {
        Task<List<string>> GetSucursalesAsync(string? nombre);
    }
}
