namespace Farmaceutica.Application.DTOs.CompraDTOs
{
    public class GetCompraDto
    {

        public DateTime FechaFactura { get; set; }
        public string? Empleado { get; set; }
        public string? Proveedor { get; set; }
        public string? Sucursal { get; set; }
        public ICollection<DetalleCompraDto> DetalleCompraDtos { get; set; } = new List<DetalleCompraDto>();
    }
}
