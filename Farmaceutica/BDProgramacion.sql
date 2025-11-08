--create database Farmaceutica
--use Farmaceutica

-- 1. TIPOS_DOCUMENTOS
CREATE TABLE TIPOS_DOCUMENTOS (
    Tipo_DocumentoID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_TIPOS_DOCUMENTOS PRIMARY KEY,
    Descripcion VARCHAR(250) NULL
);
GO

-- 2. PAISES
CREATE TABLE PAISES (
    PaisID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_PAISES PRIMARY KEY,
    Descripciones VARCHAR(200) NULL
);
GO

-- 3. PROVINCIAS (FK -> PAISES)
CREATE TABLE PROVINCIAS (
    ProvinciaID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_PROVINCIAS PRIMARY KEY,
    PaisID INT NOT NULL,
    Descripcion VARCHAR(200) NULL,
    CONSTRAINT FK_PROVINCIAS_PAISES FOREIGN KEY (PaisID) REFERENCES PAISES(PaisID)
);
GO

-- 4. LOCALIDADES (FK -> PROVINCIAS)
CREATE TABLE LOCALIDADES (
    LocalidadID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_LOCALIDADES PRIMARY KEY,
    Descripcion VARCHAR(250) NULL,
    ProvinciaID INT NULL,
    CONSTRAINT FK_LOCALIDADES_PROVINCIAS FOREIGN KEY (ProvinciaID) REFERENCES PROVINCIAS(ProvinciaID)
);
GO

-- 5. TIPOS_PRESENTACIONES
CREATE TABLE TIPOS_PRESENTACIONES (
    Tipo_PresentacionID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_TIPOS_PRESENTACIONES PRIMARY KEY,
    Descripcion VARCHAR(200) NULL
);
GO

-- 6. UNIDADES_MEDIDAS
CREATE TABLE UNIDADES_MEDIDAS (
    Unidad_MedidaID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_UNIDADES_MEDIDAS PRIMARY KEY,
    Descripcion VARCHAR(200) NULL
);
GO

-- 7. TIPOS_SUMINISTROS
CREATE TABLE TIPOS_SUMINISTROS (
    Tipo_SuministroID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_TIPOS_SUMINISTROS PRIMARY KEY,
    Descripcion VARCHAR(200) NULL
);
GO

-- 8. CLASIFICACIONES_SUMINISTROS
CREATE TABLE CLASIFICACIONES_SUMINISTROS (
    Clasificacion_SuministroID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_CLASIFICACIONES_SUMINISTROS PRIMARY KEY,
    Descripcion VARCHAR(200) NULL
);
GO

-- 9. RESTRICCIONES
CREATE TABLE RESTRICCIONES (
    RestriccionID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_RESTRICCIONES PRIMARY KEY,
    Descripcion VARCHAR(250) NULL
);
GO

-- 10. TIPOS_DESCUENTOS
CREATE TABLE TIPOS_DESCUENTOS (
    Tipo_DescuentoID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_TIPOS_DESCUENTOS PRIMARY KEY,
    Descripcion VARCHAR(250) NULL
);
GO

-- 11. METODOS_PAGOS
CREATE TABLE METODOS_PAGOS (
    Metodo_PagoID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_METODOS_PAGOS PRIMARY KEY,
    Descripcion VARCHAR(200) NULL
);
GO

-- 12. ESPECIALIDADES_MEDICOS
CREATE TABLE ESPECIALIDADES_MEDICOS (
    EspecialidadID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_ESPECIALIDADES_MEDICOS PRIMARY KEY,
    Nombre_Especialidad VARCHAR(250) NULL
);
GO

-- 13. OBRAS_SOCIALES
CREATE TABLE OBRAS_SOCIALES (
    Obra_SocialID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_OBRAS_SOCIALES PRIMARY KEY,
    Descripcion VARCHAR(250) NULL
);
GO

-- 14. PLANES_OBRAS_SOCIALES (FK -> OBRAS_SOCIALES)
CREATE TABLE PLANES_OBRAS_SOCIALES (
    Plan_Obra_SocialID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_PLANES_OBRAS_SOCIALES PRIMARY KEY,
    Descripcion VARCHAR(250) NULL,
    Obra_SocialID INT NOT NULL,
    CONSTRAINT FK_PLAN_OBRA_OBRA_SOCIAL FOREIGN KEY (Obra_SocialID) REFERENCES OBRAS_SOCIALES(Obra_SocialID)
);
GO

-- 15. PROVEEDORES
CREATE TABLE PROVEEDORES (
    ProveedorID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_PROVEEDORES PRIMARY KEY,
    RazonSocial VARCHAR(250) NULL,
    CUIT VARCHAR(50) NULL,
    DireccionProveedor VARCHAR(500) NULL,
    TelefonoProveedor VARCHAR(50) NULL,
    EmailProveedor VARCHAR(250) NULL
);
GO

-- 16. REPARTIDORES
CREATE TABLE REPARTIDORES (
    RepartidorID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_REPARTIDORES PRIMARY KEY,
    NombreRepartidor VARCHAR(250) NULL,
    ApellidoRepartidor VARCHAR(250) NULL,
    TelefonoRepartidor VARCHAR(50) NULL,
    EmailRepartidor VARCHAR(250) NULL
);
GO

-- 17. SUCURSALES (FK -> LOCALIDADES)
CREATE TABLE SUCURSALES (
    SucursalID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_SUCURSALES PRIMARY KEY,
    Descripcion VARCHAR(250) NULL,
    Direccion VARCHAR(500) NULL,
    LocalidadID INT NULL,
    CONSTRAINT FK_SUCURSALES_LOCALIDADES FOREIGN KEY (LocalidadID) REFERENCES LOCALIDADES(LocalidadID)
);
GO

-- 18. PRODUCTOS (FKs -> TIPOS_SUMINISTROS, CLASIFICACIONES_SUMINISTROS, UNIDADES_MEDIDAS, TIPOS_PRESENTACIONES)
CREATE TABLE PRODUCTOS (
    ProductoID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_PRODUCTOS PRIMARY KEY,
    Codigo_Barra_ProductoID VARCHAR(150) NULL,
    Nombre_Producto VARCHAR(400) NULL,
    Precio_Producto DECIMAL(12,2) NULL,
    Tipo_SuministroID INT NULL,
    Clasificacion_SuministroID INT NULL,
    Unidad_MedidaID INT NULL,
    Tipo_PresentacionID INT NULL,
    CONSTRAINT FK_PRODUCTOS_TIPOS_SUMINISTRO FOREIGN KEY (Tipo_SuministroID) REFERENCES TIPOS_SUMINISTROS(Tipo_SuministroID),
    CONSTRAINT FK_PRODUCTOS_CLASIFICACION FOREIGN KEY (Clasificacion_SuministroID) REFERENCES CLASIFICACIONES_SUMINISTROS(Clasificacion_SuministroID),
    CONSTRAINT FK_PRODUCTOS_UNIDAD_MEDIDA FOREIGN KEY (Unidad_MedidaID) REFERENCES UNIDADES_MEDIDAS(Unidad_MedidaID),
    CONSTRAINT FK_PRODUCTOS_TIPO_PRESENTACION FOREIGN KEY (Tipo_PresentacionID) REFERENCES TIPOS_PRESENTACIONES(Tipo_PresentacionID)
);
GO

