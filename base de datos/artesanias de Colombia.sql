drop DATABASE ArtesaniasDeColombia;
create DATABASE ArtesaniasDeColombia;

USE ArtesaniasDeColombia;


	CREATE TABLE TipoDeDocumento (
  IdTipoDeDocumento INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(255) NOT NULL,
  Abreviatura VARCHAR(10) NOT NULL,
  PRIMARY KEY (IdTipoDeDocumento)
);


CREATE TABLE Direccion
(
	IdDireccion INT NOT NULL auto_increment,
    Localidad VARCHAR(30) NOT NULL,
    CodigoPostal VARCHAR(10) NOT NULL,
    Direccion VARCHAR (30) NOT NULL,
    Barrio VARCHAR (30) NOT NULL,
    Primary Key(IdDireccion)
);

CREATE TABLE TipoProducto
(
	IdTipoProducto INT NOT NULL auto_increment,
    Nombre VARCHAR(30) NOT NULL,
    Marca VARCHAR(20) NOT NULL,
    Primary Key(IdTipoProducto)
);

CREATE TABLE Cliente
(
	IdCliente INT NOT NULL auto_increment,
	Identificacion VARCHAR(30) NOT NULL,
    Nombre VARCHAR(50) NOT NULL,
    Apellidos VARCHAR(50) NOT NULL,
    Correo VARCHAR(50) NOT NULL,
    Telefono NUMERIC (20) NOT NULL,
    IdtipoDeDocumento INT NOT NULL , 
    IdDireccion INT NOT NULL,  
    Primary Key(IdCliente)
);

CREATE TABLE Inventario
(
	IdInventario INT NOT NULL auto_increment,
    CantidadInsumos INT NOT NULL,
	NumeroLote  NUMERIC (20) NOT NULL,
    Primary Key(IdInventario)
);

CREATE TABLE Factura
(
	IdFactura INT NOT NULL auto_increment,
    NumeroDeFactura VARCHAR(30) NOT NULL,
    Garantia VARCHAR(200) NOT NULL,
    IdCliente INT NOT NULL ,
	IdProducto INT NOT NULL ,
    Primary Key(IdFactura)
);

CREATE TABLE Producto
(
	IdProducto INT NOT NULL auto_increment,
    Calidad VARCHAR(60) NOT NULL,
	Referencia VARCHAR(30) NOT NULL,
    Nombre VARCHAR(30) NOT NULL,
	PrecioProducto DECIMAL(30) NOT NULL,
	IdInventario INT NOT NULL ,
    IdTipoProducto INT NOT NULL ,
    Primary Key(IdProducto)
);

