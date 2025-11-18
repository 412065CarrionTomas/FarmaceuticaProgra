using Domain.Models;

namespace Farmaceutica.Application.DTOs
{
    public class ProveedoresDTOs
    {
        public int ProveedorId { get; set; }
        public string? RazonSocial { get; set; }

        public string? Cuit { get; set; }

        public string? DireccionProveedor { get; set; }

        public string? TelefonoProveedor { get; set; }

        public string? EmailProveedor { get; set; }

        public bool Activo { get; set; }
    }
}
