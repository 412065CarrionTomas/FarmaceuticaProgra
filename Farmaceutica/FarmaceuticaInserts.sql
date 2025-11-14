-- 1) TIPOS_DOCUMENTOS (15)
INSERT INTO TIPOS_DOCUMENTOS (Descripcion) VALUES ('DNI');
INSERT INTO TIPOS_DOCUMENTOS (Descripcion) VALUES ('CUIL');
INSERT INTO TIPOS_DOCUMENTOS (Descripcion) VALUES ('LC');
INSERT INTO TIPOS_DOCUMENTOS (Descripcion) VALUES ('LE');
INSERT INTO TIPOS_DOCUMENTOS (Descripcion) VALUES ('Pasaporte');
INSERT INTO TIPOS_DOCUMENTOS (Descripcion) VALUES ('CI');
INSERT INTO TIPOS_DOCUMENTOS (Descripcion) VALUES ('Documento Extranjero');
INSERT INTO TIPOS_DOCUMENTOS (Descripcion) VALUES ('Tarjeta de Identidad');
INSERT INTO TIPOS_DOCUMENTOS (Descripcion) VALUES ('Certificado de Nacimiento');
INSERT INTO TIPOS_DOCUMENTOS (Descripcion) VALUES ('DNI Extranjero');
INSERT INTO TIPOS_DOCUMENTOS (Descripcion) VALUES ('Carnet de Conducir');
INSERT INTO TIPOS_DOCUMENTOS (Descripcion) VALUES ('Permiso de Residencia');
INSERT INTO TIPOS_DOCUMENTOS (Descripcion) VALUES ('Identidad Militar');
INSERT INTO TIPOS_DOCUMENTOS (Descripcion) VALUES ('Identidad Policial');
INSERT INTO TIPOS_DOCUMENTOS (Descripcion) VALUES ('Otro');

GO

-- 2) PAISES (15)
INSERT INTO PAISES (Descripciones) VALUES ('Argentina');
INSERT INTO PAISES (Descripciones) VALUES ('Uruguay');
INSERT INTO PAISES (Descripciones) VALUES ('Chile');
INSERT INTO PAISES (Descripciones) VALUES ('Brasil');
INSERT INTO PAISES (Descripciones) VALUES ('Paraguay');
INSERT INTO PAISES (Descripciones) VALUES ('Bolivia');
INSERT INTO PAISES (Descripciones) VALUES ('Perú');
INSERT INTO PAISES (Descripciones) VALUES ('Ecuador');
INSERT INTO PAISES (Descripciones) VALUES ('Colombia');
INSERT INTO PAISES (Descripciones) VALUES ('Venezuela');
INSERT INTO PAISES (Descripciones) VALUES ('México');
INSERT INTO PAISES (Descripciones) VALUES ('España');
INSERT INTO PAISES (Descripciones) VALUES ('Estados Unidos');
INSERT INTO PAISES (Descripciones) VALUES ('Canadá');
INSERT INTO PAISES (Descripciones) VALUES ('Italia');

GO

-- 3) PROVINCIAS (15) -> PaisID 1..15
INSERT INTO PROVINCIAS (PaisID, Descripcion) VALUES (1,'Buenos Aires');
INSERT INTO PROVINCIAS (PaisID, Descripcion) VALUES (2,'Montevideo');
INSERT INTO PROVINCIAS (PaisID, Descripcion) VALUES (3,'Santiago');
INSERT INTO PROVINCIAS (PaisID, Descripcion) VALUES (4,'São Paulo');
INSERT INTO PROVINCIAS (PaisID, Descripcion) VALUES (5,'Asunción');
INSERT INTO PROVINCIAS (PaisID, Descripcion) VALUES (6,'La Paz');
INSERT INTO PROVINCIAS (PaisID, Descripcion) VALUES (7,'Lima');
INSERT INTO PROVINCIAS (PaisID, Descripcion) VALUES (8,'Quito');
INSERT INTO PROVINCIAS (PaisID, Descripcion) VALUES (9,'Bogotá');
INSERT INTO PROVINCIAS (PaisID, Descripcion) VALUES (10,'Caracas');
INSERT INTO PROVINCIAS (PaisID, Descripcion) VALUES (11,'Ciudad de México');
INSERT INTO PROVINCIAS (PaisID, Descripcion) VALUES (12,'Madrid');
INSERT INTO PROVINCIAS (PaisID, Descripcion) VALUES (13,'Nueva York');
INSERT INTO PROVINCIAS (PaisID, Descripcion) VALUES (14,'Ontario');
INSERT INTO PROVINCIAS (PaisID, Descripcion) VALUES (15,'Lombardía');

GO

-- 4) LOCALIDADES (15) -> ProvinciaID 1..15
INSERT INTO LOCALIDADES (Descripcion, ProvinciaID) VALUES ('La Plata',1);
INSERT INTO LOCALIDADES (Descripcion, ProvinciaID) VALUES ('Ciudad Vieja',2);
INSERT INTO LOCALIDADES (Descripcion, ProvinciaID) VALUES ('Providencia',3);
INSERT INTO LOCALIDADES (Descripcion, ProvinciaID) VALUES ('Campinas',4);
INSERT INTO LOCALIDADES (Descripcion, ProvinciaID) VALUES ('Lambaré',5);
INSERT INTO LOCALIDADES (Descripcion, ProvinciaID) VALUES ('El Alto',6);
INSERT INTO LOCALIDADES (Descripcion, ProvinciaID) VALUES ('Miraflores',7);
INSERT INTO LOCALIDADES (Descripcion, ProvinciaID) VALUES ('Quito Centro',8);
INSERT INTO LOCALIDADES (Descripcion, ProvinciaID) VALUES ('Chapinero',9);
INSERT INTO LOCALIDADES (Descripcion, ProvinciaID) VALUES ('Caracas Este',10);
INSERT INTO LOCALIDADES (Descripcion, ProvinciaID) VALUES ('Coyoacán',11);
INSERT INTO LOCALIDADES (Descripcion, ProvinciaID) VALUES ('Centro',12);
INSERT INTO LOCALIDADES (Descripcion, ProvinciaID) VALUES ('Manhattan',13);
INSERT INTO LOCALIDADES (Descripcion, ProvinciaID) VALUES ('Toronto Downtown',14);
INSERT INTO LOCALIDADES (Descripcion, ProvinciaID) VALUES ('Milán Centro',15);

GO

-- 5) TIPOS_PRESENTACIONES (15)
INSERT INTO TIPOS_PRESENTACIONES (Descripcion) VALUES ('Caja');
INSERT INTO TIPOS_PRESENTACIONES (Descripcion) VALUES ('Frasco');
INSERT INTO TIPOS_PRESENTACIONES (Descripcion) VALUES ('Blister');
INSERT INTO TIPOS_PRESENTACIONES (Descripcion) VALUES ('Jarabe');
INSERT INTO TIPOS_PRESENTACIONES (Descripcion) VALUES ('Inyectable');
INSERT INTO TIPOS_PRESENTACIONES (Descripcion) VALUES ('Ampolla');
INSERT INTO TIPOS_PRESENTACIONES (Descripcion) VALUES ('Sobre');
INSERT INTO TIPOS_PRESENTACIONES (Descripcion) VALUES ('Tubo');
INSERT INTO TIPOS_PRESENTACIONES (Descripcion) VALUES ('Spray');
INSERT INTO TIPOS_PRESENTACIONES (Descripcion) VALUES ('Gotas');
INSERT INTO TIPOS_PRESENTACIONES (Descripcion) VALUES ('Crema');
INSERT INTO TIPOS_PRESENTACIONES (Descripcion) VALUES ('Ungüento');
INSERT INTO TIPOS_PRESENTACIONES (Descripcion) VALUES ('Tableta');
INSERT INTO TIPOS_PRESENTACIONES (Descripcion) VALUES ('Solución');
INSERT INTO TIPOS_PRESENTACIONES (Descripcion) VALUES ('Bolsa');

GO

-- 6) UNIDADES_MEDIDAS (15)
INSERT INTO UNIDADES_MEDIDAS (Descripcion) VALUES ('Unidad');
INSERT INTO UNIDADES_MEDIDAS (Descripcion) VALUES ('Caja');
INSERT INTO UNIDADES_MEDIDAS (Descripcion) VALUES ('ml');
INSERT INTO UNIDADES_MEDIDAS (Descripcion) VALUES ('mg');
INSERT INTO UNIDADES_MEDIDAS (Descripcion) VALUES ('g');
INSERT INTO UNIDADES_MEDIDAS (Descripcion) VALUES ('IU');
INSERT INTO UNIDADES_MEDIDAS (Descripcion) VALUES ('Sobre');
INSERT INTO UNIDADES_MEDIDAS (Descripcion) VALUES ('Paquete');
INSERT INTO UNIDADES_MEDIDAS (Descripcion) VALUES ('Ampolla');
INSERT INTO UNIDADES_MEDIDAS (Descripcion) VALUES ('Litro');
INSERT INTO UNIDADES_MEDIDAS (Descripcion) VALUES ('Kilo');
INSERT INTO UNIDADES_MEDIDAS (Descripcion) VALUES ('Gramo');
INSERT INTO UNIDADES_MEDIDAS (Descripcion) VALUES ('Mililitro');
INSERT INTO UNIDADES_MEDIDAS (Descripcion) VALUES ('Miligramos por ml');
INSERT INTO UNIDADES_MEDIDAS (Descripcion) VALUES ('Miliequivalentes');

GO

-- 7) TIPOS_SUMINISTROS (15)
INSERT INTO TIPOS_SUMINISTROS (Descripcion) VALUES ('Medicamento');
INSERT INTO TIPOS_SUMINISTROS (Descripcion) VALUES ('Insumo Médico');
INSERT INTO TIPOS_SUMINISTROS (Descripcion) VALUES ('Cosmético');
INSERT INTO TIPOS_SUMINISTROS (Descripcion) VALUES ('Dispositivo Médico');
INSERT INTO TIPOS_SUMINISTROS (Descripcion) VALUES ('Vitamina');
INSERT INTO TIPOS_SUMINISTROS (Descripcion) VALUES ('Suplemento');
INSERT INTO TIPOS_SUMINISTROS (Descripcion) VALUES ('Vacuna');
INSERT INTO TIPOS_SUMINISTROS (Descripcion) VALUES ('Material Quirúrgico');
INSERT INTO TIPOS_SUMINISTROS (Descripcion) VALUES ('Herbal');
INSERT INTO TIPOS_SUMINISTROS (Descripcion) VALUES ('Higiene');
INSERT INTO TIPOS_SUMINISTROS (Descripcion) VALUES ('Nutricional');
INSERT INTO TIPOS_SUMINISTROS (Descripcion) VALUES ('Desinfectante');
INSERT INTO TIPOS_SUMINISTROS (Descripcion) VALUES ('Equipo');
INSERT INTO TIPOS_SUMINISTROS (Descripcion) VALUES ('Reactivo');
INSERT INTO TIPOS_SUMINISTROS (Descripcion) VALUES ('Otro');

GO

-- 8) CLASIFICACIONES_SUMINISTROS (15)
INSERT INTO CLASIFICACIONES_SUMINISTROS (Descripcion) VALUES ('Antibiótico');
INSERT INTO CLASIFICACIONES_SUMINISTROS (Descripcion) VALUES ('Analgésico');
INSERT INTO CLASIFICACIONES_SUMINISTROS (Descripcion) VALUES ('Antiinflamatorio');
INSERT INTO CLASIFICACIONES_SUMINISTROS (Descripcion) VALUES ('Antihistamínico');
INSERT INTO CLASIFICACIONES_SUMINISTROS (Descripcion) VALUES ('Cardiológico');
INSERT INTO CLASIFICACIONES_SUMINISTROS (Descripcion) VALUES ('Endocrino');
INSERT INTO CLASIFICACIONES_SUMINISTROS (Descripcion) VALUES ('Dermatológico');
INSERT INTO CLASIFICACIONES_SUMINISTROS (Descripcion) VALUES ('Gastrointestinal');
INSERT INTO CLASIFICACIONES_SUMINISTROS (Descripcion) VALUES ('Neurológico');
INSERT INTO CLASIFICACIONES_SUMINISTROS (Descripcion) VALUES ('Respiratorio');
INSERT INTO CLASIFICACIONES_SUMINISTROS (Descripcion) VALUES ('Pediátrico');
INSERT INTO CLASIFICACIONES_SUMINISTROS (Descripcion) VALUES ('Ginecológico');
INSERT INTO CLASIFICACIONES_SUMINISTROS (Descripcion) VALUES ('Oftálmico');
INSERT INTO CLASIFICACIONES_SUMINISTROS (Descripcion) VALUES ('Otorrinolaringológico');
INSERT INTO CLASIFICACIONES_SUMINISTROS (Descripcion) VALUES ('Oncológico');

GO