-- 19. MEDICAMENTOS (FKs -> UNIDADES_MEDIDAS, TIPOS_PRESENTACIONES, CLASIFICACIONES_SUMINISTROS, TIPOS_SUMINISTROS, RESTRICCIONES)
CREATE TABLE MEDICAMENTOS (
    MedicamentoID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_MEDICAMENTOS PRIMARY KEY,
    Codigo_Barra_MedicamentoID VARCHAR(150) NULL,
    Nombre_Medicamento VARCHAR(400) NULL,
    Precio_Medicamento DECIMAL(12,2) NULL,
    Unidad_MedidaID INT NULL,
    Tipo_PresentacionID INT NULL,
    Clasificacion_SuministroID INT NULL,
    Tipo_SuministroID INT NULL,
    RestriccionID INT NULL,
    CONSTRAINT FK_MEDICAMENTOS_UNIDAD_MEDIDA FOREIGN KEY (Unidad_MedidaID) REFERENCES UNIDADES_MEDIDAS(Unidad_MedidaID),
    CONSTRAINT FK_MEDICAMENTOS_TIPO_PRESENTACION FOREIGN KEY (Tipo_PresentacionID) REFERENCES TIPOS_PRESENTACIONES(Tipo_PresentacionID),
    CONSTRAINT FK_MEDICAMENTOS_CLASIFICACION FOREIGN KEY (Clasificacion_SuministroID) REFERENCES CLASIFICACIONES_SUMINISTROS(Clasificacion_SuministroID),
    CONSTRAINT FK_MEDICAMENTOS_TIPOS_SUMINISTRO FOREIGN KEY (Tipo_SuministroID) REFERENCES TIPOS_SUMINISTROS(Tipo_SuministroID),
    CONSTRAINT FK_MEDICAMENTOS_RESTRICCIONES FOREIGN KEY (RestriccionID) REFERENCES RESTRICCIONES(RestriccionID)
);
GO

-- 20. LOTES_PRODUCTOS (FK -> PRODUCTOS)
CREATE TABLE LOTES_PRODUCTOS (
    Lote_ProductoID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_LOTES_PRODUCTOS PRIMARY KEY,
    Fecha_Vencimiento DATETIME2(3) NULL,
    Fecha_Elaboracion DATETIME2(3) NULL,
    Cantidad BIGINT NULL,
    ProductoID INT NULL,
    CONSTRAINT FK_LOTESPROD_PRODUCTOS FOREIGN KEY (ProductoID) REFERENCES PRODUCTOS(ProductoID)
);
GO

-- 21. LOTES_MEDICAMENTOS (FK -> MEDICAMENTOS)
CREATE TABLE LOTES_MEDICAMENTOS (
    Lote_MedicamentoID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_LOTES_MEDICAMENTOS PRIMARY KEY,
    MedicamentoID INT NULL,
    Fecha_Vencimiento DATETIME2(3) NULL,
    Fecha_Elaboracion DATETIME2(3) NULL,
    Cantidad BIGINT NULL,
    CONSTRAINT FK_LOTESMED_MEDICAMENTOS FOREIGN KEY (MedicamentoID) REFERENCES MEDICAMENTOS(MedicamentoID)
);
GO

-- 22. CLIENTES (FKs -> TIPOS_DOCUMENTOS, LOCALIDADES)
CREATE TABLE CLIENTES (
    ClienteID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_CLIENTES PRIMARY KEY,
    NombreCliente VARCHAR(250) NULL,
    ApellidoCliente VARCHAR(250) NULL,
    Fecha_Nacimiento_Cliente DATE NULL,
    TelefonoCliente VARCHAR(50) NULL,
    Tipo_DocumentoID INT NULL,
    DireccionCliente VARCHAR(500) NULL,
    LocalidadID INT NULL,
    EmailCliente VARCHAR(250) NULL,
    DocumentoCliente VARCHAR(100) NULL,
    CONSTRAINT FK_CLIENTES_TIPOS_DOCUMENTOS FOREIGN KEY (Tipo_DocumentoID) REFERENCES TIPOS_DOCUMENTOS(Tipo_DocumentoID),
    CONSTRAINT FK_CLIENTES_LOCALIDADES FOREIGN KEY (LocalidadID) REFERENCES LOCALIDADES(LocalidadID)
);
GO

-- 23. EMPLEADOS (FKs -> TIPOS_DOCUMENTOS, LOCALIDADES)
CREATE TABLE EMPLEADOS (
    EmpleadoID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_EMPLEADOS PRIMARY KEY,
    NombreEmpleado VARCHAR(250) NULL,
    ApellidoEmpleado VARCHAR(250) NULL,
    Fecha_Nacimiento_Empleado DATE NULL,
    DireccionEmpleado VARCHAR(500) NULL,
    TelefonoEmpleado VARCHAR(50) NULL,
    EmailEmpleado VARCHAR(250) NULL,
    LocalidadID INT NULL,
    Tipo_DocumentoID INT NULL,
    DocumentoEmpleado VARCHAR(100) NULL,
    CONSTRAINT FK_EMPLEADOS_TIPOS_DOC FOREIGN KEY (Tipo_DocumentoID) REFERENCES TIPOS_DOCUMENTOS(Tipo_DocumentoID),
    CONSTRAINT FK_EMPLEADOS_LOCALIDADES FOREIGN KEY (LocalidadID) REFERENCES LOCALIDADES(LocalidadID)
);
GO

-- 24. AFILIADOS (FKs -> PLANES_OBRAS_SOCIALES, CLIENTES)
CREATE TABLE AFILIADOS (
    AfiliadoID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_AFILIADOS PRIMARY KEY,
    Plan_Obra_SocialID INT NOT NULL,
    ClienteID INT NOT NULL,
    CONSTRAINT FK_AFILIADOS_PLAN_OBRA FOREIGN KEY (Plan_Obra_SocialID) REFERENCES PLANES_OBRAS_SOCIALES(Plan_Obra_SocialID),
    CONSTRAINT FK_AFILIADOS_CLIENTES FOREIGN KEY (ClienteID) REFERENCES CLIENTES(ClienteID)
);
GO

-- 25. DOCTORES (FK -> ESPECIALIDADES_MEDICOS)
CREATE TABLE DOCTORES (
    DoctorID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DOCTORES PRIMARY KEY,
    Nombre_Doctor VARCHAR(250) NULL,
    Apellido_Doctor VARCHAR(250) NULL,
    Matricula_Doctor VARCHAR(100) NULL,
    EspecialidadID INT NULL,
    CONSTRAINT FK_DOCTORES_ESPECIALIDADES FOREIGN KEY (EspecialidadID) REFERENCES ESPECIALIDADES_MEDICOS(EspecialidadID)
);
GO

-- 26. RECETAS (FKs -> AFILIADOS, DOCTORES)
CREATE TABLE RECETAS (
    RecetaID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_RECETAS PRIMARY KEY,
    Fecha DATETIME2(3) NULL,
    AfiliadoID INT NULL,
    DoctorID INT NULL,
    CONSTRAINT FK_RECETAS_AFILIADOS FOREIGN KEY (AfiliadoID) REFERENCES AFILIADOS(AfiliadoID),
    CONSTRAINT FK_RECETAS_DOCTORES FOREIGN KEY (DoctorID) REFERENCES DOCTORES(DoctorID)
);
GO

-- 27. ESTADOS_COBERTURAS
CREATE TABLE ESTADOS_COBERTURAS (
    Estado_CoberturaID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_ESTADOS_COBERTURAS PRIMARY KEY,
    Descripcion VARCHAR(250) NULL
);
GO

-- 28. COBERTURAS (FKs -> ESTADOS_COBERTURAS, AFILIADOS, RECETAS)
CREATE TABLE COBERTURAS (
    CoberturaID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_COBERTURAS PRIMARY KEY,
    Validacion_Obra_Social BIT NOT NULL DEFAULT 0,
    Estado_CoberturaID INT NULL,
    AfiliadoID INT NULL,
    RecetaID INT NULL,
    CONSTRAINT FK_COBERTURAS_ESTADOS FOREIGN KEY (Estado_CoberturaID) REFERENCES ESTADOS_COBERTURAS(Estado_CoberturaID),
    CONSTRAINT FK_COBERTURAS_AFILIADOS FOREIGN KEY (AfiliadoID) REFERENCES AFILIADOS(AfiliadoID),
    CONSTRAINT FK_COBERTURAS_RECETAS FOREIGN KEY (RecetaID) REFERENCES RECETAS(RecetaID)
);
GO

-- 29. DETALLES_RECETAS (FKs -> RECETAS, MEDICAMENTOS)
CREATE TABLE DETALLES_RECETAS (
    Detalle_RecetaID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DETALLES_RECETAS PRIMARY KEY,
    RecetaID INT NOT NULL,
    Cantidad INT NOT NULL,
    MedicamentoID INT NULL,
    CONSTRAINT FK_DETRECETAS_RECETAS FOREIGN KEY (RecetaID) REFERENCES RECETAS(RecetaID),
    CONSTRAINT FK_DETRECETAS_MEDICAMENTOS FOREIGN KEY (MedicamentoID) REFERENCES MEDICAMENTOS(MedicamentoID)
);
GO

