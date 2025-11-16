using AutoMapper;
using Domain.Models;
using Farmaceutica.Application.DTOs.CompraDTOs;
using Farmaceutica.Application.Interfaces;
using Farmaceutica.Application.Validates;
using System.Linq.Expressions;

namespace Farmaceutica.Application.Services
{
    public class DetalleCompraService
    {
        private readonly IDetalleCompraRepository _DetalleCompraRepository;
        private readonly IMapper _Mapper;

        public DetalleCompraService(IDetalleCompraRepository detalleCompraRepository, IMapper mapper)
        {
            _DetalleCompraRepository = detalleCompraRepository;
            _Mapper = mapper;
        }

        public async Task<bool> InsertDetalleCompraAsync(int compraId, DetalleCompraDto detalleDto)
        {
            var detalle = _Mapper.Map<DetallesCompras>(detalleDto);
            
            UpsertDetalleCompraValidate.ReValidateDetail(detalle);
            string entidad = UpsertDetalleCompraValidate.ValidateLogic(detalle);
            if(entidad == null)
            {
                return false;
            }
            return await _DetalleCompraRepository.InsertCompraAsync(compraId, detalle, entidad);
        }

        public async Task<bool> UpdateDetalleCompraAsync(int id, DetalleCompraDto detalleDto)
        {
            var detalle = _Mapper.Map<DetallesCompras>(detalleDto);
            
            UpsertDetalleCompraValidate.ReValidateDetail(detalle);
            string entidad = UpsertDetalleCompraValidate.ValidateLogic(detalle);
            if (entidad == null)
            {
                return false;
            }
            detalle.DetalleCompraId = id;

            return await _DetalleCompraRepository.UpdateCompraAsync(id, detalle, entidad);
        }

        public async Task<bool> DeleteDetalleCompraAsync(int id)
        {
            return await _DetalleCompraRepository.DeleteCompraAsync(id);
        }

        public async Task<List<DetallesCompras>?> GetAllDetallesCompraAsync(int idCompra)
        {
            Expression<Func<DetallesCompras, bool>> condicion = x => x.CompraId == idCompra && x.Activo == true;
            return await _DetalleCompraRepository.GetAllDetallesComprasAsync(condicion);
        }
    }
}
