using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Metadata.Ecma335;
using System.Text;
using System.Threading.Tasks;

namespace FarmaceuticaBD1.Application.DTOs.MedicamentosDTOs
{
    public class InventarioMedicamentoDTO
    {
        public string? CodigoBarra { get; set; }
        public string? Nombre { get; set; }
        public decimal Precio { get; set; }
        public string? UnidadDeMedida { get; set; }
        public string? Restricciones { get; set; }
        public string? Clasificacion { get; set; }
        public string? NombreSucursal { get; set; }
        public int StockActual { get; set; }
        public int StockMinimo { get; set; }
    }
}
