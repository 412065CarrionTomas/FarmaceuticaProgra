namespace FarmaceuticaBD1.Application.DTOs.MedicamentosDTOs
{
    public class LoteMedicamentoDTO
    {
        public int Id { get; set; }
        public string? CodigoBarra { get; set; }
        public string? Nombre { get; set; }
        public int LoteID { get; set; }
        public DateTime FechaVencimiento { get; set; }
        public DateTime FechaElaboracion { get; set; }
        public int Cantidad { get; set; }
    }
}
