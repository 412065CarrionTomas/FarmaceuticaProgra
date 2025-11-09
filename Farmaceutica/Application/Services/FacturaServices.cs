using Domain.Models;
using FarmaceuticaBD1.Application.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace FarmaceuticaBD1.Application.Services
{
    public class FacturaServices
    {
        private readonly IFacturaRepository _FacturaRepository;

        public FacturaServices(IFacturaRepository facturaRepository)
        {
            _FacturaRepository = facturaRepository;
        }
        public async Task<decimal?> GetGanancias(int? dia = null, int? mes = null, int? anio = null)
        {
            Expression<Func<Facturas, bool>> condicion = x =>
                (dia == null || x.FechaFacturacion.Value.Day.Equals(dia)) &&
                (mes == null || x.FechaFacturacion.Value.Month.Equals(mes)) &&
                (anio == null || x.FechaFacturacion.Value.Year.Equals(anio));

            var facturas = await _FacturaRepository.GetGananciasFacturasAsync(condicion);

            decimal? result = facturas
                .SelectMany(f => f.DetallesFacturas)
                .Sum(x => x.Precio);

            return result;
        }
        public async Task<VwProductoTop> GetProductoTop() => await _FacturaRepository.GetProductoTopAsync();
        public async Task<VwMedicamentoTop> GetMedicamentoTop() => await _FacturaRepository.GetMedicamentoTopAsync();
    }
}