-- 9) RESTRICCIONES (15)
INSERT INTO RESTRICCIONES (Descripcion) VALUES ('Venta libre');
INSERT INTO RESTRICCIONES (Descripcion) VALUES ('Venta con receta');
INSERT INTO RESTRICCIONES (Descripcion) VALUES ('Controlada - prescripción especial');
INSERT INTO RESTRICCIONES (Descripcion) VALUES ('Venta sólo a profesionales');
INSERT INTO RESTRICCIONES (Descripcion) VALUES ('Requiere autorización');
INSERT INTO RESTRICCIONES (Descripcion) VALUES ('Uso hospitalario');
INSERT INTO RESTRICCIONES (Descripcion) VALUES ('Prohibido menor de 18');
INSERT INTO RESTRICCIONES (Descripcion) VALUES ('Venta con receta archivada');
INSERT INTO RESTRICCIONES (Descripcion) VALUES ('Conservación en frío');
INSERT INTO RESTRICCIONES (Descripcion) VALUES ('Manipulación especial');
INSERT INTO RESTRICCIONES (Descripcion) VALUES ('Dosis controlada');
INSERT INTO RESTRICCIONES (Descripcion) VALUES ('Receta magistral');
INSERT INTO RESTRICCIONES (Descripcion) VALUES ('Sujeto a registro');
INSERT INTO RESTRICCIONES (Descripcion) VALUES ('Venta restringida por lote');
INSERT INTO RESTRICCIONES (Descripcion) VALUES ('Sin restricciones adicionales');

GO

-- 10) TIPOS_DESCUENTOS (15)
INSERT INTO TIPOS_DESCUENTOS (Descripcion) VALUES ('Porcentaje por obra social');
INSERT INTO TIPOS_DESCUENTOS (Descripcion) VALUES ('Monto fijo');
INSERT INTO TIPOS_DESCUENTOS (Descripcion) VALUES ('Promoción 2x1');
INSERT INTO TIPOS_DESCUENTOS (Descripcion) VALUES ('Descuento por volumen');
INSERT INTO TIPOS_DESCUENTOS (Descripcion) VALUES ('Descuento por temporada');
INSERT INTO TIPOS_DESCUENTOS (Descripcion) VALUES ('Descuento por fidelidad');
INSERT INTO TIPOS_DESCUENTOS (Descripcion) VALUES ('Descuento por estudiante');
INSERT INTO TIPOS_DESCUENTOS (Descripcion) VALUES ('Descuento por jubilado');
INSERT INTO TIPOS_DESCUENTOS (Descripcion) VALUES ('Descuento corporativo');
INSERT INTO TIPOS_DESCUENTOS (Descripcion) VALUES ('Con cupon');
INSERT INTO TIPOS_DESCUENTOS (Descripcion) VALUES ('Descuento bancario');
INSERT INTO TIPOS_DESCUENTOS (Descripcion) VALUES ('Descuento por primer compra');
INSERT INTO TIPOS_DESCUENTOS (Descripcion) VALUES ('Descuento por referencia');
INSERT INTO TIPOS_DESCUENTOS (Descripcion) VALUES ('Promoción combo');
INSERT INTO TIPOS_DESCUENTOS (Descripcion) VALUES ('Descuento especial');

GO

-- 11) METODOS_PAGOS (15)
INSERT INTO METODOS_PAGOS (Descripcion) VALUES ('Efectivo');
INSERT INTO METODOS_PAGOS (Descripcion) VALUES ('Tarjeta de crédito');
INSERT INTO METODOS_PAGOS (Descripcion) VALUES ('Tarjeta de débito');
INSERT INTO METODOS_PAGOS (Descripcion) VALUES ('Transferencia bancaria');
INSERT INTO METODOS_PAGOS (Descripcion) VALUES ('MercadoPago');
INSERT INTO METODOS_PAGOS (Descripcion) VALUES ('Cheque');
INSERT INTO METODOS_PAGOS (Descripcion) VALUES ('Pago móvil');
INSERT INTO METODOS_PAGOS (Descripcion) VALUES ('A cuenta');
INSERT INTO METODOS_PAGOS (Descripcion) VALUES ('Contra reembolso');
INSERT INTO METODOS_PAGOS (Descripcion) VALUES ('Gift Card');
INSERT INTO METODOS_PAGOS (Descripcion) VALUES ('Débito automático');
INSERT INTO METODOS_PAGOS (Descripcion) VALUES ('Apple Pay');
INSERT INTO METODOS_PAGOS (Descripcion) VALUES ('Google Pay');
INSERT INTO METODOS_PAGOS (Descripcion) VALUES ('Pago en cuotas');
INSERT INTO METODOS_PAGOS (Descripcion) VALUES ('Pago parcial');

GO

-- 12) ESPECIALIDADES_MEDICOS (15)
INSERT INTO ESPECIALIDADES_MEDICOS (Nombre_Especialidad) VALUES ('Cardiología');
INSERT INTO ESPECIALIDADES_MEDICOS (Nombre_Especialidad) VALUES ('Endocrinología');
INSERT INTO ESPECIALIDADES_MEDICOS (Nombre_Especialidad) VALUES ('Dermatología');
INSERT INTO ESPECIALIDADES_MEDICOS (Nombre_Especialidad) VALUES ('Pediatría');
INSERT INTO ESPECIALIDADES_MEDICOS (Nombre_Especialidad) VALUES ('Ginecología');
INSERT INTO ESPECIALIDADES_MEDICOS (Nombre_Especialidad) VALUES ('Neurología');
INSERT INTO ESPECIALIDADES_MEDICOS (Nombre_Especialidad) VALUES ('Gastroenterología');
INSERT INTO ESPECIALIDADES_MEDICOS (Nombre_Especialidad) VALUES ('Oftalmología');
INSERT INTO ESPECIALIDADES_MEDICOS (Nombre_Especialidad) VALUES ('Psiquiatría');
INSERT INTO ESPECIALIDADES_MEDICOS (Nombre_Especialidad) VALUES ('Traumatología');
INSERT INTO ESPECIALIDADES_MEDICOS (Nombre_Especialidad) VALUES ('Oncología');
INSERT INTO ESPECIALIDADES_MEDICOS (Nombre_Especialidad) VALUES ('Otorrinolaringología');
INSERT INTO ESPECIALIDADES_MEDICOS (Nombre_Especialidad) VALUES ('Urología');
INSERT INTO ESPECIALIDADES_MEDICOS (Nombre_Especialidad) VALUES ('Neumonología');
INSERT INTO ESPECIALIDADES_MEDICOS (Nombre_Especialidad) VALUES ('Medicina General');

GO

-- 13) OBRAS_SOCIALES (15)
INSERT INTO OBRAS_SOCIALES (Descripcion) VALUES ('OSDE');
INSERT INTO OBRAS_SOCIALES (Descripcion) VALUES ('PAMI');
INSERT INTO OBRAS_SOCIALES (Descripcion) VALUES ('Swiss Medical');
INSERT INTO OBRAS_SOCIALES (Descripcion) VALUES ('Galeno');
INSERT INTO OBRAS_SOCIALES (Descripcion) VALUES ('OMINT');
INSERT INTO OBRAS_SOCIALES (Descripcion) VALUES ('Medicus');
INSERT INTO OBRAS_SOCIALES (Descripcion) VALUES ('Sancor Salud');
INSERT INTO OBRAS_SOCIALES (Descripcion) VALUES ('Federada Salud');
INSERT INTO OBRAS_SOCIALES (Descripcion) VALUES ('Ateneo');
INSERT INTO OBRAS_SOCIALES (Descripcion) VALUES ('OSDEPY');
INSERT INTO OBRAS_SOCIALES (Descripcion) VALUES ('Nación Salud');
INSERT INTO OBRAS_SOCIALES (Descripcion) VALUES ('SwissCare');
INSERT INTO OBRAS_SOCIALES (Descripcion) VALUES ('Hospital Privado Plan');
INSERT INTO OBRAS_SOCIALES (Descripcion) VALUES ('Obra Social Municipal');
INSERT INTO OBRAS_SOCIALES (Descripcion) VALUES ('Obra Social Regional');

GO

-- 14) PLANES_OBRAS_SOCIALES (15) -> Obra_SocialID 1..15
INSERT INTO PLANES_OBRAS_SOCIALES (Descripcion, Obra_SocialID) VALUES ('OSDE Médico Integral',1);
INSERT INTO PLANES_OBRAS_SOCIALES (Descripcion, Obra_SocialID) VALUES ('PAMI Básico',2);
INSERT INTO PLANES_OBRAS_SOCIALES (Descripcion, Obra_SocialID) VALUES ('Swiss Premium',3);
INSERT INTO PLANES_OBRAS_SOCIALES (Descripcion, Obra_SocialID) VALUES ('Galeno Plan I',4);
INSERT INTO PLANES_OBRAS_SOCIALES (Descripcion, Obra_SocialID) VALUES ('OMINT Plus',5);
INSERT INTO PLANES_OBRAS_SOCIALES (Descripcion, Obra_SocialID) VALUES ('Medicus Básico',6);
INSERT INTO PLANES_OBRAS_SOCIALES (Descripcion, Obra_SocialID) VALUES ('Sancor Familiar',7);
INSERT INTO PLANES_OBRAS_SOCIALES (Descripcion, Obra_SocialID) VALUES ('Federada Select',8);
INSERT INTO PLANES_OBRAS_SOCIALES (Descripcion, Obra_SocialID) VALUES ('Ateneo Plan',9);
INSERT INTO PLANES_OBRAS_SOCIALES (Descripcion, Obra_SocialID) VALUES ('OSDEPY Plus',10);
INSERT INTO PLANES_OBRAS_SOCIALES (Descripcion, Obra_SocialID) VALUES ('Nación Salud Plan',11);
INSERT INTO PLANES_OBRAS_SOCIALES (Descripcion, Obra_SocialID) VALUES ('SwissCare Familiar',12);
INSERT INTO PLANES_OBRAS_SOCIALES (Descripcion, Obra_SocialID) VALUES ('Hospital Privado VIP',13);
INSERT INTO PLANES_OBRAS_SOCIALES (Descripcion, Obra_SocialID) VALUES ('Municipal Plus',14);
INSERT INTO PLANES_OBRAS_SOCIALES (Descripcion, Obra_SocialID) VALUES ('Regional Básico',15);

GO

-- 15) PROVEEDORES (15)
INSERT INTO PROVEEDORES (RazonSocial, CUIT, DireccionProveedor, TelefonoProveedor, EmailProveedor,activo) VALUES ('Laboratorios Argentinos S.A.','30-12345678-1','Av. Siempre Viva 100','+54 11 4000-0001','ventas@labarg.com',1);
INSERT INTO PROVEEDORES (RazonSocial, CUIT, DireccionProveedor, TelefonoProveedor, EmailProveedor, activo) VALUES ('Distribuidora Farma SRL','30-87654321-2','Calle Falsa 200','+54 11 4000-0002','contacto@distfarma.com',1 );
INSERT INTO PROVEEDORES (RazonSocial, CUIT, DireccionProveedor, TelefonoProveedor, EmailProveedor, activo) VALUES ('Insumos Médicos SA','30-11223344-3','Rivadavia 300','+54 11 4000-0003','info@insumosmed.com', 1);
INSERT INTO PROVEEDORES (RazonSocial, CUIT, DireccionProveedor, TelefonoProveedor, EmailProveedor, activo) VALUES ('Cosméticos del Plata','30-55667788-4','Florida 400','+54 11 4000-0004','ventas@cosplat.com', 1);
INSERT INTO PROVEEDORES (RazonSocial, CUIT, DireccionProveedor, TelefonoProveedor, EmailProveedor, activo) VALUES ('Vacunas Globales','30-99887766-5','Av. Norte 500','+54 11 4000-0005','vacunas@global.com', 1);
INSERT INTO PROVEEDORES (RazonSocial, CUIT, DireccionProveedor, TelefonoProveedor, EmailProveedor, activo) VALUES ('Equipos Médicos SA','30-22334455-6','Industrial 600','+54 11 4000-0006','equipos@medicos.com',1 );
INSERT INTO PROVEEDORES (RazonSocial, CUIT, DireccionProveedor, TelefonoProveedor, EmailProveedor, activo) VALUES ('Herbolario Natural','30-66778899-7','Río 700','+54 11 4000-0007','pedidos@herbal.com', 1);
INSERT INTO PROVEEDORES (RazonSocial, CUIT, DireccionProveedor, TelefonoProveedor, EmailProveedor, activo) VALUES ('Suministros Quirúrgicos','30-33445566-8','Salud 800','+54 11 4000-0008','suministros@quirurg.com',0);
INSERT INTO PROVEEDORES (RazonSocial, CUIT, DireccionProveedor, TelefonoProveedor, EmailProveedor, activo) VALUES ('Distribuciones Norte','30-44556677-9','Norte 900','+54 11 4000-0009','norte@dist.com',1 );
INSERT INTO PROVEEDORES (RazonSocial, CUIT, DireccionProveedor, TelefonoProveedor, EmailProveedor, activo) VALUES ('Farmacia Mayorista','30-55664433-0','Mercado 1000','+54 11 4000-0010','mayorista@farma.com',1 );
INSERT INTO PROVEEDORES (RazonSocial, CUIT, DireccionProveedor, TelefonoProveedor, EmailProveedor, activo) VALUES ('Logística Pharma','30-66775544-1','Logística 1100','+54 11 4000-0011','logistica@pharma.com',1 );
INSERT INTO PROVEEDORES (RazonSocial, CUIT, DireccionProveedor, TelefonoProveedor, EmailProveedor, activo) VALUES ('Laboratorio Central','30-77886655-2','Centro 1200','+54 11 4000-0012','central@lab.com',1 );
INSERT INTO PROVEEDORES (RazonSocial, CUIT, DireccionProveedor, TelefonoProveedor, EmailProveedor, activo) VALUES ('Proveedora Sur','30-88997766-3','Sur 1300','+54 11 4000-0013','sur@provee.com',0);
INSERT INTO PROVEEDORES (RazonSocial, CUIT, DireccionProveedor, TelefonoProveedor, EmailProveedor, activo) VALUES ('Insumos Dentales','30-99008877-4','Odontología 1400','+54 11 4000-0014','dental@insumos.com',1);
INSERT INTO PROVEEDORES (RazonSocial, CUIT, DireccionProveedor, TelefonoProveedor, EmailProveedor, activo) VALUES ('Productos Hospitalarios','30-10101010-5','Hospital 1500','+54 11 4000-0015','hospital@prod.com',1);

