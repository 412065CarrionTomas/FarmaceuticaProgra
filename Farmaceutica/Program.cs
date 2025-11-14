using AutoMapper;
using Domain.Models;
using Farmaceutica.Application.AutoMapper;
using Farmaceutica.Application.Interfaces;
using Farmaceutica.Application.Services;
using Farmaceutica.Infrastructure.Repositories;
using FarmaceuticaBD1.Application.Interfaces;
using FarmaceuticaBD1.Application.Services;
using FarmaceuticaBD1.Infrastructure.Repositories;
using Microsoft.EntityFrameworkCore;
using System.Text.Json.Serialization; // Configuración System.Text.Json

namespace Farmaceutica
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            builder.Services
                .AddControllers()
                .AddJsonOptions(opts =>
                {
                    opts.JsonSerializerOptions.DefaultIgnoreCondition = JsonIgnoreCondition.WhenWritingNull;
                    opts.JsonSerializerOptions.ReferenceHandler = ReferenceHandler.IgnoreCycles;
                });

            // Swagger/OpenAPI
            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();

            // CONTEXT
            builder.Services.AddDbContext<FarmaceuticaContext>(options =>
                options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

            // AUTOMAPPER
            builder.Services.AddAutoMapper(typeof(AutoMapping));

            // CORS
            builder.Services.AddCors(options =>
            {
                options.AddPolicy("DefaultCors", policy =>
                {
                    policy
                        .AllowAnyOrigin()
                        .AllowAnyMethod()
                        .AllowAnyHeader();
                });
            });

            // PROVEEDORES
            builder.Services.AddScoped<IProveedorRepository, ProveedorRepository>();
            builder.Services.AddScoped<ProveedorServices>();

            // SUCURSALES
            builder.Services.AddScoped<ISucursalRepository, SucursalRepository>();
            builder.Services.AddScoped<SucursalServices>();

            // COMPRAS
            builder.Services.AddScoped<ICompraRepository, CompraRepository>();
            builder.Services.AddScoped<CompraServices>();

            // FACTURAS
            builder.Services.AddScoped<IFacturaRepository, FacturaRepository>();
            builder.Services.AddScoped<FacturaServices>();

            // MEDICAMENTOS
            builder.Services.AddScoped<IMedicamentoRepository, MedicamentoRepository>();
            builder.Services.AddScoped<MedicamentoServices>();

            // PRODUCTOS
            builder.Services.AddScoped<IProductoRepository, ProductoRepository>();
            builder.Services.AddScoped<ProductoServices>();

            // DETALLE DE COMPRA
            builder.Services.AddScoped<IDetalleCompraRepository, DetalleCompraRepository>();
            builder.Services.AddScoped<DetalleCompraService>();

            var app = builder.Build();

            if (app.Environment.IsDevelopment())
            {
                app.UseSwagger();
                app.UseSwaggerUI();
            }

            app.UseHttpsRedirection();

            app.UseCors("DefaultCors");

            app.UseAuthorization();

            app.MapControllers();

            app.Run();
        }
    }
}