-- 30. DESCUENTOS (FKs opcionales)
CREATE TABLE DESCUENTOS (
    DescuentoID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DESCUENTOS PRIMARY KEY,
    LocalidadID INT NULL,
    Fecha_Descuento DATETIME2(3) NULL,
    Tipo_SuministroID INT NULL,
    Obra_SocialID INT NULL,
    Porcentaje_Descuento DECIMAL(12,2) NULL,
    Tipo_DescuentoID INT NULL,
    CONSTRAINT FK_DESCUENTOS_TIPOSDESCUENTO FOREIGN KEY (Tipo_DescuentoID) REFERENCES TIPOS_DESCUENTOS(Tipo_DescuentoID),
    CONSTRAINT FK_DESCUENTOS_TIPOSUMINISTRO FOREIGN KEY (Tipo_SuministroID) REFERENCES TIPOS_SUMINISTROS(Tipo_SuministroID),
    CONSTRAINT FK_DESCUENTOS_OBRAS_SOCIALES FOREIGN KEY (Obra_SocialID) REFERENCES OBRAS_SOCIALES(Obra_SocialID),
    CONSTRAINT FK_DESCUENTOS_LOCALIDADES FOREIGN KEY (LocalidadID) REFERENCES LOCALIDADES(LocalidadID)
);
GO

-- 31. FACTURAS (FKs -> EMPLEADOS, CLIENTES, SUCURSALES, METODOS_PAGOS)
CREATE TABLE FACTURAS (
    FacturaID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_FACTURAS PRIMARY KEY,
    Fecha_Facturacion DATETIME2(3) NULL,
    EmpleadoID INT NULL,
    ClienteID INT NULL,
    SucursalID INT NULL,
    Metodo_PagoID INT NULL,
    CONSTRAINT FK_FACTURAS_EMPLEADOS FOREIGN KEY (EmpleadoID) REFERENCES EMPLEADOS(EmpleadoID),
    CONSTRAINT FK_FACTURAS_CLIENTES FOREIGN KEY (ClienteID) REFERENCES CLIENTES(ClienteID),
    CONSTRAINT FK_FACTURAS_SUCURSALES FOREIGN KEY (SucursalID) REFERENCES SUCURSALES(SucursalID),
    CONSTRAINT FK_FACTURAS_METODOS_PAGO FOREIGN KEY (Metodo_PagoID) REFERENCES METODOS_PAGOS(Metodo_PagoID)
);
GO

-- 32. DETALLES_FACTURAS (FKs -> DESCUENTOS, PRODUCTOS, MEDICAMENTOS, COBERTURAS, FACTURAS)
CREATE TABLE DETALLES_FACTURAS (
    Nro_DetalleID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DETALLES_FACTURAS PRIMARY KEY,
    DescuentoID INT NULL,
    ProductoID INT NULL,
    MedicamentoID INT NULL,
    Cantidad INT NOT NULL,
    Precio DECIMAL(12,2) NULL,
    CoberturaID INT NULL,
    FacturaID INT NULL,
    CONSTRAINT FK_DETFAC_DESCUENTOS FOREIGN KEY (DescuentoID) REFERENCES DESCUENTOS(DescuentoID),
    CONSTRAINT FK_DETFAC_PRODUCTOS FOREIGN KEY (ProductoID) REFERENCES PRODUCTOS(ProductoID),
    CONSTRAINT FK_DETFAC_MEDICAMENTOS FOREIGN KEY (MedicamentoID) REFERENCES MEDICAMENTOS(MedicamentoID),
    CONSTRAINT FK_DETFAC_COBERTURAS FOREIGN KEY (CoberturaID) REFERENCES COBERTURAS(CoberturaID),
    CONSTRAINT FK_DETFAC_FACTURAS FOREIGN KEY (FacturaID) REFERENCES FACTURAS(FacturaID)
);
GO

-- 33. COMPRAS (FKs -> PROVEEDORES, REPARTIDORES, SUCURSALES, EMPLEADOS)
CREATE TABLE COMPRAS (
    CompraID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_COMPRAS PRIMARY KEY,
    Fecha_Compra DATETIME2(3) NULL,
    EmpleadoID INT NULL,
    ProveedorID INT NULL,
    RepartidorID INT NULL,
    SucursalID INT NULL,
    CONSTRAINT FK_COMPRAS_PROVEEDORES FOREIGN KEY (ProveedorID) REFERENCES PROVEEDORES(ProveedorID),
    CONSTRAINT FK_COMPRAS_REPARTIDORES FOREIGN KEY (RepartidorID) REFERENCES REPARTIDORES(RepartidorID),
    CONSTRAINT FK_COMPRAS_SUCURSALES FOREIGN KEY (SucursalID) REFERENCES SUCURSALES(SucursalID),
    CONSTRAINT FK_COMPRAS_EMPLEADOS FOREIGN KEY (EmpleadoID) REFERENCES EMPLEADOS(EmpleadoID)
);
GO

-- 34. DETALLES_COMPRAS (FKs -> COMPRAS, LOTES_PRODUCTOS, LOTES_MEDICAMENTOS)
CREATE TABLE DETALLES_COMPRAS (
    Detalle_CompraID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DETALLES_COMPRAS PRIMARY KEY,
    CompraID INT NOT NULL,
    Lote_ProductoID INT NULL,
    Codigo_Barra_MedicamentoID VARCHAR(150) NULL,
    Codigo_Barra_ProductoID VARCHAR(150) NULL,
    Cantidad INT NOT NULL,
    Lote_MedicamentoID INT NULL,
    CONSTRAINT FK_DETALLESCOMPRAS_COMPRAS FOREIGN KEY (CompraID) REFERENCES COMPRAS(CompraID),
    CONSTRAINT FK_DETALLESCOMPRAS_LOTEPROD FOREIGN KEY (Lote_ProductoID) REFERENCES LOTES_PRODUCTOS(Lote_ProductoID),
    CONSTRAINT FK_DETALLESCOMPRAS_LOTEMED FOREIGN KEY (Lote_MedicamentoID) REFERENCES LOTES_MEDICAMENTOS(Lote_MedicamentoID)
);
GO

-- 35. INVENTARIOS_PRODUCTOS (FKs -> SUCURSALES, PRODUCTOS)
CREATE TABLE INVENTARIOS_PRODUCTOS (
    Inventarios_ProductosID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_INVENTARIOS_PRODUCTOS PRIMARY KEY,
    SucursalID INT NULL,
    ProductoID INT NULL,
    Stock_Minimo INT NULL,
    Stock_Actual BIGINT NULL,
    CONSTRAINT FK_INVPROD_SUCURSAL FOREIGN KEY (SucursalID) REFERENCES SUCURSALES(SucursalID),
    CONSTRAINT FK_INVPROD_PRODUCTOS FOREIGN KEY (ProductoID) REFERENCES PRODUCTOS(ProductoID)
);
GO

-- 36. INVENTARIOS_MEDICAMENTOS (FKs -> SUCURSALES, MEDICAMENTOS)
CREATE TABLE INVENTARIOS_MEDICAMENTOS (
    Inventario_MedicamentoID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_INVENTARIOS_MEDICAMENTOS PRIMARY KEY,
    SucursalID INT NULL,
    MedicamentoID INT NULL,
    Stock_Minimo INT NULL,
    Stock_Actual BIGINT NULL,
    CONSTRAINT FK_INVMED_SUCURSAL FOREIGN KEY (SucursalID) REFERENCES SUCURSALES(SucursalID),
    CONSTRAINT FK_INVMED_MEDICAMENTOS FOREIGN KEY (MedicamentoID) REFERENCES MEDICAMENTOS(MedicamentoID)
);
GO

-- 37. EMPLEADOS_SUCURSALES (FKs -> EMPLEADOS, SUCURSALES)
CREATE TABLE EMPLEADOS_SUCURSALES (
    Empleado_SucursalID INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_EMPLEADOS_SUCURSALES PRIMARY KEY,
    EmpleadoID INT NOT NULL,
    SucursalID INT NOT NULL,
    Fecha_Inicio DATETIME2(3) NULL,
    Fecha_Fin DATETIME2(3) NULL,
    CONSTRAINT FK_EMPSUC_EMPLEADOS FOREIGN KEY (EmpleadoID) REFERENCES EMPLEADOS(EmpleadoID),
    CONSTRAINT FK_EMPSUC_SUCURSALES FOREIGN KEY (SucursalID) REFERENCES SUCURSALES(SucursalID)
);
GO