GO

-- 16) REPARTIDORES (15)
INSERT INTO REPARTIDORES (NombreRepartidor, ApellidoRepartidor, TelefonoRepartidor, EmailRepartidor) VALUES ('Juan','Pérez','+54 9 11 5555-0001','juan.perez@reparto.com');
INSERT INTO REPARTIDORES (NombreRepartidor, ApellidoRepartidor, TelefonoRepartidor, EmailRepartidor) VALUES ('María','González','+54 9 11 5555-0002','maria.gonzalez@reparto.com');
INSERT INTO REPARTIDORES (NombreRepartidor, ApellidoRepartidor, TelefonoRepartidor, EmailRepartidor) VALUES ('Carlos','Rodríguez','+54 9 11 5555-0003','carlos.rodriguez@reparto.com');
INSERT INTO REPARTIDORES (NombreRepartidor, ApellidoRepartidor, TelefonoRepartidor, EmailRepartidor) VALUES ('Luisa','Martínez','+54 9 11 5555-0004','luisa.martinez@reparto.com');
INSERT INTO REPARTIDORES (NombreRepartidor, ApellidoRepartidor, TelefonoRepartidor, EmailRepartidor) VALUES ('Diego','Fernández','+54 9 11 5555-0005','diego.fernandez@reparto.com');
INSERT INTO REPARTIDORES (NombreRepartidor, ApellidoRepartidor, TelefonoRepartidor, EmailRepartidor) VALUES ('Sofía','López','+54 9 11 5555-0006','sofia.lopez@reparto.com');
INSERT INTO REPARTIDORES (NombreRepartidor, ApellidoRepartidor, TelefonoRepartidor, EmailRepartidor) VALUES ('Martín','Gómez','+54 9 11 5555-0007','martin.gomez@reparto.com');
INSERT INTO REPARTIDORES (NombreRepartidor, ApellidoRepartidor, TelefonoRepartidor, EmailRepartidor) VALUES ('Carolina','Ruiz','+54 9 11 5555-0008','carolina.ruiz@reparto.com');
INSERT INTO REPARTIDORES (NombreRepartidor, ApellidoRepartidor, TelefonoRepartidor, EmailRepartidor) VALUES ('Federico','Sosa','+54 9 11 5555-0009','federico.sosa@reparto.com');
INSERT INTO REPARTIDORES (NombreRepartidor, ApellidoRepartidor, TelefonoRepartidor, EmailRepartidor) VALUES ('Paula','Vega','+54 9 11 5555-0010','paula.vega@reparto.com');
INSERT INTO REPARTIDORES (NombreRepartidor, ApellidoRepartidor, TelefonoRepartidor, EmailRepartidor) VALUES ('Gustavo','Ibarra','+54 9 11 5555-0011','gustavo.ibarra@reparto.com');
INSERT INTO REPARTIDORES (NombreRepartidor, ApellidoRepartidor, TelefonoRepartidor, EmailRepartidor) VALUES ('Valeria','Alonso','+54 9 11 5555-0012','valeria.alonso@reparto.com');
INSERT INTO REPARTIDORES (NombreRepartidor, ApellidoRepartidor, TelefonoRepartidor, EmailRepartidor) VALUES ('Sergio','Castro','+54 9 11 5555-0013','sergio.castro@reparto.com');
INSERT INTO REPARTIDORES (NombreRepartidor, ApellidoRepartidor, TelefonoRepartidor, EmailRepartidor) VALUES ('Natalia','Ramos','+54 9 11 5555-0014','natalia.ramos@reparto.com');
INSERT INTO REPARTIDORES (NombreRepartidor, ApellidoRepartidor, TelefonoRepartidor, EmailRepartidor) VALUES ('Emilio','Torres','+54 9 11 5555-0015','emilio.torres@reparto.com');

GO

-- 17) SUCURSALES (15) -> LocalidadID 1..15
INSERT INTO SUCURSALES (Descripcion, Direccion, LocalidadID) VALUES ('Sucursal Centro','Av. Central 123',1);
INSERT INTO SUCURSALES (Descripcion, Direccion, LocalidadID) VALUES ('Sucursal Ciudad Vieja','Calle Principal 45',2);
INSERT INTO SUCURSALES (Descripcion, Direccion, LocalidadID) VALUES ('Sucursal Providencia','Av. Providencia 10',3);
INSERT INTO SUCURSALES (Descripcion, Direccion, LocalidadID) VALUES ('Sucursal Campinas','Rua das Flores 200',4);
INSERT INTO SUCURSALES (Descripcion, Direccion, LocalidadID) VALUES ('Sucursal Asunción','Calle 5 de Mayo 77',5);
INSERT INTO SUCURSALES (Descripcion, Direccion, LocalidadID) VALUES ('Sucursal El Alto','Av. Bolivia 500',6);
INSERT INTO SUCURSALES (Descripcion, Direccion, LocalidadID) VALUES ('Sucursal Miraflores','Av. Larco 120',7);
INSERT INTO SUCURSALES (Descripcion, Direccion, LocalidadID) VALUES ('Sucursal Quito','Av. Amazonas 88',8);
INSERT INTO SUCURSALES (Descripcion, Direccion, LocalidadID) VALUES ('Sucursal Bogotá','Calle 85 35',9);
INSERT INTO SUCURSALES (Descripcion, Direccion, LocalidadID) VALUES ('Sucursal Caracas','Av. Libertador 101',10);
INSERT INTO SUCURSALES (Descripcion, Direccion, LocalidadID) VALUES ('Sucursal Coyoacán','Insurgentes 200',11);
INSERT INTO SUCURSALES (Descripcion, Direccion, LocalidadID) VALUES ('Sucursal Madrid Centro','Gran Vía 25',12);
INSERT INTO SUCURSALES (Descripcion, Direccion, LocalidadID) VALUES ('Sucursal Manhattan','5th Ave 350',13);
INSERT INTO SUCURSALES (Descripcion, Direccion, LocalidadID) VALUES ('Sucursal Toronto','King St 75',14);
INSERT INTO SUCURSALES (Descripcion, Direccion, LocalidadID) VALUES ('Sucursal Milán','Via Dante 2',15);

GO

-- 18) PRODUCTOS (15) -> Tipo_SuministroID 1..15, Clasificacion_SuministroID 1..15, Unidad_MedidaID 1..15, Tipo_PresentacionID 1..15
INSERT INTO PRODUCTOS (Codigo_Barra_ProductoID, Nombre_Producto, Precio_Producto, Tipo_SuministroID, Clasificacion_SuministroID, Unidad_MedidaID, Tipo_PresentacionID, activo) VALUES ('P000000001','Termómetro Digital',1200.00,13,15,1,13,1);
INSERT INTO PRODUCTOS (Codigo_Barra_ProductoID, Nombre_Producto, Precio_Producto, Tipo_SuministroID, Clasificacion_SuministroID, Unidad_MedidaID, Tipo_PresentacionID, activo) VALUES ('P000000002','Jeringa 5ml',45.00,8,15,9,11,1);
INSERT INTO PRODUCTOS (Codigo_Barra_ProductoID, Nombre_Producto, Precio_Producto, Tipo_SuministroID, Clasificacion_SuministroID, Unidad_MedidaID, Tipo_PresentacionID, activo) VALUES ('P000000003','Guantes Nitrilo',350.00,8,15,8,13,1);
INSERT INTO PRODUCTOS (Codigo_Barra_ProductoID, Nombre_Producto, Precio_Producto, Tipo_SuministroID, Clasificacion_SuministroID, Unidad_MedidaID, Tipo_PresentacionID, activo) VALUES ('P000000004','Mascarilla Quirúrgica',80.00,8,15,8,13,1);
INSERT INTO PRODUCTOS (Codigo_Barra_ProductoID, Nombre_Producto, Precio_Producto, Tipo_SuministroID, Clasificacion_SuministroID, Unidad_MedidaID, Tipo_PresentacionID, activo) VALUES ('P000000005','Termo para suero',2000.00,13,15,1,13,1);
INSERT INTO PRODUCTOS (Codigo_Barra_ProductoID, Nombre_Producto, Precio_Producto, Tipo_SuministroID, Clasificacion_SuministroID, Unidad_MedidaID, Tipo_PresentacionID, activo) VALUES ('P000000006','Bata descartable',150.00,8,15,8,13,1);
INSERT INTO PRODUCTOS (Codigo_Barra_ProductoID, Nombre_Producto, Precio_Producto, Tipo_SuministroID, Clasificacion_SuministroID, Unidad_MedidaID, Tipo_PresentacionID, activo) VALUES ('P000000007','Alcohol en gel 500ml',380.00,12,15,3,2,1);
INSERT INTO PRODUCTOS (Codigo_Barra_ProductoID, Nombre_Producto, Precio_Producto, Tipo_SuministroID, Clasificacion_SuministroID, Unidad_MedidaID, Tipo_PresentacionID, activo) VALUES ('P000000008','Termómetro infrarrojo',5500.00,13,15,1,13,1);
INSERT INTO PRODUCTOS (Codigo_Barra_ProductoID, Nombre_Producto, Precio_Producto, Tipo_SuministroID, Clasificacion_SuministroID, Unidad_MedidaID, Tipo_PresentacionID, activo) VALUES ('P000000009','Sonda nasogástrica',900.00,8,15,8,13,1);
INSERT INTO PRODUCTOS (Codigo_Barra_ProductoID, Nombre_Producto, Precio_Producto, Tipo_SuministroID, Clasificacion_SuministroID, Unidad_MedidaID, Tipo_PresentacionID, activo) VALUES ('P000000010','Esfigmomanómetro',3200.00,13,15,1,13,1);
INSERT INTO PRODUCTOS (Codigo_Barra_ProductoID, Nombre_Producto, Precio_Producto, Tipo_SuministroID, Clasificacion_SuministroID, Unidad_MedidaID, Tipo_PresentacionID, activo) VALUES ('P000000011','Termómetro de mercurio',800.00,13,15,1,13,1);
INSERT INTO PRODUCTOS (Codigo_Barra_ProductoID, Nombre_Producto, Precio_Producto, Tipo_SuministroID, Clasificacion_SuministroID, Unidad_MedidaID, Tipo_PresentacionID, activo) VALUES ('P000000012','Pañales adultos',950.00,11,15,8,13,0);
INSERT INTO PRODUCTOS (Codigo_Barra_ProductoID, Nombre_Producto, Precio_Producto, Tipo_SuministroID, Clasificacion_SuministroID, Unidad_MedidaID, Tipo_PresentacionID, activo) VALUES ('P000000013','Sueros isotónicos 500ml',420.00,13,15,10,14,1);
INSERT INTO PRODUCTOS (Codigo_Barra_ProductoID, Nombre_Producto, Precio_Producto, Tipo_SuministroID, Clasificacion_SuministroID, Unidad_MedidaID, Tipo_PresentacionID, activo) VALUES ('P000000014','Aspirina 500mg',70.00,1,2,4,13,1);
INSERT INTO PRODUCTOS (Codigo_Barra_ProductoID, Nombre_Producto, Precio_Producto, Tipo_SuministroID, Clasificacion_SuministroID, Unidad_MedidaID, Tipo_PresentacionID, activo) VALUES ('P000000015','Venda elástica',120.00,8,15,8,13,0);

GO

