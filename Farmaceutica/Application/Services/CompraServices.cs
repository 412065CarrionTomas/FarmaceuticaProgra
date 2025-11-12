using AutoMapper;
using Domain.Models;
using Farmaceutica.Application.DTOs.CompraDTOs;
using Farmaceutica.Application.Interfaces;
using Farmaceutica.Application.Validates;
using Microsoft.AspNetCore.Razor.TagHelpers;
using System.Linq.Expressions;

namespace Farmaceutica.Application.Services
{
    public class CompraServices
    {
        private readonly ICompraRepository _CompraRepository;
        private readonly IMapper _Mapper;

        public CompraServices(ICompraRepository compraRepository, IMapper mapper)
        {
            _CompraRepository = compraRepository;
            _Mapper = mapper;
        }

        public async Task<List<CompraDto>?> GetComprasByFilters(DateTime? fechaInicio
                                                        , DateTime? fechaFin, string? sucursal
                                                        , string? proveedor)
        {
            fechaInicio ??= DateTime.MinValue;
            fechaFin ??= DateTime.Now;

            Expression<Func<Compras, bool>> condicion = x =>
            x.FechaCompra.Value.Date >= fechaInicio &&
            x.FechaCompra.Value.Date <= fechaFin &&
            (string.IsNullOrEmpty(sucursal) || x.Sucursal.Descripcion.Contains(sucursal)) &&
            (string.IsNullOrEmpty(proveedor) || x.Proveedor.RazonSocial.Contains(proveedor)) &&
            x.Activo == 1; 


            List<Compras>? compraDom = await _CompraRepository.GetComprasAsync(condicion);
            if (compraDom == null) { return null; }
            List<CompraDto> compraDto = _Mapper.Map<List<CompraDto>>(compraDom);
            return compraDto;
        }

        public async Task<bool> DeleteCompraAsync(int id)
        {
            return await _CompraRepository.DeleteCompraAsync(id);
        }


        public async Task<bool> InsertCompraAsync(CompraDto compras)
        {
            CompraValidate.Validate(compras);
            if(compras.DetallesCompraDtoLts == null) 
                new ArgumentNullException(); 
            var listDetails = _Mapper.Map<List<DetallesCompras>>(compras.DetallesCompraDtoLts);
            
            foreach(DetallesCompras d in listDetails)
            {
                UpsertDetalleCompraValidate.ReValidateDetail(d);
                UpsertDetalleCompraValidate.ValidateLogic(d);
            }
            
            return await _CompraRepository.InsertCompraAsync(compras, listDetails);
        }

        public async Task<bool> UpdateComprasAsync(int id, CompraDto compra)
        {
            CompraValidate.Validate(compra);
            if (compra.DetallesCompraDtoLts == null)
                new ArgumentNullException();
            var detailLts = _Mapper.Map<List<DetallesCompras>>(compra.DetallesCompraDtoLts);
            foreach (DetallesCompras d in detailLts)
            {
                UpsertDetalleCompraValidate.ReValidateDetail(d);
                UpsertDetalleCompraValidate.ValidateLogic(d);
            }
            return await _CompraRepository.UpdateCompraAsync(id, compra, detailLts);
        }

    }
}
