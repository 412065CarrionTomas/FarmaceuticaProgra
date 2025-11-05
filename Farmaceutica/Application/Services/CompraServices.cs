using AutoMapper;
using Domain.Models;
using Farmaceutica.Application.DTOs.CompraDTOs;
using Farmaceutica.Application.Interfaces;
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

        public async Task<bool> DeleteCompraAsync(int id)
        {
            return await _CompraRepository.DeleteCompraAsync(id);
        }

        public async Task<List<CompraDto>?> GetComprasAsync()
        {
            Expression<Func<Compras, bool>> condicion = x => x.Activo == 1 || x.Activo == null;
            var compraDom = await _CompraRepository.GetComprasAsync(condicion);
            return _Mapper.Map<List<CompraDto>>(compraDom) ?? new List<CompraDto>();
        }

        public async Task<bool> InsertCompraAsync(CompraDto compras)
        {
            if(compras.DetallesCompraDtoLts == null) 
                new ArgumentNullException(); 
            var listDetails = _Mapper.Map<List<DetallesCompras>>(compras.DetallesCompraDtoLts);
            return await _CompraRepository.InsertCompraAsync(compras, listDetails);
        }

        public async Task<bool> UpdateComprasAsync(int id, CompraDto compra)
        {
            if (compra.DetallesCompraDtoLts == null)
                new ArgumentNullException();
            var detailLts = _Mapper.Map<List<DetallesCompras>>(compra.DetallesCompraDtoLts);
            return await _CompraRepository.UpdateCompraAsync(id, compra, detailLts);
        }

    }
}