-- 19) MEDICAMENTOS (15) -> Unidad_MedidaID 1..15, Tipo_PresentacionID 1..15, Clasificacion 1..15, Tipo_SuministroID 1..15, RestriccionID 1..15
INSERT INTO MEDICAMENTOS (Codigo_Barra_MedicamentoID, Nombre_Medicamento, Precio_Medicamento, Unidad_MedidaID, Tipo_PresentacionID, Clasificacion_SuministroID, Tipo_SuministroID, RestriccionID,activo) VALUES ('M000000001','Amoxicilina 500mg',350.00,4,13,1,1,2,1);
INSERT INTO MEDICAMENTOS (Codigo_Barra_MedicamentoID, Nombre_Medicamento, Precio_Medicamento, Unidad_MedidaID, Tipo_PresentacionID, Clasificacion_SuministroID, Tipo_SuministroID, RestriccionID,activo) VALUES ('M000000002','Ibuprofeno 600mg',120.00,4,13,3,1,1,1);
INSERT INTO MEDICAMENTOS (Codigo_Barra_MedicamentoID, Nombre_Medicamento, Precio_Medicamento, Unidad_MedidaID, Tipo_PresentacionID, Clasificacion_SuministroID, Tipo_SuministroID, RestriccionID,activo) VALUES ('M000000003','Loratadina 10mg',250.00,4,13,4,1,1,1);
INSERT INTO MEDICAMENTOS (Codigo_Barra_MedicamentoID, Nombre_Medicamento, Precio_Medicamento, Unidad_MedidaID, Tipo_PresentacionID, Clasificacion_SuministroID, Tipo_SuministroID, RestriccionID,activo) VALUES ('M000000004','Metformina 850mg',180.00,4,13,6,1,1,1);
INSERT INTO MEDICAMENTOS (Codigo_Barra_MedicamentoID, Nombre_Medicamento, Precio_Medicamento, Unidad_MedidaID, Tipo_PresentacionID, Clasificacion_SuministroID, Tipo_SuministroID, RestriccionID,activo) VALUES ('M000000005','Omeprazol 20mg',210.00,4,13,8,1,1,1);
INSERT INTO MEDICAMENTOS (Codigo_Barra_MedicamentoID, Nombre_Medicamento, Precio_Medicamento, Unidad_MedidaID, Tipo_PresentacionID, Clasificacion_SuministroID, Tipo_SuministroID, RestriccionID,activo) VALUES ('M000000006','Prednisona 20mg',300.00,4,13,3,1,2,1);
INSERT INTO MEDICAMENTOS (Codigo_Barra_MedicamentoID, Nombre_Medicamento, Precio_Medicamento, Unidad_MedidaID, Tipo_PresentacionID, Clasificacion_SuministroID, Tipo_SuministroID, RestriccionID,activo) VALUES ('M000000007','Vacuna Influenza 2025',1200.00,10,2,7,7,9,1);
INSERT INTO MEDICAMENTOS (Codigo_Barra_MedicamentoID, Nombre_Medicamento, Precio_Medicamento, Unidad_MedidaID, Tipo_PresentacionID, Clasificacion_SuministroID, Tipo_SuministroID, RestriccionID,activo) VALUES ('M000000008','Crema Dermática 30g',480.00,5,11,6,1,6,0);
INSERT INTO MEDICAMENTOS (Codigo_Barra_MedicamentoID, Nombre_Medicamento, Precio_Medicamento, Unidad_MedidaID, Tipo_PresentacionID, Clasificacion_SuministroID, Tipo_SuministroID, RestriccionID,activo) VALUES ('M000000009','Salbutamol inhalador',950.00,1,13,10,1,2,0);
INSERT INTO MEDICAMENTOS (Codigo_Barra_MedicamentoID, Nombre_Medicamento, Precio_Medicamento, Unidad_MedidaID, Tipo_PresentacionID, Clasificacion_SuministroID, Tipo_SuministroID, RestriccionID,activo) VALUES ('M000000010','Paracetamol 500mg',60.00,4,13,2,1,1,1);
INSERT INTO MEDICAMENTOS (Codigo_Barra_MedicamentoID, Nombre_Medicamento, Precio_Medicamento, Unidad_MedidaID, Tipo_PresentacionID, Clasificacion_SuministroID, Tipo_SuministroID, RestriccionID,activo) VALUES ('M000000011','Enalapril 10mg',340.00,4,13,5,1,2,1);
INSERT INTO MEDICAMENTOS (Codigo_Barra_MedicamentoID, Nombre_Medicamento, Precio_Medicamento, Unidad_MedidaID, Tipo_PresentacionID, Clasificacion_SuministroID, Tipo_SuministroID, RestriccionID,activo) VALUES ('M000000012','Vitamina D 1000IU',220.00,6,13,5,5,1,1);
INSERT INTO MEDICAMENTOS (Codigo_Barra_MedicamentoID, Nombre_Medicamento, Precio_Medicamento, Unidad_MedidaID, Tipo_PresentacionID, Clasificacion_SuministroID, Tipo_SuministroID, RestriccionID,activo) VALUES ('M000000013','Insulina NPH 100U',1800.00,6,2,6,1,2,1);
INSERT INTO MEDICAMENTOS (Codigo_Barra_MedicamentoID, Nombre_Medicamento, Precio_Medicamento, Unidad_MedidaID, Tipo_PresentacionID, Clasificacion_SuministroID, Tipo_SuministroID, RestriccionID,activo) VALUES ('M000000014','Crema Antifúngica 20g',260.00,5,11,6,1,6,0);
INSERT INTO MEDICAMENTOS (Codigo_Barra_MedicamentoID, Nombre_Medicamento, Precio_Medicamento, Unidad_MedidaID, Tipo_PresentacionID, Clasificacion_SuministroID, Tipo_SuministroID, RestriccionID,activo) VALUES ('M000000015','Antibiótico tópico',310.00,5,11,1,1,2,1);

GO

-- 20) LOTES_PRODUCTOS (15) -> ProductoID 1..15
INSERT INTO LOTES_PRODUCTOS (Fecha_Vencimiento, Fecha_Elaboracion, Cantidad, ProductoID) VALUES ('2026-06-30 00:00:00','2025-01-01 00:00:00',100,1);
INSERT INTO LOTES_PRODUCTOS (Fecha_Vencimiento, Fecha_Elaboracion, Cantidad, ProductoID) VALUES ('2027-03-15 00:00:00','2025-02-01 00:00:00',500,2);
INSERT INTO LOTES_PRODUCTOS (Fecha_Vencimiento, Fecha_Elaboracion, Cantidad, ProductoID) VALUES ('2026-11-10 00:00:00','2025-03-01 00:00:00',200,3);
INSERT INTO LOTES_PRODUCTOS (Fecha_Vencimiento, Fecha_Elaboracion, Cantidad, ProductoID) VALUES ('2028-01-01 00:00:00','2025-04-01 00:00:00',300,4);
INSERT INTO LOTES_PRODUCTOS (Fecha_Vencimiento, Fecha_Elaboracion, Cantidad, ProductoID) VALUES ('2029-12-31 00:00:00','2025-05-01 00:00:00',50,5);
INSERT INTO LOTES_PRODUCTOS (Fecha_Vencimiento, Fecha_Elaboracion, Cantidad, ProductoID) VALUES ('2026-07-20 00:00:00','2025-02-15 00:00:00',150,6);
INSERT INTO LOTES_PRODUCTOS (Fecha_Vencimiento, Fecha_Elaboracion, Cantidad, ProductoID) VALUES ('2025-11-30 00:00:00','2024-11-01 00:00:00',600,7);
INSERT INTO LOTES_PRODUCTOS (Fecha_Vencimiento, Fecha_Elaboracion, Cantidad, ProductoID) VALUES ('2027-08-05 00:00:00','2025-03-15 00:00:00',80,8);
INSERT INTO LOTES_PRODUCTOS (Fecha_Vencimiento, Fecha_Elaboracion, Cantidad, ProductoID) VALUES ('2026-05-10 00:00:00','2025-01-25 00:00:00',250,9);
INSERT INTO LOTES_PRODUCTOS (Fecha_Vencimiento, Fecha_Elaboracion, Cantidad, ProductoID) VALUES ('2026-10-10 00:00:00','2025-02-28 00:00:00',120,10);
INSERT INTO LOTES_PRODUCTOS (Fecha_Vencimiento, Fecha_Elaboracion, Cantidad, ProductoID) VALUES ('2026-04-01 00:00:00','2025-01-10 00:00:00',75,11);
INSERT INTO LOTES_PRODUCTOS (Fecha_Vencimiento, Fecha_Elaboracion, Cantidad, ProductoID) VALUES ('2025-09-15 00:00:00','2024-12-01 00:00:00',400,12);
INSERT INTO LOTES_PRODUCTOS (Fecha_Vencimiento, Fecha_Elaboracion, Cantidad, ProductoID) VALUES ('2027-02-28 00:00:00','2025-04-10 00:00:00',90,13);
INSERT INTO LOTES_PRODUCTOS (Fecha_Vencimiento, Fecha_Elaboracion, Cantidad, ProductoID) VALUES ('2026-12-12 00:00:00','2025-03-05 00:00:00',220,14);
INSERT INTO LOTES_PRODUCTOS (Fecha_Vencimiento, Fecha_Elaboracion, Cantidad, ProductoID) VALUES ('2028-06-06 00:00:00','2025-05-20 00:00:00',130,15);

GO

-- 21) LOTES_MEDICAMENTOS (15) -> MedicamentoID 1..15
INSERT INTO LOTES_MEDICAMENTOS (MedicamentoID, Fecha_Vencimiento, Fecha_Elaboracion, Cantidad) VALUES (1,'2026-01-01 00:00:00','2024-12-01 00:00:00',200);
INSERT INTO LOTES_MEDICAMENTOS (MedicamentoID, Fecha_Vencimiento, Fecha_Elaboracion, Cantidad) VALUES (2,'2025-08-15 00:00:00','2024-08-01 00:00:00',500);
INSERT INTO LOTES_MEDICAMENTOS (MedicamentoID, Fecha_Vencimiento, Fecha_Elaboracion, Cantidad) VALUES (3,'2027-05-10 00:00:00','2025-01-10 00:00:00',300);
INSERT INTO LOTES_MEDICAMENTOS (MedicamentoID, Fecha_Vencimiento, Fecha_Elaboracion, Cantidad) VALUES (4,'2026-09-30 00:00:00','2025-02-20 00:00:00',250);
INSERT INTO LOTES_MEDICAMENTOS (MedicamentoID, Fecha_Vencimiento, Fecha_Elaboracion, Cantidad) VALUES (5,'2028-03-31 00:00:00','2025-03-01 00:00:00',180);
INSERT INTO LOTES_MEDICAMENTOS (MedicamentoID, Fecha_Vencimiento, Fecha_Elaboracion, Cantidad) VALUES (6,'2025-12-31 00:00:00','2024-11-15 00:00:00',220);
INSERT INTO LOTES_MEDICAMENTOS (MedicamentoID, Fecha_Vencimiento, Fecha_Elaboracion, Cantidad) VALUES (7,'2026-04-01 00:00:00','2025-02-01 00:00:00',150);
INSERT INTO LOTES_MEDICAMENTOS (MedicamentoID, Fecha_Vencimiento, Fecha_Elaboracion, Cantidad) VALUES (8,'2027-07-07 00:00:00','2025-03-15 00:00:00',90);
INSERT INTO LOTES_MEDICAMENTOS (MedicamentoID, Fecha_Vencimiento, Fecha_Elaboracion, Cantidad) VALUES (9,'2026-02-20 00:00:00','2024-12-20 00:00:00',130);
INSERT INTO LOTES_MEDICAMENTOS (MedicamentoID, Fecha_Vencimiento, Fecha_Elaboracion, Cantidad) VALUES (10,'2025-11-11 00:00:00','2024-11-11 00:00:00',700);
INSERT INTO LOTES_MEDICAMENTOS (MedicamentoID, Fecha_Vencimiento, Fecha_Elaboracion, Cantidad) VALUES (11,'2027-10-10 00:00:00','2025-04-01 00:00:00',95);
INSERT INTO LOTES_MEDICAMENTOS (MedicamentoID, Fecha_Vencimiento, Fecha_Elaboracion, Cantidad) VALUES (12,'2026-06-06 00:00:00','2025-01-05 00:00:00',260);
INSERT INTO LOTES_MEDICAMENTOS (MedicamentoID, Fecha_Vencimiento, Fecha_Elaboracion, Cantidad) VALUES (13,'2025-09-09 00:00:00','2024-10-10 00:00:00',110);
INSERT INTO LOTES_MEDICAMENTOS (MedicamentoID, Fecha_Vencimiento, Fecha_Elaboracion, Cantidad) VALUES (14,'2026-08-08 00:00:00','2025-02-12 00:00:00',175);
INSERT INTO LOTES_MEDICAMENTOS (MedicamentoID, Fecha_Vencimiento, Fecha_Elaboracion, Cantidad) VALUES (15,'2027-01-01 00:00:00','2025-03-03 00:00:00',85);

GO

