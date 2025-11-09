using AutoMapper;
using Domain.Models;
using FarmaceuticaBD1.Application.DTOs.MedicamentosDTOs;
using FarmaceuticaBD1.Application.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace FarmaceuticaBD1.Application.Services
{
    public class MedicamentoServices
    {
        private readonly IMedicamentoRepository _MedicamentoRepository;
        private readonly IMapper _Mapper;
        public MedicamentoServices(IMedicamentoRepository medicamentoRepository, IMapper mapper)
        {
            _MedicamentoRepository = medicamentoRepository;
            _Mapper = mapper;
        }

        public async Task<LoteMedicamentoDTO?> GetLoteMedicamentoAsync(int id)
        {
            Expression<Func<LotesMedicamentos, bool>> condicion = x =>
            x.Medicamento.MedicamentoId.Equals(id);
            LotesMedicamentos? loteMedicamento = await _MedicamentoRepository.GetLoteMedicamentoAsync(condicion);
            return _Mapper.Map<LoteMedicamentoDTO>(loteMedicamento) ?? null;
        }

        public async Task<List<InventarioMedicamentoDTO>?> GetAllAsync(string? nombre = null
                                                                , string? codigoBarra = null
                                                                , string? sucursal = null
                                                                , string? orden = null)
        {
            Expression<Func<InventariosMedicamentos, bool>> condicion = x =>
                (string.IsNullOrWhiteSpace(nombre) || x.Medicamento.NombreMedicamento.Contains(nombre)) &&
                (string.IsNullOrWhiteSpace(codigoBarra) || x.Medicamento.CodigoBarraMedicamentoId == codigoBarra) &&
                (string.IsNullOrEmpty(sucursal) || x.Sucursal.Descripcion.Contains(sucursal));

            var medicamentosDom = await _MedicamentoRepository.GetAllByFiltersAsync(condicion) ?? new List<InventariosMedicamentos>();
            var medicamentosDto = _Mapper.Map<List<InventarioMedicamentoDTO>>(medicamentosDom);

            var ord = (string.IsNullOrWhiteSpace(orden) ? string.Empty : orden).Trim().ToLowerInvariant();
            IEnumerable<InventarioMedicamentoDTO> query = medicamentosDto;

            if (ord is "asc" or "a")
                query = query.OrderBy(x => x.Precio);
            else if (ord is "desc" or "d")
                query = query.OrderByDescending(x => x.Precio);

            return query.ToList();
        }
    }
}
