using AutoMapper;
using Domain.Models;
using Farmaceutica.Application.DTOs;
using Farmaceutica.Application.DTOs.CompraDTOs;
using FarmaceuticaBD1.Application.DTOs.MedicamentosDTOs;
using FarmaceuticaBD1.Application.DTOs.ProductosDTOs;

namespace Farmaceutica.Application.AutoMapper
{
    public class AutoMapping : Profile
    {
        public AutoMapping()
        {
            CreateMap<DetallesCompras, DetalleCompraDto>()
                .ReverseMap();
            CreateMap<Compras, CompraDto>();

            //GET COMPRAS CON DETALLES
            CreateMap<DetallesCompras, GetDetalleCompraDto>()
                .ForMember(dto => dto.LoteProductoId, acc =>
                    acc.MapFrom(dom => dom.LoteProducto.LoteProductoId))
                .ForMember(dto => dto.LoteMedicamentoId, acc =>
                    acc.MapFrom(dom => dom.LoteMedicamento.LoteMedicamentoId))
                .ForMember(dto => dto.CodigoBarraProductoId, acc =>
                    acc.MapFrom(dom => dom.CodigoBarraProductoId))
                .ForMember(dto => dto.CodigoBarraMedicamentoId, acc =>
                    acc.MapFrom(dom => dom.CodigoBarraMedicamentoId));

            CreateMap<Compras, GetCompraDto>()
                .ForMember(dto => dto.DetalleCompraDtos, acc =>
                    acc.MapFrom(dom => dom.DetallesCompras))
                .ForMember(dto => dto.FechaFactura, acc =>
                    acc.MapFrom(dom => dom.FechaCompra.Value.Date))
                .ForMember(dto => dto.Empleado, acc =>
                    acc.MapFrom(dom => dom.Empleado.NombreEmpleado))
                .ForMember(dto => dto.Sucursal, acc =>
                    acc.MapFrom(dom => dom.Sucursal.Descripcion))
                .ForMember(dto => dto.Proveedor, acc =>
                    acc.MapFrom(dom => dom.Proveedor.RazonSocial));

            //PROVEEDORES
            CreateMap<ProveedoresDTOs, Proveedores>()
                .ReverseMap();




            // GET MEDICAMENTO DTO
            CreateMap<InventariosMedicamentos, InventarioMedicamentoDTO>()
                .ForMember(dto => dto.CodigoBarra, acc => acc.MapFrom(src =>
                src.Medicamento.CodigoBarraMedicamentoId))

                .ForMember(dto => dto.Nombre, acc => acc.MapFrom(src =>
                    src.Medicamento.NombreMedicamento))

                .ForMember(dto => dto.Precio, acc => acc.MapFrom(src =>
                    src.Medicamento.PrecioMedicamento ?? 0m))

                .ForMember(dto => dto.UnidadDeMedida, acc =>
                    acc.MapFrom(src => src.Medicamento.UnidadMedida != null ?
                    src.Medicamento.UnidadMedida.Descripcion : string.Empty))

                .ForMember(dto => dto.Clasificacion, acc =>
                    acc.MapFrom(src => src.Medicamento.ClasificacionSuministro != null ?
                    src.Medicamento.ClasificacionSuministro.Descripcion : string.Empty))

                .ForMember(dto => dto.Restricciones, acc =>
                    acc.MapFrom(src => src.Medicamento.Restriccion != null ?
                    src.Medicamento.Restriccion.Descripcion : string.Empty))

                .ForMember(dto => dto.StockMinimo, acc =>
                acc.MapFrom(dom => dom.StockMinimo))

                .ForMember(dto => dto.StockActual, acc =>
                acc.MapFrom(dom => dom.StockActual))

                .ForMember(dto => dto.NombreSucursal, acc =>
                acc.MapFrom(dom => dom.Sucursal.Descripcion));


            //GET LOTE DE MEDICAMENTOS
            CreateMap<LotesMedicamentos, LoteMedicamentoDTO>()

                .ForMember(dto => dto.FechaVencimiento, acc =>
                    acc.MapFrom(dom => dom.FechaVencimiento))

                .ForMember(dto => dto.FechaElaboracion, acc =>
                    acc.MapFrom(dom => dom.FechaElaboracion))

                .ForMember(dto => dto.Cantidad, acc =>
                    acc.MapFrom(dom => dom.Cantidad))

                .ForMember(dto => dto.LoteID, acc =>
                    acc.MapFrom(dom => dom.LoteMedicamentoId))

                .ForMember(dto => dto.Id, acc =>
                    acc.MapFrom(dom => dom.MedicamentoId))

                .ForMember(dto => dto.CodigoBarra, acc =>
                    acc.MapFrom(dom => dom.Medicamento.CodigoBarraMedicamentoId))

                .ForMember(dto => dto.Nombre, acc =>
                    acc.MapFrom(dom => dom.Medicamento.NombreMedicamento));



            //GET PRODUCTOS DTO
            CreateMap<InventariosProductos, InventarioProductoDTO>()
                .ForMember(dto => dto.CodigoBarra, acc => acc.MapFrom(src =>
                    src.Producto.CodigoBarraProductoId))

                .ForMember(dto => dto.Nombre, acc => acc.MapFrom(src =>
                    src.Producto.NombreProducto))

                .ForMember(dto => dto.Precio, acc => acc.MapFrom(src =>
                    src.Producto.PrecioProducto ?? 0m))

                .ForMember(dto => dto.UnidadDeMedida, acc =>
                    acc.MapFrom(src => src.Producto.UnidadMedida != null ?
                    src.Producto.UnidadMedida.Descripcion : string.Empty))

                .ForMember(dto => dto.Clasificacion, acc =>
                    acc.MapFrom(src => src.Producto.ClasificacionSuministro != null ?
                    src.Producto.ClasificacionSuministro.Descripcion : string.Empty))

                .ForMember(dto => dto.StockMinimo, acc =>
                    acc.MapFrom(dom => dom.StockMinimo))

                .ForMember(dto => dto.StockActual, acc =>
                    acc.MapFrom(dom => dom.StockActual))

                .ForMember(dto => dto.NombreSucursal, acc =>
                    acc.MapFrom(dom => dom.Sucursal.Descripcion));


            //GET LOTE DE PRODUCTOS
            CreateMap<LotesProductos, LoteProductoDto>()
                .ForMember(dto => dto.LoteID, acc => acc.MapFrom(dom => dom.LoteProductoId))

                .ForMember(dto => dto.Id, acc => acc.MapFrom(dom => dom.ProductoId ?? 0))

                .ForMember(dto => dto.CodigoBarra, acc => acc.MapFrom(dom => dom.Producto.CodigoBarraProductoId))

                .ForMember(dto => dto.Nombre, acc => acc.MapFrom(dom => dom.Producto.NombreProducto))

                .ForMember(dto => dto.FechaVencimiento, acc => acc.MapFrom(dom =>
                    dom.FechaVencimiento.HasValue
                    ? DateOnly.FromDateTime(dom.FechaVencimiento.Value)
                    : default))

                .ForMember(dto => dto.FechaElaboracion, acc => acc.MapFrom(dom =>
                    dom.FechaElaboracion.HasValue
                    ? DateOnly.FromDateTime(dom.FechaElaboracion.Value)
                    : default))

                .ForMember(dto => dto.Cantidad, acc => acc.MapFrom(dom =>
                    dom.Cantidad.HasValue ? (int)dom.Cantidad.Value : 0));

        }
    }
}