-- 22) CLIENTES (15) -> Tipo_DocumentoID 1..15, LocalidadID 1..15
INSERT INTO CLIENTES (NombreCliente, ApellidoCliente, Fecha_Nacimiento_Cliente, TelefonoCliente, Tipo_DocumentoID, DireccionCliente, LocalidadID, EmailCliente, DocumentoCliente) VALUES ('Lucas','Martínez','1985-05-12','+54 9 11 6000-0001',1,'Calle 1 #100',1,'lucas.martinez@example.com','12345678');
INSERT INTO CLIENTES (NombreCliente, ApellidoCliente, Fecha_Nacimiento_Cliente, TelefonoCliente, Tipo_DocumentoID, DireccionCliente, LocalidadID, EmailCliente, DocumentoCliente) VALUES ('María','Gómez','1990-03-02','+54 9 11 6000-0002',2,'Calle 2 #200',2,'maria.gomez@example.com','20-12345678-2');
INSERT INTO CLIENTES (NombreCliente, ApellidoCliente, Fecha_Nacimiento_Cliente, TelefonoCliente, Tipo_DocumentoID, DireccionCliente, LocalidadID, EmailCliente, DocumentoCliente) VALUES ('Pedro','López','1975-07-22','+54 9 11 6000-0003',3,'Calle 3 #300',3,'pedro.lopez@example.com','A1234567');
INSERT INTO CLIENTES (NombreCliente, ApellidoCliente, Fecha_Nacimiento_Cliente, TelefonoCliente, Tipo_DocumentoID, DireccionCliente, LocalidadID, EmailCliente, DocumentoCliente) VALUES ('Ana','Fernández','1988-11-11','+54 9 11 6000-0004',4,'Av. Libertad 400',4,'ana.fernandez@example.com','B7654321');
INSERT INTO CLIENTES (NombreCliente, ApellidoCliente, Fecha_Nacimiento_Cliente, TelefonoCliente, Tipo_DocumentoID, DireccionCliente, LocalidadID, EmailCliente, DocumentoCliente) VALUES ('Diego','Sánchez','2000-01-05','+54 9 11 6000-0005',5,'Boulevard 500',5,'diego.sanchez@example.com','P1234567');
INSERT INTO CLIENTES (NombreCliente, ApellidoCliente, Fecha_Nacimiento_Cliente, TelefonoCliente, Tipo_DocumentoID, DireccionCliente, LocalidadID, EmailCliente, DocumentoCliente) VALUES ('Lucía','Torres','1995-12-30','+54 9 11 6000-0006',6,'Pasaje 6 #6',6,'lucia.torres@example.com','C9876543');
INSERT INTO CLIENTES (NombreCliente, ApellidoCliente, Fecha_Nacimiento_Cliente, TelefonoCliente, Tipo_DocumentoID, DireccionCliente, LocalidadID, EmailCliente, DocumentoCliente) VALUES ('Matías','Romero','1982-09-09','+54 9 11 6000-0007',7,'Av. 7 #700',7,'matias.romero@example.com','D2345678');
INSERT INTO CLIENTES (NombreCliente, ApellidoCliente, Fecha_Nacimiento_Cliente, TelefonoCliente, Tipo_DocumentoID, DireccionCliente, LocalidadID, EmailCliente, DocumentoCliente) VALUES ('Sofía','Vargas','1979-06-18','+54 9 11 6000-0008',8,'Calle 8 #80',8,'sofia.vargas@example.com','E3456789');
INSERT INTO CLIENTES (NombreCliente, ApellidoCliente, Fecha_Nacimiento_Cliente, TelefonoCliente, Tipo_DocumentoID, DireccionCliente, LocalidadID, EmailCliente, DocumentoCliente) VALUES ('Hernán','Pérez','1968-04-04','+54 9 11 6000-0009',9,'Av. 9 #900',9,'hernan.perez@example.com','F4567890');
INSERT INTO CLIENTES (NombreCliente, ApellidoCliente, Fecha_Nacimiento_Cliente, TelefonoCliente, Tipo_DocumentoID, DireccionCliente, LocalidadID, EmailCliente, DocumentoCliente) VALUES ('Carla','Rossi','1992-02-20','+54 9 11 6000-0010',10,'Rua 10 10',10,'carla.rossi@example.com','G5678901');
INSERT INTO CLIENTES (NombreCliente, ApellidoCliente, Fecha_Nacimiento_Cliente, TelefonoCliente, Tipo_DocumentoID, DireccionCliente, LocalidadID, EmailCliente, DocumentoCliente) VALUES ('Andrés','Morales','1987-08-08','+54 9 11 6000-0011',11,'Col. 11 #11',11,'andres.morales@example.com','H6789012');
INSERT INTO CLIENTES (NombreCliente, ApellidoCliente, Fecha_Nacimiento_Cliente, TelefonoCliente, Tipo_DocumentoID, DireccionCliente, LocalidadID, EmailCliente, DocumentoCliente) VALUES ('Julia','Núñez','1998-10-10','+54 9 11 6000-0012',12,'C/12 12',12,'julia.nunez@example.com','I7890123');
INSERT INTO CLIENTES (NombreCliente, ApellidoCliente, Fecha_Nacimiento_Cliente, TelefonoCliente, Tipo_DocumentoID, DireccionCliente, LocalidadID, EmailCliente, DocumentoCliente) VALUES ('Sergio','Giménez','1970-07-07','+54 9 11 6000-0013',13,'St. 13 13',13,'sergio.gimenez@example.com','J8901234');
INSERT INTO CLIENTES (NombreCliente, ApellidoCliente, Fecha_Nacimiento_Cliente, TelefonoCliente, Tipo_DocumentoID, DireccionCliente, LocalidadID, EmailCliente, DocumentoCliente) VALUES ('Valentina','Herrera','2002-05-05','+54 9 11 6000-0014',14,'Str. 14 14',14,'valentina.herrera@example.com','K9012345');
INSERT INTO CLIENTES (NombreCliente, ApellidoCliente, Fecha_Nacimiento_Cliente, TelefonoCliente, Tipo_DocumentoID, DireccionCliente, LocalidadID, EmailCliente, DocumentoCliente) VALUES ('Raúl','Ibáñez','1960-03-03','+54 9 11 6000-0015',15,'Via 15 15',15,'raul.ibanez@example.com','L0123456');

GO

-- 23) EMPLEADOS (15) -> Tipo_DocumentoID 1..15, LocalidadID 1..15
INSERT INTO EMPLEADOS (NombreEmpleado, ApellidoEmpleado, Fecha_Nacimiento_Empleado, DireccionEmpleado, TelefonoEmpleado, EmailEmpleado, LocalidadID, Tipo_DocumentoID, DocumentoEmpleado) VALUES ('Marcos','Alvarez','1980-01-20','Av. Empleado 1', '+54 9 11 7000-0001','marcos.alvarez@empresa.com',1,1,'20123456');
INSERT INTO EMPLEADOS (NombreEmpleado, ApellidoEmpleado, Fecha_Nacimiento_Empleado, DireccionEmpleado, TelefonoEmpleado, EmailEmpleado, LocalidadID, Tipo_DocumentoID, DocumentoEmpleado) VALUES ('Silvia','Castro','1985-02-14','Calle Empleado 2', '+54 9 11 7000-0002','silvia.castro@empresa.com',2,2,'20-22334455-2');
INSERT INTO EMPLEADOS (NombreEmpleado, ApellidoEmpleado, Fecha_Nacimiento_Empleado, DireccionEmpleado, TelefonoEmpleado, EmailEmpleado, LocalidadID, Tipo_DocumentoID, DocumentoEmpleado) VALUES ('Hugo','Benítez','1974-03-30','Calle Empleado 3', '+54 9 11 7000-0003','hugo.benitez@empresa.com',3,3,'C3344556');
INSERT INTO EMPLEADOS (NombreEmpleado, ApellidoEmpleado, Fecha_Nacimiento_Empleado, DireccionEmpleado, TelefonoEmpleado, EmailEmpleado, LocalidadID, Tipo_DocumentoID, DocumentoEmpleado) VALUES ('Natalia','Duarte','1991-04-25','Av. Empleado 4', '+54 9 11 7000-0004','natalia.duarte@empresa.com',4,4,'D4455667');
INSERT INTO EMPLEADOS (NombreEmpleado, ApellidoEmpleado, Fecha_Nacimiento_Empleado, DireccionEmpleado, TelefonoEmpleado, EmailEmpleado, LocalidadID, Tipo_DocumentoID, DocumentoEmpleado) VALUES ('Ezequiel','Muñoz','1989-06-18','Calle Empleado 5', '+54 9 11 7000-0005','ezequiel.munoz@empresa.com',5,5,'E5566778');
INSERT INTO EMPLEADOS (NombreEmpleado, ApellidoEmpleado, Fecha_Nacimiento_Empleado, DireccionEmpleado, TelefonoEmpleado, EmailEmpleado, LocalidadID, Tipo_DocumentoID, DocumentoEmpleado) VALUES ('Belén','Paz','1993-07-07','Calle Empleado 6', '+54 9 11 7000-0006','belen.paz@empresa.com',6,6,'F6677889');
INSERT INTO EMPLEADOS (NombreEmpleado, ApellidoEmpleado, Fecha_Nacimiento_Empleado, DireccionEmpleado, TelefonoEmpleado, EmailEmpleado, LocalidadID, Tipo_DocumentoID, DocumentoEmpleado) VALUES ('Rodrigo','Suárez','1978-08-08','Av. Empleado 7', '+54 9 11 7000-0007','rodrigo.suarez@empresa.com',7,7,'G7788990');
INSERT INTO EMPLEADOS (NombreEmpleado, ApellidoEmpleado, Fecha_Nacimiento_Empleado, DireccionEmpleado, TelefonoEmpleado, EmailEmpleado, LocalidadID, Tipo_DocumentoID, DocumentoEmpleado) VALUES ('Marta','Cárdenas','1983-09-09','Calle Empleado 8', '+54 9 11 7000-0008','marta.cardenas@empresa.com',8,8,'H8899001');
INSERT INTO EMPLEADOS (NombreEmpleado, ApellidoEmpleado, Fecha_Nacimiento_Empleado, DireccionEmpleado, TelefonoEmpleado, EmailEmpleado, LocalidadID, Tipo_DocumentoID, DocumentoEmpleado) VALUES ('Ignacio','Arias','1996-10-10','Av. Empleado 9', '+54 9 11 7000-0009','ignacio.arias@empresa.com',9,9,'I9900112');
INSERT INTO EMPLEADOS (NombreEmpleado, ApellidoEmpleado, Fecha_Nacimiento_Empleado, DireccionEmpleado, TelefonoEmpleado, EmailEmpleado, LocalidadID, Tipo_DocumentoID, DocumentoEmpleado) VALUES ('Patricia','Molina','1976-11-11','Calle Empleado 10', '+54 9 11 7000-0010','patricia.molina@empresa.com',10,10,'J0011223');
INSERT INTO EMPLEADOS (NombreEmpleado, ApellidoEmpleado, Fecha_Nacimiento_Empleado, DireccionEmpleado, TelefonoEmpleado, EmailEmpleado, LocalidadID, Tipo_DocumentoID, DocumentoEmpleado) VALUES ('Fabián','Sánchez','1981-12-12','Av. Empleado 11', '+54 9 11 7000-0011','fabian.sanchez@empresa.com',11,11,'K1122334');
INSERT INTO EMPLEADOS (NombreEmpleado, ApellidoEmpleado, Fecha_Nacimiento_Empleado, DireccionEmpleado, TelefonoEmpleado, EmailEmpleado, LocalidadID, Tipo_DocumentoID, DocumentoEmpleado) VALUES ('Carolina','Ortiz','1994-01-01','Calle Empleado 12', '+54 9 11 7000-0012','carolina.ortiz@empresa.com',12,12,'L2233445');
INSERT INTO EMPLEADOS (NombreEmpleado, ApellidoEmpleado, Fecha_Nacimiento_Empleado, DireccionEmpleado, TelefonoEmpleado, EmailEmpleado, LocalidadID, Tipo_DocumentoID, DocumentoEmpleado) VALUES ('Alberto','Suárez','1972-02-02','Av. Empleado 13', '+54 9 11 7000-0013','alberto.suarez@empresa.com',13,13,'M3344556');
INSERT INTO EMPLEADOS (NombreEmpleado, ApellidoEmpleado, Fecha_Nacimiento_Empleado, DireccionEmpleado, TelefonoEmpleado, EmailEmpleado, LocalidadID, Tipo_DocumentoID, DocumentoEmpleado) VALUES ('Verónica','Cruz','1986-03-03','Calle Empleado 14', '+54 9 11 7000-0014','veronica.cruz@empresa.com',14,14,'N4455667');
INSERT INTO EMPLEADOS (NombreEmpleado, ApellidoEmpleado, Fecha_Nacimiento_Empleado, DireccionEmpleado, TelefonoEmpleado, EmailEmpleado, LocalidadID, Tipo_DocumentoID, DocumentoEmpleado) VALUES ('Horacio','Méndez','1965-04-04','Av. Empleado 15', '+54 9 11 7000-0015','horacio.mendez@empresa.com',15,15,'O5566778');

GO

