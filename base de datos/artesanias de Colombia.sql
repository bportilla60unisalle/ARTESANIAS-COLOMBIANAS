Create Table Propietario 
(
    IdPropietario  int Not Null auto_increment,
    Nombre Varchar(50) NOT null,
    Apellido Varchar(50)  NOT null,
    telefono numeric (10)  NOT null,
    IdTipoDocumento int not null,
    Primary Key(IdPropietario),
    foreign key (IdTipoDocumento) references  TipoDocumento(IdTipoDocumento)
);

IdTipoDeDocumento INT NOT NULL AUTO_INCREMENT, Nombre VARCHAR(255) NOT NULL, Abreviatura VARCHAR(10) NOT NULL, PRIMARY KEY (IdTipoDeDocumento) );

CREATE TABLE Direccion ( IdDireccion INT NOT NULL auto_increment, Localidad VARCHAR(30) NOT NULL, CodigoPostal VARCHAR(10) NOT NULL, Direccion VARCHAR (30) NOT NULL, Barrio VARCHAR (30) NOT NULL, Primary Key(IdDireccion) );

CREATE TABLE TipoProducto ( IdTipoProducto INT NOT NULL auto_increment, Nombre VARCHAR(30) NOT NULL, Marca VARCHAR(20) NOT NULL, Primary Key(IdTipoProducto) );

CREATE TABLE Cliente ( IdCliente INT NOT NULL auto_increment, Identificacion VARCHAR(30) NOT NULL, Nombre VARCHAR(50) NOT NULL, Apellidos VARCHAR(50) NOT NULL, Correo VARCHAR(50) NOT NULL, Telefono NUMERIC (20) NOT NULL, IdtipoDeDocumento INT NOT NULL , IdDireccion INT NOT NULL,
Primary Key(IdCliente) );

CREATE TABLE Inventario ( IdInventario INT NOT NULL auto_increment, CantidadInsumos INT NOT NULL, NumeroLote NUMERIC (20) NOT NULL, Primary Key(IdInventario) );

CREATE TABLE Factura ( IdFactura INT NOT NULL auto_increment, NumeroDeFactura VARCHAR(30) NOT NULL, Garantia VARCHAR(200) NOT NULL, IdCliente INT NOT NULL , IdProducto INT NOT NULL , Primary Key(IdFactura) );

CREATE TABLE Producto ( IdProducto INT NOT NULL auto_increment, Calidad VARCHAR(60) NOT NULL, Referencia VARCHAR(30) NOT NULL, Nombre VARCHAR(30) NOT NULL, PrecioProducto DECIMAL(30) NOT NULL, IdInventario INT NOT NULL , IdTipoProducto INT NOT NULL , Primary Key(IdProducto) );

SET FOREIGN_KEY_CHECKS = 0; TRUNCATE TipoDeDocumento; TRUNCATE Direccion;

SET FOREIGN_KEY_CHECKS = 1;

/Inserción de tipos de Documento/ insert into TipoDeDocumento (Nombre,Abreviatura) values ('Cédula de Ciudadanía','cc'); insert into TipoDeDocumento (Nombre,Abreviatura) values ('Tarjeta de identidad','ti'); insert into TipoDeDocumento (Nombre,Abreviatura) values ('Pasaporte','Past'); insert into TipoDeDocumento (Nombre,Abreviatura) values ('Cedula de extranjeria','ce');

select * from TipoDeDocumento;

insert into Direccion (Localidad, CodigoPostal, Barrio, Direccion ) values ('engativa','111031', 'ciudadela', 'diagonal 86 20-10'); insert into Direccion (Localidad, CodigoPostal, Barrio, Direccion ) values ('chapinero','110211', 'el paraiso', 'calle 57 30-47'); insert into Direccion (Localidad, CodigoPostal, Barrio, Direccion ) values ('bosa','110711', 'escocia', 'carrea 10b 62-14'); insert into Direccion (Localidad, CodigoPostal, Barrio, Direccion ) values ('usme','110511', 'doña liliana', 'carrea 5 sur 27-14');

/Inserción de tipos de productos/ insert into TipoProducto (Nombre, Marca ) values ('sombrero vueltiao','el boyaquito'); insert into TipoProducto (Nombre, Marca ) values ('ruhana','el rolo loco'); insert into TipoProducto (Nombre, Marca ) values ('bufandas','el paisa care jaa'); insert into TipoProducto (Nombre, Marca ) values ('alpargatas','deimelo soggg');

/Inserción de tipos de inventario/ insert into Inventario (CantidadInsumos, NumeroLote ) values ('20','3059'); insert into Inventario (CantidadInsumos, NumeroLote ) values ('14','2578'); insert into Inventario (CantidadInsumos, NumeroLote ) values ('4','4578'); insert into Inventario (CantidadInsumos, NumeroLote ) values ('47','4785');

/Inserción de tipos de Factura/ insert into Factura (NumeroDeFactura, Garantia) values ('57845','2 '); insert into Factura (NumeroDeFactura, Garantia) values ('45785','1 '); insert into Factura (NumeroDeFactura, Garantia) values ('65235','1 '); insert into Factura (NumeroDeFactura, Garantia) values ('54652','5 ');

/Inserción de tipo de cliente/ insert into Cliente (Nombre,Apellido,TipoDocumento,Correo,Telefono,Dirección) values ('Nicol','Gomez','cc ','Nicolgo@gmail.com','3058198221','Crr 10 b 12-34' ); insert into Cliente (Nombre,Apellido,TipoDocumento,Correo,Telefono,Dirección) values ('Paula','Garcia','cc','Pgarcia69@gmail.com','30125487','calle 18 a 34-21'); insert into Cliente (Nombre,Apellido,TipoDocumento,Correo,Telefono,Dirección) values ('Alejandro','Canon','id','Alejandroca@hotmail.com','3102554376','Diagonal 7 c 34-23'); insert into Cliente (Nombre,Apellido,TipoDocumento,Correo,Telefono,Dirección) values ('Brayan','Portilla','pass','Bportilla@gmail.com','3184020174','Crr 27 a 56-34');

/Inserción de tipo de Porducto/ insert into Producto (Calidad,Referencia,Nombre,Precioproducto) values ('A','1245','Mochilas ','23500','3058198221'); insert into Producto (Calidad,Referencia,Nombre,Precioproducto) values ('B','5241','Ruanas','45368','30125487'); insert Script de BD.txt into Producto (Calidad,Referencia,Nombre,Precioproducto) values ('C','12542','Sombreros','52364','3102554376');