alter table COMPRAS
add activo int 

alter table DETALLES_COMPRAS
add activo int 

alter table PROVEEDORES
add activo int


alter procedure sp_TraerTablas
    @empleado_dni int ,
    @proveedor varchar(100) ,
    @repartidor varchar(100) ,
    @sucursal varchar(100),
    @empleadoID int output,
    @proveedorID int output,
    @repartidorID int output,
    @sucursalID int output
as
begin
    set @empleadoID  = (SELECT EmpleadoID FROM EMPLEADOS WHERE DocumentoEmpleado = @empleado_dni)
    set @proveedorID  = (SELECT ProveedorID FROM PROVEEDORES WHERE RazonSocial = @proveedor);
    set @repartidorID  = (SELECT RepartidorID FROM REPARTIDORES WHERE EmailRepartidor like @repartidor);
    set @sucursalID  = (SELECT SucursalID FROM SUCURSALES WHERE Descripcion = @sucursal);
end











/* ----------------------------------------------------------------
   1) LOOKUPS / TABLAS AUXILIARES (m�nimo 5 registros cada una)
   ---------------------------------------------------------------- */

/* TIPOS_DOCUMENTOS (5) */
INSERT INTO TIPOS_DOCUMENTOS (Descripcion) VALUES
('DNI'),
('CI'),
('CUIL'),
('Pasaporte'),
('Libreta Civica');
GO

/* PAISES (5) */
INSERT INTO PAISES (Descripciones) VALUES
('Argentina'),
('Uruguay'),
('Chile'),
('Paraguay'),
('Brasil');
GO

/* PROVINCIAS (5) -> referencian PAISES(1..5) */
INSERT INTO PROVINCIAS (PaisID, Descripcion) VALUES
(1,'Buenos Aires'),
(1,'Cordoba'),
(1,'Santa Fe'),
(2,'Montevideo'),
(3,'Santiago');
GO

/* LOCALIDADES (5) -> referencian PROVINCIAS(1..5) */
INSERT INTO LOCALIDADES (Descripcion, ProvinciaID) VALUES
('CABA',1),
('La Plata',1),
('Cordoba Capital',2),
('Rosario',3),
('Montevideo Centro',4);
GO

/* TIPOS_PRESENTACIONES (5) */
INSERT INTO TIPOS_PRESENTACIONES (Descripcion) VALUES
('Tbl 500mg'),
('C�psula 250mg'),
('Jarabe 100ml'),
('Inyectable 2ml'),
('Crema 30g');
GO

/* UNIDADES_MEDIDAS (5) */
INSERT INTO UNIDADES_MEDIDAS (Descripcion) VALUES
('Unidad'),
('Gramo'),
('Mililitro'),
('Caja'),
('Frasco');
GO

/* TIPOS_SUMINISTROS (5) */
INSERT INTO TIPOS_SUMINISTROS (Descripcion) VALUES
('Medicamento'),
('Producto General'),
('Cosm�tico'),
('Insumo M�dico'),
('Suplemento');
GO

/* CLASIFICACIONES_SUMINISTROS (5) */
INSERT INTO CLASIFICACIONES_SUMINISTROS (Descripcion) VALUES
('Analgesico'),
('Antibi�tico'),
('Antiinflamatorio'),
('Dermatol�gico'),
('Suplemento Alimenticio');
GO

/* RESTRICCIONES (5) */
INSERT INTO RESTRICCIONES (Descripcion) VALUES
('Venta libre'),
('Con receta'),
('Controlada'),
('Pedi�trica'),
('Uso hospitalario');
GO

/* TIPOS_DESCUENTOS (5) */
INSERT INTO TIPOS_DESCUENTOS (Descripcion) VALUES
('Promoci�n local'),
('Obra social'),
('Descuento por volumen'),
('Descuento estacional'),
('Descuento empleado');
GO

/* METODOS_PAGOS (5) */
INSERT INTO METODOS_PAGOS (Descripcion) VALUES
('Efectivo'),
('Tarjeta D�bito'),
('Tarjeta Cr�dito'),
('Transferencia'),
('Cuenta Corriente');
GO

/* ESPECIALIDADES_MEDICOS (5) */
INSERT INTO ESPECIALIDADES_MEDICOS (Nombre_Especialidad) VALUES
('Generalista'),
('Pediatr�a'),
('Dermatolog�a'),
('Cardiolog�a'),
('Traumatolog�a');
GO

/* OBRAS_SOCIALES (5) */
INSERT INTO OBRAS_SOCIALES (Descripcion) VALUES
('OSDE'),
('Swiss Medical'),
('Galeno'),
('IOMA'),
('OSP');
GO

/* PLANES_OBRAS_SOCIALES (5) -> referencian OBRAS_SOCIALES(1..5) */
INSERT INTO PLANES_OBRAS_SOCIALES (Descripcion, Obra_SocialID) VALUES
('OSDE 210','1'),
('Swiss Plan A','2'),
('Galeno B�sico','3'),
('IOMA General','4'),
('OSP Plan 1','5');
GO

/* ----------------------------------------------------------------
   2) PROVEEDORES, REPARTIDORES, SUCURSALES (m�nimo 20 para principales)
   ---------------------------------------------------------------- */

/* PROVEEDORES (20) */
INSERT INTO PROVEEDORES (RazonSocial, CUIT, DireccionProveedor, TelefonoProveedor, EmailProveedor) VALUES
('Provee Farma S.A.','30-11111111-1','Av. Principal 100','011-4000-0001','ventas@proveefarma.com'),
('Distribuciones Norte','30-22222222-2','Calle Norte 200','011-4000-0002','contacto@distnorte.com'),
('MedSupply SRL','30-33333333-3','Ruta 5 km 10','0351-4000-0003','compras@medsupply.com'),
('Quimicos Sud','30-44444444-4','Parque Industrial 5','011-4000-0004','info@quimicossud.com'),
('Laboratorios Norte','30-55555555-5','Av. Salud 45','011-4000-0005','lab@laboratoriosnorte.com'),
('Distribuidora Centro','30-66666666-6','Calle Centro 123','0291-4000-0006','ventas@distcentro.com'),
('PharmaLog S.A.','30-77777777-7','Zona Franca 7','011-4000-0007','logistica@pharmalog.com'),
('Insumos Global','30-88888888-8','Paraje 9','011-4000-0008','contacto@insumosglobal.com'),
('Salud y Cia','30-99999999-9','Av. Salud 200','011-4000-0009','ventas@saludycia.com'),
('Distrib Pro','30-10101010-1','Ruta 2 km 3','011-4000-0010','info@distripro.com'),
('ProveePlus','30-11112222-3','Calle Falsa 123','011-4000-0011','ventas@proveeplus.com'),
('FarmSupply','30-12121212-4','Av. Comercio 50','011-4000-0012','compra@farmsupply.com'),
('MedicProveedores','30-13131313-5','Parque 3','011-4000-0013','info@medicprov.com'),
('GlobalPharma','30-14141414-6','Puerto 1','011-4000-0014','contacto@globalpharma.com'),
('HealthDist','30-15151515-7','Zona 4','011-4000-0015','ventas@healthdist.com'),
('Laboratorio Sol','30-16161616-8','Av. Labor 77','011-4000-0016','lab@sol.com'),
('Distribuciones Oeste','30-17171717-9','Oeste 90','011-4000-0017','oeste@dist.com'),
('Insumed SRL','30-18181818-1','Calle 8','011-4000-0018','ventas@insumed.com'),
('ProductosMed','30-19191919-2','Av. 9 de Julio 111','011-4000-0019','prodmed@productosmed.com'),
('Suministros XL','30-20202020-3','Ruta 7 km 7','011-4000-0020','info@suministrosxl.com');
GO