-- 24) AFILIADOS (15) -> Plan_Obra_SocialID 1..15, ClienteID 1..15
INSERT INTO AFILIADOS (Plan_Obra_SocialID, ClienteID) VALUES (1,1);
INSERT INTO AFILIADOS (Plan_Obra_SocialID, ClienteID) VALUES (2,2);
INSERT INTO AFILIADOS (Plan_Obra_SocialID, ClienteID) VALUES (3,3);
INSERT INTO AFILIADOS (Plan_Obra_SocialID, ClienteID) VALUES (4,4);
INSERT INTO AFILIADOS (Plan_Obra_SocialID, ClienteID) VALUES (5,5);
INSERT INTO AFILIADOS (Plan_Obra_SocialID, ClienteID) VALUES (6,6);
INSERT INTO AFILIADOS (Plan_Obra_SocialID, ClienteID) VALUES (7,7);
INSERT INTO AFILIADOS (Plan_Obra_SocialID, ClienteID) VALUES (8,8);
INSERT INTO AFILIADOS (Plan_Obra_SocialID, ClienteID) VALUES (9,9);
INSERT INTO AFILIADOS (Plan_Obra_SocialID, ClienteID) VALUES (10,10);
INSERT INTO AFILIADOS (Plan_Obra_SocialID, ClienteID) VALUES (11,11);
INSERT INTO AFILIADOS (Plan_Obra_SocialID, ClienteID) VALUES (12,12);
INSERT INTO AFILIADOS (Plan_Obra_SocialID, ClienteID) VALUES (13,13);
INSERT INTO AFILIADOS (Plan_Obra_SocialID, ClienteID) VALUES (14,14);
INSERT INTO AFILIADOS (Plan_Obra_SocialID, ClienteID) VALUES (15,15);

GO

-- 25) DOCTORES (15) -> EspecialidadID 1..15
INSERT INTO DOCTORES (Nombre_Doctor, Apellido_Doctor, Matricula_Doctor, EspecialidadID) VALUES ('Alejandro','Marín','MAT-1001',1);
INSERT INTO DOCTORES (Nombre_Doctor, Apellido_Doctor, Matricula_Doctor, EspecialidadID) VALUES ('Patricia','Salas','MAT-1002',2);
INSERT INTO DOCTORES (Nombre_Doctor, Apellido_Doctor, Matricula_Doctor, EspecialidadID) VALUES ('Ricardo','Vila','MAT-1003',3);
INSERT INTO DOCTORES (Nombre_Doctor, Apellido_Doctor, Matricula_Doctor, EspecialidadID) VALUES ('Beatriz','Luna','MAT-1004',4);
INSERT INTO DOCTORES (Nombre_Doctor, Apellido_Doctor, Matricula_Doctor, EspecialidadID) VALUES ('Marcelo','Ibáñez','MAT-1005',5);
INSERT INTO DOCTORES (Nombre_Doctor, Apellido_Doctor, Matricula_Doctor, EspecialidadID) VALUES ('Silvana','Rey','MAT-1006',6);
INSERT INTO DOCTORES (Nombre_Doctor, Apellido_Doctor, Matricula_Doctor, EspecialidadID) VALUES ('Germán','Quiroga','MAT-1007',7);
INSERT INTO DOCTORES (Nombre_Doctor, Apellido_Doctor, Matricula_Doctor, EspecialidadID) VALUES ('Lorena','Cano','MAT-1008',8);
INSERT INTO DOCTORES (Nombre_Doctor, Apellido_Doctor, Matricula_Doctor, EspecialidadID) VALUES ('Félix','Morán','MAT-1009',9);
INSERT INTO DOCTORES (Nombre_Doctor, Apellido_Doctor, Matricula_Doctor, EspecialidadID) VALUES ('Irene','Polo','MAT-1010',10);
INSERT INTO DOCTORES (Nombre_Doctor, Apellido_Doctor, Matricula_Doctor, EspecialidadID) VALUES ('Óscar','Díaz','MAT-1011',11);
INSERT INTO DOCTORES (Nombre_Doctor, Apellido_Doctor, Matricula_Doctor, EspecialidadID) VALUES ('Mónica','Roldán','MAT-1012',12);
INSERT INTO DOCTORES (Nombre_Doctor, Apellido_Doctor, Matricula_Doctor, EspecialidadID) VALUES ('Bruno','León','MAT-1013',13);
INSERT INTO DOCTORES (Nombre_Doctor, Apellido_Doctor, Matricula_Doctor, EspecialidadID) VALUES ('Daniela','Serrano','MAT-1014',14);
INSERT INTO DOCTORES (Nombre_Doctor, Apellido_Doctor, Matricula_Doctor, EspecialidadID) VALUES ('Esteban','Navarro','MAT-1015',15);

GO

-- 26) RECETAS (15) -> AfiliadoID 1..15, DoctorID 1..15
INSERT INTO RECETAS (Fecha, AfiliadoID, DoctorID) VALUES ('2025-06-01 10:00:00',1,1);
INSERT INTO RECETAS (Fecha, AfiliadoID, DoctorID) VALUES ('2025-06-02 11:30:00',2,2);
INSERT INTO RECETAS (Fecha, AfiliadoID, DoctorID) VALUES ('2025-06-03 09:15:00',3,3);
INSERT INTO RECETAS (Fecha, AfiliadoID, DoctorID) VALUES ('2025-06-04 14:00:00',4,4);
INSERT INTO RECETAS (Fecha, AfiliadoID, DoctorID) VALUES ('2025-06-05 16:45:00',5,5);
INSERT INTO RECETAS (Fecha, AfiliadoID, DoctorID) VALUES ('2025-06-06 08:20:00',6,6);
INSERT INTO RECETAS (Fecha, AfiliadoID, DoctorID) VALUES ('2025-06-07 13:00:00',7,7);
INSERT INTO RECETAS (Fecha, AfiliadoID, DoctorID) VALUES ('2025-06-08 15:30:00',8,8);
INSERT INTO RECETAS (Fecha, AfiliadoID, DoctorID) VALUES ('2025-06-09 10:10:00',9,9);
INSERT INTO RECETAS (Fecha, AfiliadoID, DoctorID) VALUES ('2025-06-10 12:00:00',10,10);
INSERT INTO RECETAS (Fecha, AfiliadoID, DoctorID) VALUES ('2025-06-11 09:40:00',11,11);
INSERT INTO RECETAS (Fecha, AfiliadoID, DoctorID) VALUES ('2025-06-12 17:20:00',12,12);
INSERT INTO RECETAS (Fecha, AfiliadoID, DoctorID) VALUES ('2025-06-13 11:05:00',13,13);
INSERT INTO RECETAS (Fecha, AfiliadoID, DoctorID) VALUES ('2025-06-14 14:50:00',14,14);
INSERT INTO RECETAS (Fecha, AfiliadoID, DoctorID) VALUES ('2025-06-15 08:00:00',15,15);

GO

-- 27) ESTADOS_COBERTURAS (15)
INSERT INTO ESTADOS_COBERTURAS (Descripcion) VALUES ('Pendiente');
INSERT INTO ESTADOS_COBERTURAS (Descripcion) VALUES ('Aprobado');
INSERT INTO ESTADOS_COBERTURAS (Descripcion) VALUES ('Rechazado');
INSERT INTO ESTADOS_COBERTURAS (Descripcion) VALUES ('En revisión');
INSERT INTO ESTADOS_COBERTURAS (Descripcion) VALUES ('Completado');
INSERT INTO ESTADOS_COBERTURAS (Descripcion) VALUES ('Parcial');
INSERT INTO ESTADOS_COBERTURAS (Descripcion) VALUES ('Sin validar');
INSERT INTO ESTADOS_COBERTURAS (Descripcion) VALUES ('Validado');
INSERT INTO ESTADOS_COBERTURAS (Descripcion) VALUES ('Observado');
INSERT INTO ESTADOS_COBERTURAS (Descripcion) VALUES ('Cancelado');
INSERT INTO ESTADOS_COBERTURAS (Descripcion) VALUES ('Requerido trámite');
INSERT INTO ESTADOS_COBERTURAS (Descripcion) VALUES ('A la espera de documentación');
INSERT INTO ESTADOS_COBERTURAS (Descripcion) VALUES ('Procesado');
INSERT INTO ESTADOS_COBERTURAS (Descripcion) VALUES ('Aplicado');
INSERT INTO ESTADOS_COBERTURAS (Descripcion) VALUES ('No corresponde');

GO

-- 28) COBERTURAS (15) -> Estado_CoberturaID 1..15, AfiliadoID 1..15, RecetaID 1..15
INSERT INTO COBERTURAS (Validacion_Obra_Social, Estado_CoberturaID, AfiliadoID, RecetaID) VALUES (1,1,1,1);
INSERT INTO COBERTURAS (Validacion_Obra_Social, Estado_CoberturaID, AfiliadoID, RecetaID) VALUES (0,2,2,2);
INSERT INTO COBERTURAS (Validacion_Obra_Social, Estado_CoberturaID, AfiliadoID, RecetaID) VALUES (1,3,3,3);
INSERT INTO COBERTURAS (Validacion_Obra_Social, Estado_CoberturaID, AfiliadoID, RecetaID) VALUES (0,4,4,4);
INSERT INTO COBERTURAS (Validacion_Obra_Social, Estado_CoberturaID, AfiliadoID, RecetaID) VALUES (1,5,5,5);
INSERT INTO COBERTURAS (Validacion_Obra_Social, Estado_CoberturaID, AfiliadoID, RecetaID) VALUES (0,6,6,6);
INSERT INTO COBERTURAS (Validacion_Obra_Social, Estado_CoberturaID, AfiliadoID, RecetaID) VALUES (1,7,7,7);
INSERT INTO COBERTURAS (Validacion_Obra_Social, Estado_CoberturaID, AfiliadoID, RecetaID) VALUES (0,8,8,8);
INSERT INTO COBERTURAS (Validacion_Obra_Social, Estado_CoberturaID, AfiliadoID, RecetaID) VALUES (1,9,9,9);
INSERT INTO COBERTURAS (Validacion_Obra_Social, Estado_CoberturaID, AfiliadoID, RecetaID) VALUES (0,10,10,10);
INSERT INTO COBERTURAS (Validacion_Obra_Social, Estado_CoberturaID, AfiliadoID, RecetaID) VALUES (1,11,11,11);
INSERT INTO COBERTURAS (Validacion_Obra_Social, Estado_CoberturaID, AfiliadoID, RecetaID) VALUES (0,12,12,12);
INSERT INTO COBERTURAS (Validacion_Obra_Social, Estado_CoberturaID, AfiliadoID, RecetaID) VALUES (1,13,13,13);
INSERT INTO COBERTURAS (Validacion_Obra_Social, Estado_CoberturaID, AfiliadoID, RecetaID) VALUES (0,14,14,14);
INSERT INTO COBERTURAS (Validacion_Obra_Social, Estado_CoberturaID, AfiliadoID, RecetaID) VALUES (1,15,15,15);

GO

-- 29) DETALLES_RECETAS (15) -> RecetaID 1..15, MedicamentoID 1..15
INSERT INTO DETALLES_RECETAS (RecetaID, Cantidad, MedicamentoID) VALUES (1,20,1);
INSERT INTO DETALLES_RECETAS (RecetaID, Cantidad, MedicamentoID) VALUES (2,10,2);
INSERT INTO DETALLES_RECETAS (RecetaID, Cantidad, MedicamentoID) VALUES (3,6,3);
INSERT INTO DETALLES_RECETAS (RecetaID, Cantidad, MedicamentoID) VALUES (4,30,4);
INSERT INTO DETALLES_RECETAS (RecetaID, Cantidad, MedicamentoID) VALUES (5,14,5);
INSERT INTO DETALLES_RECETAS (RecetaID, Cantidad, MedicamentoID) VALUES (6,28,6);
INSERT INTO DETALLES_RECETAS (RecetaID, Cantidad, MedicamentoID) VALUES (7,1,7);
INSERT INTO DETALLES_RECETAS (RecetaID, Cantidad, MedicamentoID) VALUES (8,2,8);
INSERT INTO DETALLES_RECETAS (RecetaID, Cantidad, MedicamentoID) VALUES (9,3,9);
INSERT INTO DETALLES_RECETAS (RecetaID, Cantidad, MedicamentoID) VALUES (10,12,10);
INSERT INTO DETALLES_RECETAS (RecetaID, Cantidad, MedicamentoID) VALUES (11,7,11);
INSERT INTO DETALLES_RECETAS (RecetaID, Cantidad, MedicamentoID) VALUES (12,4,12);
INSERT INTO DETALLES_RECETAS (RecetaID, Cantidad, MedicamentoID) VALUES (13,2,13);
INSERT INTO DETALLES_RECETAS (RecetaID, Cantidad, MedicamentoID) VALUES (14,5,14);
INSERT INTO DETALLES_RECETAS (RecetaID, Cantidad, MedicamentoID) VALUES (15,8,15);

GO

