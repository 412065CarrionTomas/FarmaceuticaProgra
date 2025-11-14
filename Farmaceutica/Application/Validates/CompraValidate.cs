using Domain.Models;
using Farmaceutica.Application.DTOs.CompraDTOs;

namespace Farmaceutica.Application.Validates
{
    public static class CompraValidate
    {
        public static void Validate(Compras compra)
        {
            if (compra is null)
                throw new ArgumentNullException(nameof(compra), "El objeto compra no puede ser nulo.");

            // Campos principales
            if (compra.FechaCompra is null)
                throw new ArgumentNullException(nameof(compra.FechaCompra), "La fecha de compra es requerida.");
            if (compra.EmpleadoId is null || compra.EmpleadoId <= 0)
                throw new ArgumentException("EmpleadoId debe ser mayor a 0.", nameof(compra.EmpleadoId));
            if (compra.ProveedorId is null || compra.ProveedorId <= 0)
                throw new ArgumentException("ProveedorId debe ser mayor a 0.", nameof(compra.ProveedorId));
            if (compra.RepartidorId is null || compra.RepartidorId <= 0)
                throw new ArgumentException("RepartidorId debe ser mayor a 0.", nameof(compra.RepartidorId));
            if (compra.SucursalId is null || compra.SucursalId <= 0)
                throw new ArgumentException("SucursalId debe ser mayor a 0.", nameof(compra.SucursalId));
            if (compra.Activo is null)
                throw new ArgumentNullException(nameof(compra.Activo), "El campo Activo debe especificarse (true/false).");

            // Detalles
            if (compra.DetallesCompras is null || compra.DetallesCompras.Count == 0)
                throw new ArgumentException("La compra debe contener al menos un detalle.", nameof(compra.DetallesCompras));

            foreach (var detalle in compra.DetallesCompras)
            {
                if (detalle is null)
                    throw new ArgumentException("Un detalle no puede ser nulo.", nameof(compra.DetallesCompras));

                if (detalle.Cantidad <= 0)
                    throw new ArgumentException("La cantidad del detalle debe ser mayor a 0.", nameof(detalle.Cantidad));

                // Al menos uno de los lotes debe existir
                if ((detalle.LoteProductoId is null || detalle.LoteProductoId <= 0) &&
                    (detalle.LoteMedicamentoId is null || detalle.LoteMedicamentoId <= 0))
                    throw new ArgumentException("El detalle debe tener LoteProductoId o LoteMedicamentoId válido.", nameof(detalle));

                if (detalle.LoteProductoId is not null && detalle.LoteProductoId <= 0)
                    throw new ArgumentException("LoteProductoId debe ser mayor a 0 si se informa.", nameof(detalle.LoteProductoId));

                if (detalle.LoteMedicamentoId is not null && detalle.LoteMedicamentoId <= 0)
                    throw new ArgumentException("LoteMedicamentoId debe ser mayor a 0 si se informa.", nameof(detalle.LoteMedicamentoId));

                if (detalle.CodigoBarraProductoId is not null && string.IsNullOrWhiteSpace(detalle.CodigoBarraProductoId))
                    throw new ArgumentException("CodigoBarraProductoId no puede ser vacío si se informa.", nameof(detalle.CodigoBarraProductoId));

                if (detalle.CodigoBarraMedicamentoId is not null && string.IsNullOrWhiteSpace(detalle.CodigoBarraMedicamentoId))
                    throw new ArgumentException("CodigoBarraMedicamentoId no puede ser vacío si se informa.", nameof(detalle.CodigoBarraMedicamentoId));
            }
        }
    }
}