/* REPARTIDORES (20) */
INSERT INTO REPARTIDORES (NombreRepartidor, ApellidoRepartidor, TelefonoRepartidor, EmailRepartidor) VALUES
('Carlos','Gomez','011-15-1111-0001','c.gomez@repartidor.com'),
('Mar�a','Lopez','011-15-1111-0002','m.lopez@repartidor.com'),
('Jorge','Martinez','011-15-1111-0003','j.martinez@repartidor.com'),
('Ana','Fernandez','011-15-1111-0004','a.fernandez@repartidor.com'),
('Lucas','Diaz','011-15-1111-0005','l.diaz@repartidor.com'),
('Laura','Sosa','011-15-1111-0006','l.sosa@repartidor.com'),
('Diego','Ramos','011-15-1111-0007','d.ramos@repartidor.com'),
('Sofia','Mendez','011-15-1111-0008','s.mendez@repartidor.com'),
('Federico','Alvarez','011-15-1111-0009','f.alvarez@repartidor.com'),
('Valeria','Cruz','011-15-1111-0010','v.cruz@repartidor.com'),
('Pablo','Herrera','011-15-1111-0011','p.herrera@repartidor.com'),
('Nadia','Ortiz','011-15-1111-0012','n.ortiz@repartidor.com'),
('Raul','Pereyra','011-15-1111-0013','r.pereyra@repartidor.com'),
('Marta','Bustos','011-15-1111-0014','m.bustos@repartidor.com'),
('Hugo','Luna','011-15-1111-0015','h.luna@repartidor.com'),
('Patricia','Rios','011-15-1111-0016','p.rios@repartidor.com'),
('Ricardo','Suarez','011-15-1111-0017','r.suarez@repartidor.com'),
('Daniela','Mora','011-15-1111-0018','d.mora@repartidor.com'),
('Gustavo','Ibarra','011-15-1111-0019','g.ibarra@repartidor.com'),
('Adriana','Vega','011-15-1111-0020','a.vega@repartidor.com');
GO

/* SUCURSALES (20) -> LocalidadID 1..5 */
INSERT INTO SUCURSALES (Descripcion, Direccion, LocalidadID) VALUES
('Sucursal Centro','Av. Centro 100',1),
('Sucursal Norte','Calle Norte 200',2),
('Sucursal Sur','Av. Sur 300',3),
('Sucursal Este','Calle Este 400',4),
('Sucursal Oeste','Boulevard Oeste 500',5),
('Sucursal 6','Av. 6 600',1),
('Sucursal 7','Calle 7 700',2),
('Sucursal 8','Av. 8 800',3),
('Sucursal 9','Calle 9 900',4),
('Sucursal 10','Av. 10 1000',5),
('Sucursal 11','Av. 11 1100',1),
('Sucursal 12','Calle 12 1200',2),
('Sucursal 13','Av. 13 1300',3),
('Sucursal 14','Calle 14 1400',4),
('Sucursal 15','Av. 15 1500',5),
('Sucursal 16','Calle 16 1600',1),
('Sucursal 17','Av. 17 1700',2),
('Sucursal 18','Calle 18 1800',3),
('Sucursal 19','Av. 19 1900',4),
('Sucursal 20','Calle 20 2000',5);
GO

/* ----------------------------------------------------------------
   3) PRODUCTOS y MEDICAMENTOS (20 c/u)
   ---------------------------------------------------------------- */

/* PRODUCTOS (20) -> Tipo_SuministroID(1..5), Clasificacion_SuministroID(1..5), Unidad_MedidaID(1..5), Tipo_PresentacionID(1..5) */
INSERT INTO PRODUCTOS (Codigo_Barra_ProductoID, Nombre_Producto, Precio_Producto, Tipo_SuministroID, Clasificacion_SuministroID, Unidad_MedidaID, Tipo_PresentacionID) VALUES
('PROD0001','Jabon en barra','120.00',2,4,1,4),
('PROD0002','Shampoo 250ml','350.00',2,4,3,3),
('PROD0003','Alcohol en gel 500ml','450.00',2,4,3,3),
('PROD0004','Term�metro digital','1200.00',4,1,1,4),
('PROD0005','Guantes descartables 100u','800.00',4,1,1,4),
('PROD0006','Esparadrapo 10m','60.00',4,1,1,4),
('PROD0007','Algodon 100g','50.00',4,1,1,4),
('PROD0008','Cepillo dental','200.00',2,4,1,4),
('PROD0009','Pa�ales adulto','1500.00',2,4,1,4),
('PROD0010','Toallitas humedas','400.00',2,4,1,4),
('PROD0011','Camiseta compresion','2200.00',2,1,1,4),
('PROD0012','Mascarilla N95','180.00',4,1,1,4),
('PROD0013','Baterias AA x4','300.00',2,4,1,4),
('PROD0014','Termo para medicaci�n','900.00',2,4,1,4),
('PROD0015','Silla de ruedas simple','15000.00',4,1,1,4),
('PROD0016','Bolsa de hielo reutilizable','350.00',2,4,1,4),
('PROD0017','Curitas surtidas x20','120.00',2,4,1,4),
('PROD0018','Linterna peque�a','250.00',2,4,1,4),
('PROD0019','Cinta m�trica','100.00',2,4,1,4),
('PROD0020','Termo infantil','600.00',2,4,1,4);
GO

/* MEDICAMENTOS (20) -> Unidad_MedidaID(1..5), Tipo_PresentacionID(1..5), Clasificacion_SuministroID(1..5), Tipo_SuministroID(1..5), RestriccionID(1..5) */
INSERT INTO MEDICAMENTOS (Codigo_Barra_MedicamentoID, Nombre_Medicamento, Precio_Medicamento, Unidad_MedidaID, Tipo_PresentacionID, Clasificacion_SuministroID, Tipo_SuministroID, RestriccionID) VALUES
('MED0001','Ibuprofeno 400mg','150.00',1,1,3,1,1),
('MED0002','Paracetamol 500mg','120.00',1,1,1,1,1),
('MED0003','Amoxicilina 500mg','400.00',1,1,2,1,2),
('MED0004','Lorazepam 1mg','800.00',1,1,1,1,3),
('MED0005','Clotrimazol crema 30g','300.00',5,5,4,1,1),
('MED0006','Vitamina C 500mg','200.00',1,1,5,5,1),
('MED0007','Metformina 850mg','250.00',1,1,1,1,1),
('MED0008','Omeprazol 20mg','320.00',1,1,1,1,1),
('MED0009','Insulina humalog','2500.00',1,4,1,1,4),
('MED0010','Aspirina 100mg','90.00',1,1,1,1,1),
('MED0011','Antihistam�nico 10mg','180.00',1,1,1,1,1),
('MED0012','Antis�ptico l�quido 250ml','220.00',3,3,4,1,1),
('MED0013','Broncodilatador inhalador','1500.00',1,4,1,1,3),
('MED0014','Antibi�tico t�pico 15g','360.00',5,5,2,1,1),
('MED0015','Crema dermatol�gica 30g','420.00',5,5,4,1,1),
('MED0016','Jarabe para la tos 120ml','280.00',3,3,1,1,1),
('MED0017','Suplemento hierro 30cap','260.00',1,1,5,5,1),
('MED0018','Colirio 10ml','390.00',3,3,4,1,1),
('MED0019','Analg�sico t�pico 50g','310.00',5,5,3,1,1),
('MED0020','Gel musculares 100g','340.00',5,5,3,1,1);
GO

/* ----------------------------------------------------------------
   4) LOTES (20 cada uno)
   ---------------------------------------------------------------- */

/* LOTES_PRODUCTOS (20) -> ProductoID 1..20 */
INSERT INTO LOTES_PRODUCTOS (Fecha_Vencimiento, Fecha_Elaboracion, Cantidad, ProductoID) VALUES
('2026-01-01','2024-01-01',100,1),
('2026-06-01','2024-06-01',200,2),
('2025-12-15','2023-12-15',150,3),
('2027-03-10','2025-03-10',80,4),
('2026-11-11','2024-11-11',50,5),
('2026-05-05','2024-05-05',120,6),
('2026-08-08','2024-08-08',60,7),
('2026-09-09','2024-09-09',90,8),
('2026-10-10','2024-10-10',70,9),
('2027-01-20','2025-01-20',40,10),
('2026-02-02','2024-02-02',110,11),
('2026-07-07','2024-07-07',130,12),
('2025-11-11','2023-11-11',55,13),
('2026-03-03','2024-03-03',95,14),
('2026-04-04','2024-04-04',85,15),
('2026-12-12','2024-12-12',140,16),
('2026-01-15','2024-01-15',60,17),
('2027-05-05','2025-05-05',150,18),
('2026-09-01','2024-09-01',75,19),
('2026-06-06','2024-06-06',200,20);
GO