-- 30) DESCUENTOS (15) -> LocalidadID 1..15, Tipo_SuministroID 1..15, Obra_SocialID 1..15, Tipo_DescuentoID 1..15
INSERT INTO DESCUENTOS (LocalidadID, Fecha_Descuento, Tipo_SuministroID, Obra_SocialID, Porcentaje_Descuento, Tipo_DescuentoID) VALUES (1,'2025-06-01 00:00:00',1,1,10.00,1);
INSERT INTO DESCUENTOS (LocalidadID, Fecha_Descuento, Tipo_SuministroID, Obra_SocialID, Porcentaje_Descuento, Tipo_DescuentoID) VALUES (2,'2025-06-05 00:00:00',2,2,5.00,2);
INSERT INTO DESCUENTOS (LocalidadID, Fecha_Descuento, Tipo_SuministroID, Obra_SocialID, Porcentaje_Descuento, Tipo_DescuentoID) VALUES (3,'2025-06-10 00:00:00',3,3,20.00,3);
INSERT INTO DESCUENTOS (LocalidadID, Fecha_Descuento, Tipo_SuministroID, Obra_SocialID, Porcentaje_Descuento, Tipo_DescuentoID) VALUES (4,'2025-07-01 00:00:00',4,4,15.00,4);
INSERT INTO DESCUENTOS (LocalidadID, Fecha_Descuento, Tipo_SuministroID, Obra_SocialID, Porcentaje_Descuento, Tipo_DescuentoID) VALUES (5,'2025-07-15 00:00:00',5,5,12.50,5);
INSERT INTO DESCUENTOS (LocalidadID, Fecha_Descuento, Tipo_SuministroID, Obra_SocialID, Porcentaje_Descuento, Tipo_DescuentoID) VALUES (6,'2025-08-01 00:00:00',6,6,8.00,6);
INSERT INTO DESCUENTOS (LocalidadID, Fecha_Descuento, Tipo_SuministroID, Obra_SocialID, Porcentaje_Descuento, Tipo_DescuentoID) VALUES (7,'2025-08-15 00:00:00',7,7,18.00,7);
INSERT INTO DESCUENTOS (LocalidadID, Fecha_Descuento, Tipo_SuministroID, Obra_SocialID, Porcentaje_Descuento, Tipo_DescuentoID) VALUES (8,'2025-09-01 00:00:00',8,8,7.50,8);
INSERT INTO DESCUENTOS (LocalidadID, Fecha_Descuento, Tipo_SuministroID, Obra_SocialID, Porcentaje_Descuento, Tipo_DescuentoID) VALUES (9,'2025-09-10 00:00:00',9,9,25.00,9);
INSERT INTO DESCUENTOS (LocalidadID, Fecha_Descuento, Tipo_SuministroID, Obra_SocialID, Porcentaje_Descuento, Tipo_DescuentoID) VALUES (10,'2025-10-01 00:00:00',10,10,30.00,10);
INSERT INTO DESCUENTOS (LocalidadID, Fecha_Descuento, Tipo_SuministroID, Obra_SocialID, Porcentaje_Descuento, Tipo_DescuentoID) VALUES (11,'2025-10-15 00:00:00',11,11,6.00,11);
INSERT INTO DESCUENTOS (LocalidadID, Fecha_Descuento, Tipo_SuministroID, Obra_SocialID, Porcentaje_Descuento, Tipo_DescuentoID) VALUES (12,'2025-11-01 00:00:00',12,12,9.00,12);
INSERT INTO DESCUENTOS (LocalidadID, Fecha_Descuento, Tipo_SuministroID, Obra_SocialID, Porcentaje_Descuento, Tipo_DescuentoID) VALUES (13,'2025-11-10 00:00:00',13,13,11.00,13);
INSERT INTO DESCUENTOS (LocalidadID, Fecha_Descuento, Tipo_SuministroID, Obra_SocialID, Porcentaje_Descuento, Tipo_DescuentoID) VALUES (14,'2025-12-01 00:00:00',14,14,14.00,14);
INSERT INTO DESCUENTOS (LocalidadID, Fecha_Descuento, Tipo_SuministroID, Obra_SocialID, Porcentaje_Descuento, Tipo_DescuentoID) VALUES (15,'2025-12-15 00:00:00',15,15,5.50,15);

GO

-- 31) FACTURAS (15) -> EmpleadoID 1..15, ClienteID 1..15, SucursalID 1..15, Metodo_PagoID 1..15
INSERT INTO FACTURAS (Fecha_Facturacion, EmpleadoID, ClienteID, SucursalID, Metodo_PagoID) VALUES ('2025-06-01 10:05:00',1,1,1,1);
INSERT INTO FACTURAS (Fecha_Facturacion, EmpleadoID, ClienteID, SucursalID, Metodo_PagoID) VALUES ('2025-06-02 11:35:00',2,2,2,2);
INSERT INTO FACTURAS (Fecha_Facturacion, EmpleadoID, ClienteID, SucursalID, Metodo_PagoID) VALUES ('2025-06-03 09:20:00',3,3,3,3);
INSERT INTO FACTURAS (Fecha_Facturacion, EmpleadoID, ClienteID, SucursalID, Metodo_PagoID) VALUES ('2025-06-04 14:10:00',4,4,4,4);
INSERT INTO FACTURAS (Fecha_Facturacion, EmpleadoID, ClienteID, SucursalID, Metodo_PagoID) VALUES ('2025-06-05 16:50:00',5,5,5,5);
INSERT INTO FACTURAS (Fecha_Facturacion, EmpleadoID, ClienteID, SucursalID, Metodo_PagoID) VALUES ('2025-06-06 08:25:00',6,6,6,6);
INSERT INTO FACTURAS (Fecha_Facturacion, EmpleadoID, ClienteID, SucursalID, Metodo_PagoID) VALUES ('2025-06-07 13:05:00',7,7,7,7);
INSERT INTO FACTURAS (Fecha_Facturacion, EmpleadoID, ClienteID, SucursalID, Metodo_PagoID) VALUES ('2025-06-08 15:35:00',8,8,8,8);
INSERT INTO FACTURAS (Fecha_Facturacion, EmpleadoID, ClienteID, SucursalID, Metodo_PagoID) VALUES ('2025-06-09 10:15:00',9,9,9,9);
INSERT INTO FACTURAS (Fecha_Facturacion, EmpleadoID, ClienteID, SucursalID, Metodo_PagoID) VALUES ('2025-06-10 12:05:00',10,10,10,10);
INSERT INTO FACTURAS (Fecha_Facturacion, EmpleadoID, ClienteID, SucursalID, Metodo_PagoID) VALUES ('2025-06-11 09:45:00',11,11,11,11);
INSERT INTO FACTURAS (Fecha_Facturacion, EmpleadoID, ClienteID, SucursalID, Metodo_PagoID) VALUES ('2025-06-12 17:25:00',12,12,12,12);
INSERT INTO FACTURAS (Fecha_Facturacion, EmpleadoID, ClienteID, SucursalID, Metodo_PagoID) VALUES ('2025-06-13 11:10:00',13,13,13,13);
INSERT INTO FACTURAS (Fecha_Facturacion, EmpleadoID, ClienteID, SucursalID, Metodo_PagoID) VALUES ('2025-06-14 14:55:00',14,14,14,14);
INSERT INTO FACTURAS (Fecha_Facturacion, EmpleadoID, ClienteID, SucursalID, Metodo_PagoID) VALUES ('2025-06-15 08:05:00',15,15,15,15);

GO

-- 32) DETALLES_FACTURAS (15) -> DescuentoID 1..15, ProductoID 1..15, MedicamentoID 1..15, CoberturaID 1..15, FacturaID 1..15
INSERT INTO DETALLES_FACTURAS (DescuentoID, ProductoID, MedicamentoID, Cantidad, Precio, CoberturaID, FacturaID) VALUES (1,1,NULL,1,1200.00,1,1);
INSERT INTO DETALLES_FACTURAS (DescuentoID, ProductoID, MedicamentoID, Cantidad, Precio, CoberturaID, FacturaID) VALUES (2,NULL,2,2,120.00,2,2);
INSERT INTO DETALLES_FACTURAS (DescuentoID, ProductoID, MedicamentoID, Cantidad, Precio, CoberturaID, FacturaID) VALUES (3,3,NULL,5,350.00,3,3);
INSERT INTO DETALLES_FACTURAS (DescuentoID, ProductoID, MedicamentoID, Cantidad, Precio, CoberturaID, FacturaID) VALUES (4,NULL,4,1,180.00,4,4);
INSERT INTO DETALLES_FACTURAS (DescuentoID, ProductoID, MedicamentoID, Cantidad, Precio, CoberturaID, FacturaID) VALUES (5,5,NULL,1,2000.00,5,5);
INSERT INTO DETALLES_FACTURAS (DescuentoID, ProductoID, MedicamentoID, Cantidad, Precio, CoberturaID, FacturaID) VALUES (6,NULL,6,3,300.00,6,6);
INSERT INTO DETALLES_FACTURAS (DescuentoID, ProductoID, MedicamentoID, Cantidad, Precio, CoberturaID, FacturaID) VALUES (7,7,NULL,4,380.00,7,7);
INSERT INTO DETALLES_FACTURAS (DescuentoID, ProductoID, MedicamentoID, Cantidad, Precio, CoberturaID, FacturaID) VALUES (8,NULL,8,2,480.00,8,8);
INSERT INTO DETALLES_FACTURAS (DescuentoID, ProductoID, MedicamentoID, Cantidad, Precio, CoberturaID, FacturaID) VALUES (9,9,NULL,2,900.00,9,9);
INSERT INTO DETALLES_FACTURAS (DescuentoID, ProductoID, MedicamentoID, Cantidad, Precio, CoberturaID, FacturaID) VALUES (10,NULL,10,10,60.00,10,10);
INSERT INTO DETALLES_FACTURAS (DescuentoID, ProductoID, MedicamentoID, Cantidad, Precio, CoberturaID, FacturaID) VALUES (11,11,NULL,1,800.00,11,11);
INSERT INTO DETALLES_FACTURAS (DescuentoID, ProductoID, MedicamentoID, Cantidad, Precio, CoberturaID, FacturaID) VALUES (12,NULL,12,2,220.00,12,12);
INSERT INTO DETALLES_FACTURAS (DescuentoID, ProductoID, MedicamentoID, Cantidad, Precio, CoberturaID, FacturaID) VALUES (13,13,NULL,6,420.00,13,13);
INSERT INTO DETALLES_FACTURAS (DescuentoID, ProductoID, MedicamentoID, Cantidad, Precio, CoberturaID, FacturaID) VALUES (14,NULL,14,1,260.00,14,14);
INSERT INTO DETALLES_FACTURAS (DescuentoID, ProductoID, MedicamentoID, Cantidad, Precio, CoberturaID, FacturaID) VALUES (15,15,NULL,3,120.00,15,15);

GO

-- 33) COMPRAS (15) -> EmpleadoID 1..15, ProveedorID 1..15, RepartidorID 1..15, SucursalID 1..15
INSERT INTO COMPRAS (Fecha_Compra, EmpleadoID, ProveedorID, RepartidorID, SucursalID,activo) VALUES ('2025-05-01 09:00:00',1,1,1,1, 1);
INSERT INTO COMPRAS (Fecha_Compra, EmpleadoID, ProveedorID, RepartidorID, SucursalID, activo) VALUES ('2025-05-02 10:00:00',2,2,2,2, 1);
INSERT INTO COMPRAS (Fecha_Compra, EmpleadoID, ProveedorID, RepartidorID, SucursalID, activo) VALUES ('2025-05-03 11:00:00',3,3,3,3, 1);
INSERT INTO COMPRAS (Fecha_Compra, EmpleadoID, ProveedorID, RepartidorID, SucursalID, activo) VALUES ('2025-05-04 12:00:00',4,4,4,4, 1);
INSERT INTO COMPRAS (Fecha_Compra, EmpleadoID, ProveedorID, RepartidorID, SucursalID, activo) VALUES ('2025-05-05 13:00:00',5,5,5,5, 1);
INSERT INTO COMPRAS (Fecha_Compra, EmpleadoID, ProveedorID, RepartidorID, SucursalID, activo) VALUES ('2025-05-06 14:00:00',6,6,6,6, 1);
INSERT INTO COMPRAS (Fecha_Compra, EmpleadoID, ProveedorID, RepartidorID, SucursalID, activo) VALUES ('2025-05-07 15:00:00',7,7,7,7, 1);
INSERT INTO COMPRAS (Fecha_Compra, EmpleadoID, ProveedorID, RepartidorID, SucursalID, activo) VALUES ('2025-05-08 16:00:00',8,8,8,8, 1);
INSERT INTO COMPRAS (Fecha_Compra, EmpleadoID, ProveedorID, RepartidorID, SucursalID, activo) VALUES ('2025-05-09 17:00:00',9,9,9,9, 1);
INSERT INTO COMPRAS (Fecha_Compra, EmpleadoID, ProveedorID, RepartidorID, SucursalID, activo) VALUES ('2025-05-10 18:00:00',10,10,10,10, 1);
INSERT INTO COMPRAS (Fecha_Compra, EmpleadoID, ProveedorID, RepartidorID, SucursalID, activo) VALUES ('2025-05-11 08:00:00',11,11,11,11, 0);
INSERT INTO COMPRAS (Fecha_Compra, EmpleadoID, ProveedorID, RepartidorID, SucursalID, activo) VALUES ('2025-05-12 09:30:00',12,12,12,12, 0);
INSERT INTO COMPRAS (Fecha_Compra, EmpleadoID, ProveedorID, RepartidorID, SucursalID, activo) VALUES ('2025-05-13 10:15:00',13,13,13,13,1);
INSERT INTO COMPRAS (Fecha_Compra, EmpleadoID, ProveedorID, RepartidorID, SucursalID, activo) VALUES ('2025-05-14 11:45:00',14,14,14,14,1);
INSERT INTO COMPRAS (Fecha_Compra, EmpleadoID, ProveedorID, RepartidorID, SucursalID, activo) VALUES ('2025-05-15 12:30:00',15,15,15,15,1);

