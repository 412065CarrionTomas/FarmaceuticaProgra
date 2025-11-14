using Domain.Models;
using FarmaceuticaBD1.Application.Interfaces;
using Microsoft.VisualBasic;
using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Diagnostics.Tracing;
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

        public async Task<List<sp_ganancias_mensualesResult>> GetGananciasMensualesAsync(int? anio)
        {
            if(anio == null)
            {
                anio = DateAndTime.Now.Year;
            }
            return await _FacturaRepository.GetGananciasMensualesAsync(anio);
        }

        public async Task<List<sp_VentasPorSucursalResult>> GetVentasPorSucursalAsync(int? anio)
            => (anio == null) ? await _FacturaRepository.GetVentasPorSucursalAsync(DateAndTime.Now.Year) :
                                await _FacturaRepository.GetVentasPorSucursalAsync(anio);

        public async Task<List<sp_MPUsadosResult>> GetMPUsadoAsync(int? anio)
            => (anio == null) ? await _FacturaRepository.GetMPUsadosAsync(DateAndTime.Now.Year) :
                                await _FacturaRepository.GetMPUsadosAsync(anio);

        public async Task<List<VwProductoTop>> GetProductoTop() => await _FacturaRepository.GetProductoTopAsync();
        public async Task<List<VwMedicamentoTop>> GetMedicamentoTop() => await _FacturaRepository.GetMedicamentoTopAsync();
    }
}