/* LOTES_MEDICAMENTOS (20) -> MedicamentoID 1..20 */
INSERT INTO LOTES_MEDICAMENTOS (MedicamentoID, Fecha_Vencimiento, Fecha_Elaboracion, Cantidad) VALUES
(1,'2025-12-31','2023-12-31',500),
(2,'2025-09-30','2023-09-30',600),
(3,'2026-01-15','2024-01-15',300),
(4,'2025-08-20','2023-08-20',120),
(5,'2027-02-10','2025-02-10',200),
(6,'2026-04-01','2024-04-01',400),
(7,'2026-07-15','2024-07-15',350),
(8,'2026-03-10','2024-03-10',450),
(9,'2025-10-10','2023-10-10',50),
(10,'2026-11-11','2024-11-11',700),
(11,'2026-12-12','2024-12-12',250),
(12,'2026-05-05','2024-05-05',330),
(13,'2025-06-06','2023-06-06',80),
(14,'2026-09-09','2024-09-09',140),
(15,'2026-10-10','2024-10-10',210),
(16,'2025-11-11','2023-11-11',190),
(17,'2026-02-02','2024-02-02',260),
(18,'2026-08-08','2024-08-08',220),
(19,'2026-01-01','2024-01-01',160),
(20,'2027-03-03','2025-03-03',300);
GO

/* ----------------------------------------------------------------
   5) CLIENTES y EMPLEADOS (20 cada uno)
   ---------------------------------------------------------------- */

/* CLIENTES (20) -> Tipo_DocumentoID 1..5, LocalidadID 1..5 */
INSERT INTO CLIENTES (NombreCliente, ApellidoCliente, Fecha_Nacimiento_Cliente, TelefonoCliente, Tipo_DocumentoID, DireccionCliente, LocalidadID, EmailCliente, DocumentoCliente) VALUES
('Juan','P�rez','1980-05-10','011-15-1111-1001',1,'Calle Falsa 123',1,'juan.perez@mail.com','12345678'),
('Mar�a','Gonz�lez','1990-07-21','011-15-1111-1002',1,'Calle 2 45',2,'maria.gonzalez@mail.com','23456789'),
('Carlos','Ram�rez','1975-02-18','011-15-1111-1003',2,'Av. Siempre 200',3,'carlos.ramirez@mail.com','34567890'),
('Luc�a','Fern�ndez','1988-11-02','011-15-1111-1004',1,'Calle Linda 56',4,'lucia.fernandez@mail.com','45678901'),
('Ana','Mart�nez','1995-03-30','011-15-1111-1005',3,'Av. Verde 77',5,'ana.martinez@mail.com','56789012'),
('Diego','Alvarez','1983-06-12','011-15-1111-1006',1,'Calle Azul 88',1,'diego.alvarez@mail.com','67890123'),
('Sof�a','S�nchez','1992-09-09','011-15-1111-1007',4,'Boulevard 9',2,'sofia.sanchez@mail.com','78901234'),
('Mart�n','Romero','1979-12-25','011-15-1111-1008',1,'Av. 10',3,'martin.romero@mail.com','89012345'),
('Carolina','Ortiz','1985-08-08','011-15-1111-1009',2,'Calle 11',4,'carolina.ortiz@mail.com','90123456'),
('Federico','Rojas','1991-04-15','011-15-1111-1010',1,'Pje. 12',5,'federico.rojas@mail.com','01234567'),
('Patricia','Vega','1986-10-10','011-15-1111-1011',3,'Av. 13',1,'patricia.vega@mail.com','11223344'),
('Ra�l','N��ez','1970-01-05','011-15-1111-1012',1,'Calle 14',2,'raul.nunez@mail.com','22334455'),
('Ver�nica','C�ceres','1982-02-20','011-15-1111-1013',2,'Av. 15',3,'veronica.caceres@mail.com','33445566'),
('Gonzalo','Molina','1993-11-11','011-15-1111-1014',1,'Calle 16',4,'gonzalo.molina@mail.com','44556677'),
('Noelia','Paz','1996-07-07','011-15-1111-1015',1,'Av. 17',5,'noelia.paz@mail.com','55667788'),
('Hern�n','Iriarte','1981-09-01','011-15-1111-1016',1,'Calle 18',1,'hernan.iriarte@mail.com','66778899'),
('M�nica','Salas','1978-03-03','011-15-1111-1017',2,'Av. 19',2,'monica.salas@mail.com','77889900'),
('Bruno','Castro','1994-05-05','011-15-1111-1018',4,'Calle 20',3,'bruno.castro@mail.com','88990011'),
('Paula','Arias','1987-06-06','011-15-1111-1019',1,'Pje. 21',4,'paula.arias@mail.com','99001122'),
('Emiliano','Sierra','1999-12-12','011-15-1111-1020',1,'Av. 22',5,'emiliano.sierra@mail.com','10111213');
GO

/* EMPLEADOS (20) -> LocalidadID 1..5, Tipo_DocumentoID 1..5 */
INSERT INTO EMPLEADOS (NombreEmpleado, ApellidoEmpleado, Fecha_Nacimiento_Empleado, DireccionEmpleado, TelefonoEmpleado, EmailEmpleado, LocalidadID, Tipo_DocumentoID, DocumentoEmpleado) VALUES
('Marcos','Paz','1984-01-10','Av. Trab 100','011-15-2222-2001','marcos.paz@trab.com',1,1,'20123456'),
('Sergio','Costa','1987-02-20','Calle 3','011-15-2222-2002','sergio.costa@trab.com',2,1,'30123456'),
('Florencia','Rey','1990-03-30','Calle 4','011-15-2222-2003','florencia.rey@trab.com',3,2,'40123456'),
('Alberto','Vera','1976-04-04','Av. 5','011-15-2222-2004','alberto.vera@trab.com',4,1,'50123456'),
('Jimena','Suarez','1992-05-05','Calle 6','011-15-2222-2005','jimena.suarez@trab.com',5,1,'60123456'),
('Hector','Mendez','1980-06-06','Av. 7','011-15-2222-2006','hector.mendez@trab.com',1,3,'70123456'),
('Vanesa','Lopez','1995-07-07','Calle 8','011-15-2222-2007','vanesa.lopez@trab.com',2,1,'80123456'),
('Germ�n','Paz','1989-08-08','Av. 9','011-15-2222-2008','german.paz@trab.com',3,1,'90123456'),
('Silvia','Gimenez','1974-09-09','Calle 10','011-15-2222-2009','silvia.gimenez@trab.com',4,2,'01234567'),
('Ruben','Diaz','1983-10-10','Av. 11','011-15-2222-2010','ruben.diaz@trab.com',5,1,'11223344'),
('Lourdes','Nava','1991-11-11','Calle 12','011-15-2222-2011','lourdes.nava@trab.com',1,1,'12233445'),
('Esteban','Campos','1973-12-12','Av. 13','011-15-2222-2012','esteban.campos@trab.com',2,1,'13243546'),
('Roc�o','Silva','1986-01-01','Calle 14','011-15-2222-2013','rocio.silva@trab.com',3,1,'14253647'),
('Omar','Blanco','1979-02-02','Av. 15','011-15-2222-2014','omar.blanco@trab.com',4,1,'15263748'),
('Gabriela','Aguirre','1988-03-03','Calle 16','011-15-2222-2015','gabriela.aguirre@trab.com',5,2,'16273849'),
('Iv�n','Ferrer','1993-04-04','Av. 17','011-15-2222-2016','ivan.ferrer@trab.com',1,1,'17283950'),
('Agustina','Leiva','1994-05-05','Calle 18','011-15-2222-2017','agustina.leiva@trab.com',2,1,'18294051'),
('Tomas','Mora','1982-06-06','Av. 19','011-15-2222-2018','tomas.mora@trab.com',3,1,'19304152'),
('Natalia','Pinto','1985-07-07','Calle 20','011-15-2222-2019','natalia.pinto@trab.com',4,4,'20314253'),
('Joaqu�n','Ramires','1996-08-08','Av. 21','011-15-2222-2020','joaquin.ramires@trab.com',5,1,'21324354');
GO

