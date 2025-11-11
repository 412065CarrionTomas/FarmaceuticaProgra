using Azure.Core.Pipeline;
using Domain.Models;
using Farmaceutica.Application.Interfaces;
using System.Runtime.CompilerServices;

namespace Farmaceutica.Application.Validates
{
    public static class UpsertDetalleCompraValidate
    {

        public static DetallesCompras ReValidateDetail(DetallesCompras detalle)
        {
            if (detalle is null) throw new ArgumentNullException(nameof(detalle));

            detalle.Activo ??= 1;

            detalle.CodigoBarraMedicamentoId = NullIfEmptyOrDefault(detalle.CodigoBarraMedicamentoId);
            detalle.CodigoBarraProductoId = NullIfEmptyOrDefault(detalle.CodigoBarraProductoId);
            if (detalle.LoteProductoId.GetValueOrDefault() == 0) detalle.LoteProductoId = null;
            if (detalle.LoteMedicamentoId.GetValueOrDefault() == 0) detalle.LoteMedicamentoId = null;

            detalle.DetalleCompraId = 0;

            return detalle;
        }

        public static string ValidateLogic(DetallesCompras detalle)
        {
            string entidad = string.Empty;
            if (detalle is null) throw new ArgumentNullException(nameof(detalle));

            var hasProductoBarcode = !string.IsNullOrWhiteSpace(detalle.CodigoBarraProductoId) && detalle.CodigoBarraProductoId != "string";
            var hasMedicamentoBarcode = !string.IsNullOrWhiteSpace(detalle.CodigoBarraMedicamentoId) && detalle.CodigoBarraMedicamentoId != "string";
            var hasProductoLote = detalle.LoteProductoId.HasValue && detalle.LoteProductoId.Value != 0;
            var hasMedicamentoLote = detalle.LoteMedicamentoId.HasValue && detalle.LoteMedicamentoId.Value != 0;

            var hasProducto = hasProductoBarcode || hasProductoLote;
            
            if (hasProducto)
                entidad = "p";

            var hasMedicamento = hasMedicamentoBarcode || hasMedicamentoLote;
            
            if (hasMedicamento)
                entidad = "m";

            if (hasProducto && hasMedicamento)
                throw new InvalidOperationException("No puede enviar datos de producto y de medicamento a la vez.");

             if (!hasProducto && !hasMedicamento)
                throw new InvalidOperationException("Debe enviar datos de producto o de medicamento.");
            return entidad;
        }

        private static string? NullIfEmptyOrDefault(string? value)
            => string.IsNullOrWhiteSpace(value) || value == "string" ? null : value;
    }
}
