
using AutoMapper;
using Domain.Models;
using Farmaceutica.Application.AutoMapper;
using Farmaceutica.Application.Interfaces;
using Farmaceutica.Application.Services;
using Farmaceutica.Infrastructure.Repositories;
using Microsoft.EntityFrameworkCore;

namespace Farmaceutica
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Add services to the container.

            builder.Services.AddControllers();
            // Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();
            //CONTEXT
            builder.Services.AddDbContext<FarmaceuticaContext>(options => options.UseSqlServer(
                builder.Configuration.GetConnectionString("DefaultConnection")));
            //AUTOMAPPER
            builder.Services.AddAutoMapper(typeof(AutoMapping));

            //PROVEEDORES
            builder.Services.AddScoped<IProveedorRepository, ProveedorRepository>();
            builder.Services.AddScoped<ProveedorServices>();

            //SUCURSALES
            builder.Services.AddScoped<ISucursalRepository, SucursalRepository>();
            builder.Services.AddScoped<SucursalServices>();

            //COMPRAS
            builder.Services.AddScoped<ICompraRepository, CompraRepository>();
            builder.Services.AddScoped<CompraServices>();

            var app = builder.Build();

            // Configure the HTTP request pipeline.
            if (app.Environment.IsDevelopment())
            {
                app.UseSwagger();
                app.UseSwaggerUI();
            }

            app.UseHttpsRedirection();

            app.UseAuthorization();


            app.MapControllers();

            app.Run();
        }
    }
}