/* ----------------------------------------------------------------
   6) AFILIADOS, DOCTORES, RECETAS, ESTADOS_COBERTURAS, COBERTURAS, DETALLES_RECETAS
   ---------------------------------------------------------------- */

/* AFILIADOS (20) -> Plan_Obra_SocialID 1..5, ClienteID 1..20 */
INSERT INTO AFILIADOS (Plan_Obra_SocialID, ClienteID) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),
(1,6),(2,7),(3,8),(4,9),(5,10),
(1,11),(2,12),(3,13),(4,14),(5,15),
(1,16),(2,17),(3,18),(4,19),(5,20);
GO

/* DOCTORES (20) -> EspecialidadID 1..5 */
INSERT INTO DOCTORES (Nombre_Doctor, Apellido_Doctor, Matricula_Doctor, EspecialidadID) VALUES
('Martin','L�pez','MAT001',1),
('Carina','Gonz�lez','MAT002',2),
('Pablo','Sosa','MAT003',3),
('Ana','Ruiz','MAT004',4),
('Diego','Navarro','MAT005',5),
('Laura','P�rez','MAT006',1),
('Javier','Torres','MAT007',2),
('Silvina','Garc�a','MAT008',3),
('Fernando','Herrera','MAT009',4),
('Ver�nica','Luna','MAT010',5),
('Santiago','Mares','MAT011',1),
('Roc�o','D�az','MAT012',2),
('Gustavo','Mora','MAT013',3),
('Mariana','Salazar','MAT014',4),
('Ra�l','Ort�z','MAT015',5),
('Natalia','Cuevas','MAT016',1),
('Emilio','Bravo','MAT017',2),
('Liliana','Paz','MAT018',3),
('Hern�n','Iglesias','MAT019',4),
('M�nica','Rey','MAT020',5);
GO

/* RECETAS (20) -> AfiliadoID 1..20, DoctorID 1..20 */
INSERT INTO RECETAS (Fecha, AfiliadoID, DoctorID) VALUES
('2025-01-10',1,1),('2025-01-11',2,2),('2025-01-12',3,3),('2025-01-13',4,4),('2025-01-14',5,5),
('2025-02-01',6,6),('2025-02-02',7,7),('2025-02-03',8,8),('2025-02-04',9,9),('2025-02-05',10,10),
('2025-03-01',11,11),('2025-03-02',12,12),('2025-03-03',13,13),('2025-03-04',14,14),('2025-03-05',15,15),
('2025-04-01',16,16),('2025-04-02',17,17),('2025-04-03',18,18),('2025-04-04',19,19),('2025-04-05',20,20);
GO

/* ESTADOS_COBERTURAS (5) */
INSERT INTO ESTADOS_COBERTURAS (Descripcion) VALUES
('Pendiente'),('Aprobado'),('Rechazado'),('En proceso'),('Sin cobro');
GO

/* COBERTURAS (20) -> Estado_CoberturaID 1..5, AfiliadoID 1..20, RecetaID 1..20 */
INSERT INTO COBERTURAS (Validacion_Obra_Social, Estado_CoberturaID, AfiliadoID, RecetaID) VALUES
(0,1,1,1),(1,2,2,2),(0,3,3,3),(1,2,4,4),(0,1,5,5),
(1,4,6,6),(0,5,7,7),(1,2,8,8),(0,1,9,9),(1,3,10,10),
(0,2,11,11),(1,1,12,12),(0,4,13,13),(1,2,14,14),(0,5,15,15),
(1,1,16,16),(0,3,17,17),(1,2,18,18),(0,4,19,19),(1,1,20,20);
GO

/* DETALLES_RECETAS (20) -> RecetaID 1..20, MedicamentoID 1..20 */
INSERT INTO DETALLES_RECETAS (RecetaID, Cantidad, MedicamentoID) VALUES
(1,30,1),(2,20,2),(3,10,3),(4,15,4),(5,60,5),
(6,10,6),(7,12,7),(8,8,8),(9,20,9),(10,25,10),
(11,5,11),(12,40,12),(13,6,13),(14,10,14),(15,14,15),
(16,18,16),(17,22,17),(18,30,18),(19,9,19),(20,11,20);
GO

/* ----------------------------------------------------------------
   7) DESCUENTOS (20) (tiene FKs opcionales)
   ---------------------------------------------------------------- */

/* DESCUENTOS (20) -> LocalidadID 1..5, Tipo_SuministroID 1..5, Obra_SocialID 1..5, Tipo_DescuentoID 1..5 */
INSERT INTO DESCUENTOS (LocalidadID, Fecha_Descuento, Tipo_SuministroID, Obra_SocialID, Porcentaje_Descuento, Tipo_DescuentoID) VALUES
(1,'2025-06-01',1,1,10.00,1),
(2,'2025-06-15',2,2,5.00,2),
(3,'2025-07-01',3,3,15.00,3),
(4,'2025-07-10',4,4,20.00,4),
(5,'2025-08-01',5,5,12.50,5),
(1,'2025-09-01',1,2,7.00,1),
(2,'2025-09-15',2,3,6.00,2),
(3,'2025-10-01',3,4,8.00,3),
(4,'2025-10-10',4,5,9.00,4),
(5,'2025-11-01',5,1,11.00,5),
(1,'2025-12-01',1,1,10.00,1),
(2,'2025-12-15',2,2,5.00,2),
(3,'2026-01-01',3,3,15.00,3),
(4,'2026-01-10',4,4,20.00,4),
(5,'2026-02-01',5,5,12.50,5),
(1,'2026-03-01',1,2,7.00,1),
(2,'2026-03-15',2,3,6.00,2),
(3,'2026-04-01',3,4,8.00,3),
(4,'2026-04-10',4,5,9.00,4),
(5,'2026-05-01',5,1,11.00,5);
GO

/* ----------------------------------------------------------------
   8) FACTURAS y DETALLES_FACTURAS (20 & 40)
   ---------------------------------------------------------------- */

/* FACTURAS (20) -> EmpleadoID 1..20, ClienteID 1..20, SucursalID 1..20, Metodo_PagoID 1..5 */
INSERT INTO FACTURAS (Fecha_Facturacion, EmpleadoID, ClienteID, SucursalID, Metodo_PagoID) VALUES
('2025-06-01',1,1,1,1),
('2025-06-02',2,2,2,2),
('2025-06-03',3,3,3,3),
('2025-06-04',4,4,4,4),
('2025-06-05',5,5,5,5),
('2025-06-06',6,6,6,1),
('2025-06-07',7,7,7,2),
('2025-06-08',8,8,8,3),
('2025-06-09',9,9,9,4),
('2025-06-10',10,10,10,5),
('2025-06-11',11,11,11,1),
('2025-06-12',12,12,12,2),
('2025-06-13',13,13,13,3),
('2025-06-14',14,14,14,4),
('2025-06-15',15,15,15,5),
('2025-06-16',16,16,16,1),
('2025-06-17',17,17,17,2),
('2025-06-18',18,18,18,3),
('2025-06-19',19,19,19,4),
('2025-06-20',20,20,20,5);
GO