GO

-- 34) DETALLES_COMPRAS (15) -> CompraID 1..15, Lote_ProductoID 1..15, Lote_MedicamentoID 1..15
INSERT INTO DETALLES_COMPRAS (CompraID, Lote_ProductoID, Codigo_Barra_MedicamentoID, Codigo_Barra_ProductoID, Cantidad, Lote_MedicamentoID, activo) VALUES (1,1,NULL,'P000000001',10,1,1);
INSERT INTO DETALLES_COMPRAS (CompraID, Lote_ProductoID, Codigo_Barra_MedicamentoID, Codigo_Barra_ProductoID, Cantidad, Lote_MedicamentoID, activo) VALUES (2,2,'M000000002',NULL,50,2,1);
INSERT INTO DETALLES_COMPRAS (CompraID, Lote_ProductoID, Codigo_Barra_MedicamentoID, Codigo_Barra_ProductoID, Cantidad, Lote_MedicamentoID, activo) VALUES (3,3,NULL,'P000000003',100,3,1);
INSERT INTO DETALLES_COMPRAS (CompraID, Lote_ProductoID, Codigo_Barra_MedicamentoID, Codigo_Barra_ProductoID, Cantidad, Lote_MedicamentoID, activo) VALUES (4,4,'M000000004',NULL,30,4,1);
INSERT INTO DETALLES_COMPRAS (CompraID, Lote_ProductoID, Codigo_Barra_MedicamentoID, Codigo_Barra_ProductoID, Cantidad, Lote_MedicamentoID, activo) VALUES (5,5,NULL,'P000000005',5,5,1);
INSERT INTO DETALLES_COMPRAS (CompraID, Lote_ProductoID, Codigo_Barra_MedicamentoID, Codigo_Barra_ProductoID, Cantidad, Lote_MedicamentoID, activo) VALUES (6,6,'M000000006',NULL,20,6,1);
INSERT INTO DETALLES_COMPRAS (CompraID, Lote_ProductoID, Codigo_Barra_MedicamentoID, Codigo_Barra_ProductoID, Cantidad, Lote_MedicamentoID, activo) VALUES (7,7,NULL,'P000000007',60,7,1);
INSERT INTO DETALLES_COMPRAS (CompraID, Lote_ProductoID, Codigo_Barra_MedicamentoID, Codigo_Barra_ProductoID, Cantidad, Lote_MedicamentoID, activo) VALUES (8,8,'M000000008',NULL,12,8,1);
INSERT INTO DETALLES_COMPRAS (CompraID, Lote_ProductoID, Codigo_Barra_MedicamentoID, Codigo_Barra_ProductoID, Cantidad, Lote_MedicamentoID, activo) VALUES (9,9,NULL,'P000000009',40,9,1);
INSERT INTO DETALLES_COMPRAS (CompraID, Lote_ProductoID, Codigo_Barra_MedicamentoID, Codigo_Barra_ProductoID, Cantidad, Lote_MedicamentoID, activo) VALUES (10,10,'M000000010',NULL,200,10,1);
INSERT INTO DETALLES_COMPRAS (CompraID, Lote_ProductoID, Codigo_Barra_MedicamentoID, Codigo_Barra_ProductoID, Cantidad, Lote_MedicamentoID, activo) VALUES (11,11,NULL,'P000000011',15,11,0);
INSERT INTO DETALLES_COMPRAS (CompraID, Lote_ProductoID, Codigo_Barra_MedicamentoID, Codigo_Barra_ProductoID, Cantidad, Lote_MedicamentoID,activo) VALUES (12,12,'M000000012',NULL,80,12,1);
INSERT INTO DETALLES_COMPRAS (CompraID, Lote_ProductoID, Codigo_Barra_MedicamentoID, Codigo_Barra_ProductoID, Cantidad, Lote_MedicamentoID, activo) VALUES (13,13,NULL,'P000000013',25,13,1);
INSERT INTO DETALLES_COMPRAS (CompraID, Lote_ProductoID, Codigo_Barra_MedicamentoID, Codigo_Barra_ProductoID, Cantidad, Lote_MedicamentoID, activo) VALUES (14,14,'M000000014',NULL,35,14,1);
INSERT INTO DETALLES_COMPRAS (CompraID, Lote_ProductoID, Codigo_Barra_MedicamentoID, Codigo_Barra_ProductoID, Cantidad, Lote_MedicamentoID,activo) VALUES (15,15,NULL,'P000000015',45,15,1);

GO

-- 35) INVENTARIOS_PRODUCTOS (15) -> SucursalID 1..15, ProductoID 1..15
INSERT INTO INVENTARIOS_PRODUCTOS (SucursalID, ProductoID, Stock_Minimo, Stock_Actual) VALUES (1,1,5,100);
INSERT INTO INVENTARIOS_PRODUCTOS (SucursalID, ProductoID, Stock_Minimo, Stock_Actual) VALUES (2,2,10,500);
INSERT INTO INVENTARIOS_PRODUCTOS (SucursalID, ProductoID, Stock_Minimo, Stock_Actual) VALUES (3,3,20,200);
INSERT INTO INVENTARIOS_PRODUCTOS (SucursalID, ProductoID, Stock_Minimo, Stock_Actual) VALUES (4,4,15,300);
INSERT INTO INVENTARIOS_PRODUCTOS (SucursalID, ProductoID, Stock_Minimo, Stock_Actual) VALUES (5,5,2,50);
INSERT INTO INVENTARIOS_PRODUCTOS (SucursalID, ProductoID, Stock_Minimo, Stock_Actual) VALUES (6,6,8,150);
INSERT INTO INVENTARIOS_PRODUCTOS (SucursalID, ProductoID, Stock_Minimo, Stock_Actual) VALUES (7,7,25,600);
INSERT INTO INVENTARIOS_PRODUCTOS (SucursalID, ProductoID, Stock_Minimo, Stock_Actual) VALUES (8,8,7,80);
INSERT INTO INVENTARIOS_PRODUCTOS (SucursalID, ProductoID, Stock_Minimo, Stock_Actual) VALUES (9,9,10,250);
INSERT INTO INVENTARIOS_PRODUCTOS (SucursalID, ProductoID, Stock_Minimo, Stock_Actual) VALUES (10,10,5,120);
INSERT INTO INVENTARIOS_PRODUCTOS (SucursalID, ProductoID, Stock_Minimo, Stock_Actual) VALUES (11,11,3,75);
INSERT INTO INVENTARIOS_PRODUCTOS (SucursalID, ProductoID, Stock_Minimo, Stock_Actual) VALUES (12,12,30,400);
INSERT INTO INVENTARIOS_PRODUCTOS (SucursalID, ProductoID, Stock_Minimo, Stock_Actual) VALUES (13,13,6,90);
INSERT INTO INVENTARIOS_PRODUCTOS (SucursalID, ProductoID, Stock_Minimo, Stock_Actual) VALUES (14,14,12,220);
INSERT INTO INVENTARIOS_PRODUCTOS (SucursalID, ProductoID, Stock_Minimo, Stock_Actual) VALUES (15,15,4,130);

GO

-- 36) INVENTARIOS_MEDICAMENTOS (15) -> SucursalID 1..15, MedicamentoID 1..15
INSERT INTO INVENTARIOS_MEDICAMENTOS (SucursalID, MedicamentoID, Stock_Minimo, Stock_Actual) VALUES (1,1,10,200);
INSERT INTO INVENTARIOS_MEDICAMENTOS (SucursalID, MedicamentoID, Stock_Minimo, Stock_Actual) VALUES (2,2,20,500);
INSERT INTO INVENTARIOS_MEDICAMENTOS (SucursalID, MedicamentoID, Stock_Minimo, Stock_Actual) VALUES (3,3,15,300);
INSERT INTO INVENTARIOS_MEDICAMENTOS (SucursalID, MedicamentoID, Stock_Minimo, Stock_Actual) VALUES (4,4,8,250);
INSERT INTO INVENTARIOS_MEDICAMENTOS (SucursalID, MedicamentoID, Stock_Minimo, Stock_Actual) VALUES (5,5,6,180);
INSERT INTO INVENTARIOS_MEDICAMENTOS (SucursalID, MedicamentoID, Stock_Minimo, Stock_Actual) VALUES (6,6,12,220);
INSERT INTO INVENTARIOS_MEDICAMENTOS (SucursalID, MedicamentoID, Stock_Minimo, Stock_Actual) VALUES (7,7,5,150);
INSERT INTO INVENTARIOS_MEDICAMENTOS (SucursalID, MedicamentoID, Stock_Minimo, Stock_Actual) VALUES (8,8,10,90);
INSERT INTO INVENTARIOS_MEDICAMENTOS (SucursalID, MedicamentoID, Stock_Minimo, Stock_Actual) VALUES (9,9,7,130);
INSERT INTO INVENTARIOS_MEDICAMENTOS (SucursalID, MedicamentoID, Stock_Minimo, Stock_Actual) VALUES (10,10,30,700);
INSERT INTO INVENTARIOS_MEDICAMENTOS (SucursalID, MedicamentoID, Stock_Minimo, Stock_Actual) VALUES (11,11,4,95);
INSERT INTO INVENTARIOS_MEDICAMENTOS (SucursalID, MedicamentoID, Stock_Minimo, Stock_Actual) VALUES (12,12,9,260);
INSERT INTO INVENTARIOS_MEDICAMENTOS (SucursalID, MedicamentoID, Stock_Minimo, Stock_Actual) VALUES (13,13,2,110);
INSERT INTO INVENTARIOS_MEDICAMENTOS (SucursalID, MedicamentoID, Stock_Minimo, Stock_Actual) VALUES (14,14,7,175);
INSERT INTO INVENTARIOS_MEDICAMENTOS (SucursalID, MedicamentoID, Stock_Minimo, Stock_Actual) VALUES (15,15,5,85);

GO

-- 37) EMPLEADOS_SUCURSALES (15) -> EmpleadoID 1..15, SucursalID 1..15
INSERT INTO EMPLEADOS_SUCURSALES (EmpleadoID, SucursalID, Fecha_Inicio, Fecha_Fin) VALUES (1,1,'2022-01-01 08:00:00',NULL);
INSERT INTO EMPLEADOS_SUCURSALES (EmpleadoID, SucursalID, Fecha_Inicio, Fecha_Fin) VALUES (2,2,'2022-02-01 08:00:00',NULL);
INSERT INTO EMPLEADOS_SUCURSALES (EmpleadoID, SucursalID, Fecha_Inicio, Fecha_Fin) VALUES (3,3,'2022-03-01 08:00:00',NULL);
INSERT INTO EMPLEADOS_SUCURSALES (EmpleadoID, SucursalID, Fecha_Inicio, Fecha_Fin) VALUES (4,4,'2022-04-01 08:00:00',NULL);
INSERT INTO EMPLEADOS_SUCURSALES (EmpleadoID, SucursalID, Fecha_Inicio, Fecha_Fin) VALUES (5,5,'2022-05-01 08:00:00',NULL);
INSERT INTO EMPLEADOS_SUCURSALES (EmpleadoID, SucursalID, Fecha_Inicio, Fecha_Fin) VALUES (6,6,'2022-06-01 08:00:00',NULL);
INSERT INTO EMPLEADOS_SUCURSALES (EmpleadoID, SucursalID, Fecha_Inicio, Fecha_Fin) VALUES (7,7,'2022-07-01 08:00:00',NULL);
INSERT INTO EMPLEADOS_SUCURSALES (EmpleadoID, SucursalID, Fecha_Inicio, Fecha_Fin) VALUES (8,8,'2022-08-01 08:00:00',NULL);
INSERT INTO EMPLEADOS_SUCURSALES (EmpleadoID, SucursalID, Fecha_Inicio, Fecha_Fin) VALUES (9,9,'2022-09-01 08:00:00',NULL);
INSERT INTO EMPLEADOS_SUCURSALES (EmpleadoID, SucursalID, Fecha_Inicio, Fecha_Fin) VALUES (10,10,'2022-10-01 08:00:00',NULL);
INSERT INTO EMPLEADOS_SUCURSALES (EmpleadoID, SucursalID, Fecha_Inicio, Fecha_Fin) VALUES (11,11,'2022-11-01 08:00:00',NULL);
INSERT INTO EMPLEADOS_SUCURSALES (EmpleadoID, SucursalID, Fecha_Inicio, Fecha_Fin) VALUES (12,12,'2022-12-01 08:00:00',NULL);
INSERT INTO EMPLEADOS_SUCURSALES (EmpleadoID, SucursalID, Fecha_Inicio, Fecha_Fin) VALUES (13,13,'2023-01-01 08:00:00',NULL);
INSERT INTO EMPLEADOS_SUCURSALES (EmpleadoID, SucursalID, Fecha_Inicio, Fecha_Fin) VALUES (14,14,'2023-02-01 08:00:00',NULL);
INSERT INTO EMPLEADOS_SUCURSALES (EmpleadoID, SucursalID, Fecha_Inicio, Fecha_Fin) VALUES (15,15,'2023-03-01 08:00:00',NULL);

GO

