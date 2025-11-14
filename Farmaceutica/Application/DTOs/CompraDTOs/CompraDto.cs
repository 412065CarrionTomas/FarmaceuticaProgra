

namespace Farmaceutica.Application.DTOs.CompraDTOs
{
    public class CompraDto
    {
        public DateTime? FechaCompra { get; set; }

        public int? EmpleadoId { get; set; }

        public int? ProveedorId { get; set; }

        public int? RepartidorId { get; set; }

        public int? SucursalId { get; set; }

        public bool? Activo { get; set; }
        public ICollection<DetalleCompraDto> DetallesCompraDtoLts { get; set; } = new List<DetalleCompraDto>();
    }
}