/* DETALLES_FACTURAS (40) -> DescuentoID 1..20, ProductoID 1..20, MedicamentoID 1..20, CoberturaID 1..20, FacturaID 1..20 */
INSERT INTO DETALLES_FACTURAS (DescuentoID, ProductoID, MedicamentoID, Cantidad, Precio, CoberturaID, FacturaID) VALUES
(1,1,NULL,2,120.00,NULL,1),
(2,NULL,1,1,150.00,1,2),
(3,2,NULL,3,350.00,NULL,3),
(4,NULL,2,2,120.00,2,4),
(5,3,NULL,1,450.00,NULL,5),
(6,NULL,3,2,400.00,3,6),
(7,4,NULL,1,1200.00,NULL,7),
(8,NULL,4,1,800.00,4,8),
(9,5,NULL,5,60.00,NULL,9),
(10,NULL,5,10,300.00,5,10),
(11,6,NULL,2,200.00,NULL,11),
(12,NULL,6,1,220.00,6,12),
(13,7,NULL,3,50.00,NULL,13),
(14,NULL,7,1,250.00,7,14),
(15,8,NULL,4,200.00,NULL,15),
(16,NULL,8,2,1500.00,8,16),
(17,9,NULL,1,1500.00,NULL,17),
(18,NULL,9,1,90.00,9,18),
(19,10,NULL,2,400.00,NULL,19),
(20,NULL,10,3,280.00,10,20),
(1,11,NULL,1,2200.00,NULL,1),
(2,NULL,11,5,180.00,11,2),
(3,12,NULL,2,180.00,NULL,3),
(4,NULL,12,1,220.00,12,4),
(5,13,NULL,1,300.00,NULL,5),
(6,NULL,13,2,1500.00,13,6),
(7,14,NULL,3,360.00,NULL,7),
(8,NULL,14,1,420.00,14,8),
(9,15,NULL,2,1500.00,NULL,9),
(10,NULL,15,1,280.00,15,10),
(11,16,NULL,1,350.00,NULL,11),
(12,NULL,16,4,340.00,16,12),
(13,17,NULL,2,120.00,NULL,13),
(14,NULL,17,3,310.00,14,14),
(15,18,NULL,1,250.00,NULL,15),
(16,NULL,18,2,390.00,16,16),
(17,19,NULL,1,100.00,NULL,17),
(18,NULL,19,1,600.00,18,18),
(19,20,NULL,3,600.00,NULL,19),
(20,NULL,20,2,150.00,20,20);
GO

/* ----------------------------------------------------------------
   9) COMPRAS y DETALLES_COMPRAS (20 & 40)
   ---------------------------------------------------------------- */

/* COMPRAS (20) -> EmpleadoID 1..20, ProveedorID 1..20, RepartidorID 1..20, SucursalID 1..20 */
INSERT INTO COMPRAS (Fecha_Compra, EmpleadoID, ProveedorID, RepartidorID, SucursalID) VALUES
('2025-05-01',1,1,1,1),('2025-05-02',2,2,2,2),('2025-05-03',3,3,3,3),('2025-05-04',4,4,4,4),('2025-05-05',5,5,5,5),
('2025-05-06',6,6,6,6),('2025-05-07',7,7,7,7),('2025-05-08',8,8,8,8),('2025-05-09',9,9,9,9),('2025-05-10',10,10,10,10),
('2025-05-11',11,11,11,11),('2025-05-12',12,12,12,12),('2025-05-13',13,13,13,13),('2025-05-14',14,14,14,14),('2025-05-15',15,15,15,15),
('2025-05-16',16,16,16,16),('2025-05-17',17,17,17,17),('2025-05-18',18,18,18,18),('2025-05-19',19,19,19,19),('2025-05-20',20,20,20,20);
GO

/* DETALLES_COMPRAS (40) -> CompraID 1..20, Lote_ProductoID 1..20, Lote_MedicamentoID 1..20 */
INSERT INTO DETALLES_COMPRAS (CompraID, Lote_ProductoID, Codigo_Barra_MedicamentoID, Codigo_Barra_ProductoID, Cantidad, Lote_MedicamentoID) VALUES
(1,1,NULL,'PROD0001',50,NULL),
(2,2,NULL,'PROD0002',100,NULL),
(3,3,NULL,'PROD0003',80,NULL),
(4,4,NULL,'PROD0004',20,NULL),
(5,5,NULL,'PROD0005',30,NULL),
(6,6,NULL,'PROD0006',60,NULL),
(7,7,NULL,'PROD0007',90,NULL),
(8,8,NULL,'PROD0008',70,NULL),
(9,9,NULL,'PROD0009',40,NULL),
(10,10,NULL,'PROD0010',50,NULL),
(11,NULL,NULL,NULL,200,1),
(12,NULL,NULL,NULL,150,2),
(13,NULL,NULL,NULL,120,3),
(14,NULL,NULL,NULL,80,4),
(15,NULL,NULL,NULL,300,5),
(16,NULL,NULL,NULL,60,6),
(17,NULL,NULL,NULL,90,7),
(18,NULL,NULL,NULL,110,8),
(19,NULL,NULL,NULL,140,9),
(20,NULL,NULL,NULL,70,10),
(1,11,NULL,'PROD0011',5,NULL),
(2,12,NULL,'PROD0012',25,NULL),
(3,13,NULL,'PROD0013',40,NULL),
(4,14,NULL,'PROD0014',12,NULL),
(5,15,NULL,'PROD0015',2,NULL),
(6,16,NULL,'PROD0016',20,NULL),
(7,17,NULL,'PROD0017',50,NULL),
(8,18,NULL,'PROD0018',30,NULL),
(9,19,NULL,'PROD0019',45,NULL),
(10,20,NULL,'PROD0020',22,NULL),
(11,1,NULL,NULL,0,11),
(12,2,NULL,NULL,0,12),
(13,3,NULL,NULL,0,13),
(14,4,NULL,NULL,0,14),
(15,5,NULL,NULL,0,15),
(16,6,NULL,NULL,0,16),
(17,7,NULL,NULL,0,17),
(18,8,NULL,NULL,0,18),
(19,9,NULL,NULL,0,19),
(20,10,NULL,NULL,0,20);
GO

/* ----------------------------------------------------------------
   10) INVENTARIOS_PRODUCTOS, INVENTARIOS_MEDICAMENTOS (20 c/u)
   ---------------------------------------------------------------- */

/* INVENTARIOS_PRODUCTOS (20) -> SucursalID 1..20, ProductoID 1..20 */
INSERT INTO INVENTARIOS_PRODUCTOS (SucursalID, ProductoID, Stock_Minimo, Stock_Actual) VALUES
(1,1,10,100),(2,2,5,200),(3,3,8,150),(4,4,2,80),(5,5,3,50),
(6,6,5,120),(7,7,4,60),(8,8,6,90),(9,9,7,70),(10,10,5,40),
(11,11,2,110),(12,12,3,130),(13,13,6,55),(14,14,4,95),(15,15,5,85),
(16,16,3,140),(17,17,2,60),(18,18,5,150),(19,19,4,75),(20,20,6,200);
GO

/* INVENTARIOS_MEDICAMENTOS (20) -> SucursalID 1..20, MedicamentoID 1..20 */
INSERT INTO INVENTARIOS_MEDICAMENTOS (SucursalID, MedicamentoID, Stock_Minimo, Stock_Actual) VALUES
(1,1,50,500),(2,2,60,600),(3,3,30,300),(4,4,12,120),(5,5,20,200),
(6,6,40,400),(7,7,35,350),(8,8,45,450),(9,9,5,50),(10,10,70,700),
(11,11,25,250),(12,12,33,330),(13,13,8,80),(14,14,14,140),(15,15,21,210),
(16,16,19,190),(17,17,26,260),(18,18,22,220),(19,19,16,160),(20,20,30,300);
GO

/* ----------------------------------------------------------------
   11) EMPLEADOS_SUCURSALES (20)
   ---------------------------------------------------------------- */

/* EMPLEADOS_SUCURSALES (20) -> EmpleadoID 1..20, SucursalID 1..20 */
INSERT INTO EMPLEADOS_SUCURSALES (EmpleadoID, SucursalID, Fecha_Inicio, Fecha_Fin) VALUES
(1,1,'2023-01-01',NULL),(2,2,'2023-02-01',NULL),(3,3,'2023-03-01',NULL),(4,4,'2023-04-01',NULL),(5,5,'2023-05-01',NULL),
(6,6,'2023-06-01',NULL),(7,7,'2023-07-01',NULL),(8,8,'2023-08-01',NULL),(9,9,'2023-09-01',NULL),(10,10,'2023-10-01',NULL),
(11,11,'2023-11-01',NULL),(12,12,'2023-12-01',NULL),(13,13,'2024-01-01',NULL),(14,14,'2024-02-01',NULL),(15,15,'2024-03-01',NULL),
(16,16,'2024-04-01',NULL),(17,17,'2024-05-01',NULL),(18,18,'2024-06-01',NULL),(19,19,'2024-07-01',NULL),(20,20,'2024-08-01',NULL);
GO
\