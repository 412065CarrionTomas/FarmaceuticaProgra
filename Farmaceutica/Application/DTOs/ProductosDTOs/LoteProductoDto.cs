using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FarmaceuticaBD1.Application.DTOs.ProductosDTOs
{
    public class LoteProductoDto
    {
        public int Id { get; set; }
        public string? CodigoBarra { get; set; }
        public string? Nombre { get; set; }
        public int LoteID { get; set; }
        public DateOnly FechaVencimiento { get; set; }
        public DateOnly FechaElaboracion { get; set; }
        public int Cantidad { get; set; }
    }
}
