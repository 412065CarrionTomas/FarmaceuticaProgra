using Farmaceutica.Application.DTOs.CompraDTOs;
using Microsoft.AspNetCore.Components.Web;

namespace Farmaceutica.Application.Validates
{
    public static class CompraValidate
    {
        public static void  Validate(CompraDto compraDto)
        {
            if (string.IsNullOrEmpty(compraDto.RepartidorGmail))
                throw new ArgumentNullException("No puede ingresar Gmail de Repartidor vacio.", nameof(compraDto.RepartidorGmail));
            if (string.IsNullOrEmpty(compraDto.Sucursal))
                throw new ArgumentNullException("No puede ingresar nombre de Sucursal vacio.", nameof(compraDto.Sucursal));
            if (string.IsNullOrEmpty(compraDto.Proveedor))
                throw new ArgumentNullException("No puede ingresar nombre de Proveedor vacio.", nameof(compraDto.Proveedor));
            if (compraDto.EmpleadoDni == null ||
                compraDto.EmpleadoDni.Count(c => char.IsDigit(c) && c != '0') < 4)
                throw new ArgumentException("El DNI debe contener al menos 4 dígitos distintos de 0.", nameof(compraDto.EmpleadoDni));
            if (compraDto.Activo != 0 || compraDto.Activo != 1)
                throw new ArgumentOutOfRangeException("El campo activo debe ser 1 o 0.", nameof(compraDto.Activo));
            foreach (DetalleCompraDto detalleCompraDto in compraDto.DetallesCompraDtoLts)
            {
                if (detalleCompraDto.LoteProductoId <= 0)
                    throw new ArgumentOutOfRangeException("El lote del Producto debe ser mayor a 0.", nameof(detalleCompraDto.LoteProductoId));
                if (detalleCompraDto.LoteMedicamentoId <= 0)
                    throw new ArgumentOutOfRangeException("El lote del Medicamento debe ser mayor a 0.", nameof(detalleCompraDto.LoteMedicamentoId));
                if (detalleCompraDto.Cantidad <= 0)
                    throw new ArgumentOutOfRangeException("La cantidad debe ser mayor a 0.", nameof(detalleCompraDto.Cantidad));
                if (compraDto.Activo != 0 || compraDto.Activo != 1)
                    throw new ArgumentOutOfRangeException("El campo activo del detalle debe ser 1 o 0.", nameof(compraDto.Activo));
                if (string.IsNullOrEmpty(detalleCompraDto.CodigoBarraProductoId))
                    throw new ArgumentNullException("El codigo de barra del Producto no puede estar vacio.", nameof(detalleCompraDto.CodigoBarraProductoId));
                if (string.IsNullOrEmpty(detalleCompraDto.CodigoBarraMedicamentoId))
                    throw new ArgumentNullException("El codigo de barra del Medicamento no puede estar vacio.", nameof(detalleCompraDto.CodigoBarraProductoId));
            }
        }
    }
}
