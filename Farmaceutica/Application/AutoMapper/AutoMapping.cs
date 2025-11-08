using AutoMapper;
using Domain.Models;
using Farmaceutica.Application.DTOs;
using Farmaceutica.Application.DTOs.CompraDTOs;

namespace Farmaceutica.Application.AutoMapper
{
    public class AutoMapping : Profile
    {
        public AutoMapping()
        {
            CreateMap<DetallesCompras, DetalleCompraDto>()
                .ReverseMap();
            CreateMap<Compras, CompraDto>()
                .ForMember(dto => dto.EmpleadoDni, acc =>
                    acc.MapFrom(dom => dom.Empleado.DocumentoEmpleado))
                .ForMember(dto => dto.Sucursal, acc =>
                    acc.MapFrom(dom => dom.Sucursal.Descripcion))
                .ForMember(dto => dto.RepartidorGmail, acc =>
                    acc.MapFrom(dom => dom.Repartidor.EmailRepartidor))
                .ForMember(dto => dto.Proveedor, acc =>
                    acc.MapFrom(dom => dom.Proveedor.RazonSocial))
                .ForMember(dto => dto.DetallesCompraDtoLts, acc =>
                    acc.MapFrom(dom => dom.DetallesCompras))
                .ForMember(dto => dto.Activo, acc =>
                    acc.MapFrom(dom => dom.Activo));

            //PROVEEDORES
            CreateMap<ProveedoresDTOs, Proveedores>();

        }
    }
}