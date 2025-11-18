using AutoMapper;
using Domain.Models;
using Farmaceutica.Application.DTOs.CompraDTOs;
using Farmaceutica.Application.Interfaces;
using Farmaceutica.Application.Validates;
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

        public async Task<List<GetCompraDto>?> GetComprasByFilters(DateTime? fechaInicio
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
            x.Activo == true;


            List<Compras>? compraDom = await _CompraRepository.GetComprasAsync(condicion);
            if (compraDom == null) { return null; }
            List<GetCompraDto> compraDto = _Mapper.Map<List<GetCompraDto>>(compraDom);
            return compraDto;
        }

        public async Task<bool> DeleteCompraAsync(int id)
        {
            return await _CompraRepository.DeleteCompraAsync(id);
        }


        public async Task<bool> InsertCompraAsync(CompraDto compras)
        {
            if (compras.DetallesCompraDtoLts == null || !compras.DetallesCompraDtoLts.Any())
                throw new Exception("Debe agregar al menos un detalle.");

            var compraDom = _Mapper.Map<Compras>(compras);

            // Aquí debes validar que compraDom.DetallesCompras también tenga elementos
            if (compraDom.DetallesCompras == null || !compraDom.DetallesCompras.Any())
                throw new Exception("La compra debe contener al menos un detalle. (Parameter 'DetallesCompras')");

            CompraValidate.Validate(compraDom);

            foreach (DetallesCompras d in compraDom.DetallesCompras)
            {
                UpsertDetalleCompraValidate.ReValidateDetail(d);
                UpsertDetalleCompraValidate.ValidateLogic(d);
            }
            return await _CompraRepository.InsertCompraAsync(compraDom);
        }

        public async Task<bool> UpdateComprasAsync(int id, CompraDto compra)
        {
            if (compra.DetallesCompraDtoLts == null)
                new ArgumentNullException();

            var compraDom = _Mapper.Map<Compras>(compra);

            CompraValidate.Validate(compraDom);

            foreach(DetallesCompras d in compraDom.DetallesCompras)
            {
                UpsertDetalleCompraValidate.ReValidateDetail(d);
                UpsertDetalleCompraValidate.ValidateLogic(d);
            }

            return await _CompraRepository.UpdateCompraAsync(id, compraDom);
        }

    }
}
