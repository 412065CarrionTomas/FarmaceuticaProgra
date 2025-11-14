namespace Farmaceutica.Application.DTOs.CompraDTOs
{
    public class DetalleCompraDto
    {
        public int DetalleCompraId { get; set; }
        public string? CodigoBarraProductoId { get; set; }
        public int? LoteProductoId { get; set; }
        public string? CodigoBarraMedicamentoId { get; set; }
        public int? LoteMedicamentoId { get; set; }
        public int Cantidad { get; set; }
        public bool Activo { get; set; }
    }
}
