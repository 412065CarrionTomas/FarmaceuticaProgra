using AutoMapper;
using Domain.Models;
using Farmaceutica.Application.Interfaces;
using FarmaceuticaBD1.Application.DTOs.ProductosDTOs;
using FarmaceuticaBD1.Application.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace FarmaceuticaBD1.Application.Services
{
    public class ProductoServices
    {
        private readonly IProductoRepository _ProductoRepository;
        private readonly IMapper _Mapper;
        public ProductoServices(IProductoRepository productoRepository, IMapper mapper)
        {
            _ProductoRepository = productoRepository;
            _Mapper = mapper;
        }
        public async Task<List<InventarioProductoDTO>?> GetAllByFilters(string? nombre = null
                                                                , string? codigoBarra = null
                                                                , string? sucursal = null
                                                                , string? orden = null)
        {
            Expression<Func<InventariosProductos, bool>> condicion = x =>
                (string.IsNullOrWhiteSpace(nombre) || x.Producto.NombreProducto.Contains(nombre)) &&
                (string.IsNullOrWhiteSpace(codigoBarra) || x.Producto.CodigoBarraProductoId == codigoBarra) &&
                (string.IsNullOrEmpty(sucursal) || x.Sucursal.Descripcion.Contains(sucursal)) &&
                x.Activo == true &&
                x.Producto.Activo == true;

            var productosDom = await _ProductoRepository.GetAllByFiltersAsync(condicion) ?? new List<InventariosProductos>();
            var productosDto = _Mapper.Map<List<InventarioProductoDTO>>(productosDom);

            var ord = (string.IsNullOrWhiteSpace(orden) ? string.Empty : orden).Trim().ToLowerInvariant();
            IEnumerable<InventarioProductoDTO> query = productosDto;

            if (ord is "asc" or "a")
                query = query.OrderBy(x => x.Precio);
            else if (ord is "desc" or "d")
                query = query.OrderByDescending(x => x.Precio);

            return query.ToList();
        }

        public async Task<LoteProductoDto?> GetLoteProducto(int id)
        {
            Expression<Func<LotesProductos, bool>> condicion = x =>
            x.Producto.ProductoId.Equals(id);
            LotesProductos? loteProducto = await _ProductoRepository.GetLoteProductoAsync(condicion);
            return _Mapper.Map<LoteProductoDto>(loteProducto) ?? null;
        }
    }
}
