using AutoMapper;
using Domain.Models;
using Farmaceutica.Application.DTOs;
using Farmaceutica.Application.Interfaces;
using Farmaceutica.Application.Validates;
using Microsoft.EntityFrameworkCore.Update.Internal;
using System.Linq.Expressions;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace Farmaceutica.Application.Services
{
    public class ProveedorServices
    {
        private readonly IProveedorRepository _ProveedorRepository;
        private readonly IMapper _Mapper;

        public ProveedorServices(IProveedorRepository proveedorRepository, IMapper mapper)
        {
            _ProveedorRepository = proveedorRepository;
            _Mapper = mapper;
        }

        public async Task<List<ProveedoresDTOs>?> GetAllProveedoresAsync()
        {
            List<Proveedores>? proveedoresDomLts = await _ProveedorRepository.GetProveedoresFilterAsync(x => x.Activo.Equals(1));
            if(proveedoresDomLts == null) { return null; }
            return _Mapper.Map<List<ProveedoresDTOs>>(proveedoresDomLts);
        }

        public async Task<List<string>> GetProveedoresByNameAsync(string nombre)
        {
            Expression<Func<Proveedores, bool>> condicon = x =>
                (string.IsNullOrEmpty(nombre) && x.Activo == 1 ||
                x.RazonSocial.Contains(nombre) && x.Activo == 1);
            List<Proveedores> proveedoresLts = await _ProveedorRepository.GetProveedoresFilterAsync(condicon);
            List<string> proveedoresString = proveedoresLts.Select(x => x.RazonSocial).ToList();
            return proveedoresString;
        }

        public async Task<bool> InsertProveedorAsync(ProveedoresDTOs proveedoresDTOs)
        {
            ProveedorValidate.Validate(proveedoresDTOs);

            Proveedores proveedorDom = _Mapper.Map<Proveedores>(proveedoresDTOs);
            return await _ProveedorRepository.InsertProveedorAsync(proveedorDom);
        }

        public async Task<bool> UpdateProveedorAsync(string cuit, ProveedoresDTOs proveedoresDTOs)
        {
            if (string.IsNullOrEmpty(cuit))
                throw new ArgumentNullException("No puede ingresar Cuit vacio.");

            ProveedorValidate.Validate(proveedoresDTOs);

            Proveedores proveedorDom = _Mapper.Map<Proveedores>(proveedoresDTOs);
            return await _ProveedorRepository.UpdateProveedoresAsync(cuit, proveedorDom);
        }

        public async Task<bool> DeleteProveedorAsync(string cuit)
        {
            if (string.IsNullOrEmpty(cuit))
                throw new ArgumentNullException("No puede ingresar Cuit vacio.");
            return await _ProveedorRepository.DeleteProveedorAsync(cuit);
        }

    }
}
