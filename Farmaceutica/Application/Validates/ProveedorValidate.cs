using Farmaceutica.Application.DTOs;

namespace Farmaceutica.Application.Validates
{
    public static class ProveedorValidate
    {
        public static void Validate(ProveedoresDTOs proveedoresDTOs)
        {
            if (string.IsNullOrEmpty(proveedoresDTOs.EmailProveedor))
                throw new ArgumentNullException("No puede ingresar email vacio.", nameof(proveedoresDTOs.EmailProveedor));
            if (string.IsNullOrEmpty(proveedoresDTOs.DireccionProveedor))
                throw new ArgumentNullException("No puede ingresar direccion vacia.", nameof(proveedoresDTOs.DireccionProveedor));
            if (string.IsNullOrEmpty(proveedoresDTOs.RazonSocial))
                throw new ArgumentNullException("No puede ingresar Razon Social vacio.", nameof(proveedoresDTOs.RazonSocial));
            if (string.IsNullOrEmpty(proveedoresDTOs.Cuit))
                throw new ArgumentNullException("No puede ingresar Cuit vacio.", nameof(proveedoresDTOs.Cuit));
            if (string.IsNullOrEmpty(proveedoresDTOs.TelefonoProveedor))
                throw new ArgumentNullException("No puede ingresar teléfono vacío.", nameof(proveedoresDTOs.TelefonoProveedor));
        }
    }
}