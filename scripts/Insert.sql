SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TipoDeDocumento;
TRUNCATE Direccion;

SET FOREIGN_KEY_CHECKS = 1;

/*Inserción de tipos de Documento*/
insert into TipoDeDocumento (Nombre,Abreviatura) values ('Cédula de Ciudadanía','cc');
insert into TipoDeDocumento (Nombre,Abreviatura) values ('Tarjeta de identidad','ti');
insert into TipoDeDocumento (Nombre,Abreviatura) values ('Pasaporte','Past');
insert into TipoDeDocumento (Nombre,Abreviatura) values ('Cedula de extranjeria','ce');


select * from TipoDeDocumento;


insert into Direccion (Localidad, CodigoPostal, Barrio, Direccion ) values ('engativa','111031', 'ciudadela', 'diagonal 86  20-10');
insert into Direccion (Localidad, CodigoPostal, Barrio, Direccion ) values ('chapinero','110211', 'el paraiso', 'calle 57  30-47');
insert into Direccion (Localidad, CodigoPostal, Barrio, Direccion ) values ('bosa','110711', 'escocia', 'carrea 10b 62-14');
insert into Direccion (Localidad, CodigoPostal, Barrio, Direccion ) values ('usme','110511', 'doña liliana', 'carrea 5 sur 27-14');


/*Inserción de tipos de productos*/
insert into TipoProducto (Nombre, Marca ) values ('sombrero vueltiao','el boyaquito');
insert into TipoProducto (Nombre, Marca ) values ('ruhana','el rolo loco');
insert into TipoProducto (Nombre, Marca ) values ('bufandas','el paisa care jaa');
insert into TipoProducto (Nombre, Marca ) values ('alpargatas','deimelo soggg');


/*Inserción de tipos de inventario*/
insert into Inventario (CantidadInsumos, NumeroLote ) values ('20','3059');
insert into Inventario (CantidadInsumos, NumeroLote ) values ('14','2578');
insert into Inventario (CantidadInsumos, NumeroLote ) values ('4','4578');
insert into Inventario (CantidadInsumos, NumeroLote ) values ('47','4785');


/*Inserción de tipos de Factura*/
insert into Factura (NumeroDeFactura, Garantia) values ('57845','2 ');
insert into Factura (NumeroDeFactura, Garantia) values ('45785','1 ');
insert into Factura (NumeroDeFactura, Garantia) values ('65235','1  ');
insert into Factura (NumeroDeFactura, Garantia) values ('54652','5  ');


/*Inserción de tipo de cliente*/
insert into Cliente (Nombre,Apellido,TipoDocumento,Correo,Telefono,Dirección) values ('Nicol','Gomez','cc ','Nicolgo@gmail.com','3058198221','Crr 10 b 12-34' );
insert into Cliente (Nombre,Apellido,TipoDocumento,Correo,Telefono,Dirección) values ('Paula','Garcia','cc','Pgarcia69@gmail.com','30125487','calle 18 a 34-21');
insert into Cliente (Nombre,Apellido,TipoDocumento,Correo,Telefono,Dirección) values ('Alejandro','Canon','id','Alejandroca@hotmail.com','3102554376','Diagonal 7 c 34-23');
insert into Cliente (Nombre,Apellido,TipoDocumento,Correo,Telefono,Dirección) values ('Brayan','Portilla','pass','Bportilla@gmail.com','3184020174','Crr 27 a 56-34');

/*Inserción de tipo de Porducto*/
insert into Producto (Calidad,Referencia,Nombre,Precioproducto) values ('A','1245','Mochilas ','23500','3058198221');
insert into Producto (Calidad,Referencia,Nombre,Precioproducto) values ('B','5241','Ruanas','45368','30125487');
insert into Producto (Calidad,Referencia,Nombre,Precioproducto) values ('C','12542','Sombreros','52364','3102554376');
