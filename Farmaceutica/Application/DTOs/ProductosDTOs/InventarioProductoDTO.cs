namespace FarmaceuticaBD1.Application.DTOs.ProductosDTOs
{
    public class InventarioProductoDTO
    {
        public string? CodigoBarra { get; set; }
        public string? Nombre { get; set; }
        public decimal Precio { get; set; }
        public string? UnidadDeMedida { get; set; }
        public string? Clasificacion { get; set; }
        public string? NombreSucursal { get; set; }
        public int StockActual { get; set; }
        public int StockMinimo { get; set; }
    }
}
