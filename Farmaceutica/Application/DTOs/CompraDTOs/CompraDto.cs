

namespace Farmaceutica.Application.DTOs.CompraDTOs
{
    public class CompraDto
    {
        public DateTime? FechaCompra { get; set; }

        public string? EmpleadoDni { get; set; }

        public string? Proveedor { get; set; }

        public string? RepartidorGmail { get; set; }

        public string? Sucursal { get; set; }
        public ICollection<DetalleCompraDto> DetallesCompraDtoLts { get; set; } = new List<DetalleCompraDto>();

        public int Activo { get; set; }
    }
}
