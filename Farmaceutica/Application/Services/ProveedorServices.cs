using AutoMapper;
using Domain.Models;
using Farmaceutica.Application.DTOs;
using Farmaceutica.Application.Interfaces;
using Microsoft.EntityFrameworkCore.Update.Internal;
using System.Linq.Expressions;

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

        public async Task<List<string>> GetProveedoresAsync(string nombre)
        {
            return await _ProveedorRepository.GetProveedoresAsync(nombre);
        }

        public async Task<bool> InsertProveedorAsync(ProveedoresDTOs proveedoresDTOs)
        {
            Proveedores proveedorDom = _Mapper.Map<Proveedores>(proveedoresDTOs);
            return await _ProveedorRepository.InsertProveedorAsync(proveedorDom);
        }

        public async Task<bool> UpdateProveedorAsync(string cuit, ProveedoresDTOs proveedoresDTOs)
        {
            Proveedores proveedorDom = _Mapper.Map<Proveedores>(proveedoresDTOs);
            return await _ProveedorRepository.UpdateProveedoresAsync(cuit, proveedorDom);
        }

        public async Task<bool> DeleteProveedorAsync(string cuit)
        {
            return await _ProveedorRepository.DeleteProveedorAsync(cuit);
        }



        // public async Task<List<ProveedoresDTOs>> GetProveedoresFilterAsync()
    }
}
