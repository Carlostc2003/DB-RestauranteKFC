/*Inserción de datos a las tablas*/
INSERT INTO PAIS VALUES 
('US', 'Estados Unidos', '$', 331000000),
('MX', 'México', '$', 126000000),
('ES', 'España', '€', 47000000),
('UK', 'Reino Unido', '£', 67000000),
('JP', 'Japón', '¥', 125000000),
('KR', 'Corea del Sur', '₩', 51700000),
('CN', 'China', '¥', 1440000000),
('IN', 'India', '₹', 1380000000),
('BR', 'Brasil', 'R', 212000000),
('AU', 'Australia', '$', 25800000);


INSERT INTO PROVEEDOR VALUES
('A12345678', 'Tyson Foods'),
('B23456789', 'Cargill'),
('C34567890', 'Pilgrim’s'),
('D45678901', 'Hormel Foods'),
('E56789012', 'BRF Global'),
('F67890123', 'Sanderson Farms'),
('G78901234', 'Maple Leaf Foods'),
('H89012345', 'Marfrig'),
('I90123456', 'Nestlé Pro'),
('J01234567', 'Pepsico Supplies');

INSERT INTO TELEFONO VALUES
('555-1001', 'A12345678'),
('555-1002', 'B23456789'),
('555-1003', 'C34567890'),
('555-1004', 'D45678901'),
('555-1005', 'E56789012'),
('555-1006', 'F67890123'),
('555-1007', 'G78901234'),
('555-1008', 'H89012345'),
('555-1009', 'I90123456'),
('555-1010', 'J01234567');

INSERT INTO PROVEER VALUES
('A12345678', 'US'),
('B23456789', 'MX'),
('C34567890', 'ES'),
('D45678901', 'UK'),
('E56789012', 'JP'),
('F67890123', 'KR'),
('G78901234', 'CN'),
('H89012345', 'IN'),
('I90123456', 'BR'),
('J01234567', 'AU');

INSERT INTO RECETA VALUES
(1, 'Pollo Original', 'Receta secreta de 11 hierbas y especias'),
(2, 'Pollo Extra Crispy', 'Empanizado doble y fritura profunda'),
(3, 'Tiras de Pollo', 'Pechuga marinada y empanizada'),
(4, 'Hot Wings', 'Alitas picantes fritas'),
(5, 'Krusher Oreo', 'Bebida con helado y galletas Oreo'),
(6, 'Papas Fritas', 'Papas cortadas y sazonadas'),
(7, 'Ensalada Coleslaw', 'Col, zanahoria y salsa dulce'),
(8, 'Mac & Cheese', 'Macarrones con queso cheddar'),
(9, 'Chicken Sandwich', 'Pechuga frita en pan brioche'),
(10,'BBQ Wings', 'Alitas con salsa BBQ');

/*Aqui*/
INSERT INTO USAR VALUES
(1, 'US'),
(2, 'MX'),
(3, 'ES'),
(4, 'UK'),
(5, 'JP'),
(6, 'KR'),
(7, 'CN'),
(8, 'IN'),
(9, 'BR'),
(10,'AU');

INSERT INTO CLIENTE_FIDELIZADO VALUES
('11111111A','1990-05-12','Laura González'),
('22222222B','1988-09-22','Carlos Ramírez'),
('33333333C','2000-01-03','Marta Domínguez'),
('44444444D','1995-07-18','David López'),
('55555555E','1982-02-24','Ana Martínez'),
('66666666F','1999-11-30','Pablo Ortega'),
('77777777G','2001-04-07','Sofía Torres'),
('88888888H','1993-06-19','Jorge Serrano'),
('99999999I','1989-10-15','Elena Navarro'),
('12345678J','2002-12-11','Miguel Sáez');

INSERT INTO POSEER VALUES
('11111111A','ES'),
('22222222B','MX'),
('33333333C','ES'),
('44444444D','US'),
('55555555E','BR'),
('66666666F','UK'),
('77777777G','JP'),
('88888888H','KR'),
('99999999I','AU'),
('12345678J','IN');

INSERT INTO LOCAAL VALUES
(1,'KFC Times Square','Nueva York','7th Avenue','102','10036');

INSERT INTO LOCAAL(nombre, ciudad, calle, numero, codigo_postal) VALUES
('KFC Reforma','Ciudad de México','Paseo de la Reforma','350','06600'),
('KFC Gran Vía','Madrid','Gran Vía','55','28013'),
('KFC Oxford','Londres','Oxford Street','220','W1D1L'),
('KFC Shibuya','Tokio','Center Gai','12','15001'),
('KFC Gangnam','Seúl','Teheran-ro','152','06134'),
('KFC Beijing Center','Pekín','Wangfujing','88','10006'),
('KFC Mumbai Central','Mumbai','Lamington Rd','45','40008'),
('KFC Copacabana','Río de Janeiro','Av. Atlântica','3000','22070'),
('KFC Sydney Central','Sydney','George St','580','20000');

INSERT INTO ESTAR VALUES
(1,'US'),
(2,'MX'),
(3,'ES'),
(4,'UK'),
(5,'JP'),
(6,'KR'),
(7,'CN'),
(8,'IN'),
(9,'BR'),
(10,'AU');

INSERT INTO PEDIDO(idLocal, fecha, nombre_cliente, dniCliente) VALUES
(1,'2025-01-10 14:20:00','Laura González','11111111A'),
(2,'2025-01-10 15:30:00','Carlos Ramírez','22222222B'),
(3,'2025-01-11 13:15:00','Marta Domínguez','33333333C'),
(4,'2025-01-11 19:00:00','David López','44444444D'),
(5,'2025-01-12 12:40:00','Ana Martínez','55555555E'),
(6,'2025-01-12 17:25:00','Pablo Ortega','66666666F'),
(7,'2025-01-13 20:10:00','Sofía Torres','77777777G'),
(8,'2025-01-13 21:45:00','Jorge Serrano','88888888H'),
(9,'2025-01-14 11:50:00','Elena Navarro','99999999I'),
(10,'2025-01-14 18:05:00','Miguel Sáez','12345678J');

INSERT INTO TRABAJADOR VALUES
('T1111111A','John Miller',1),
('T2222222B','Luis Ramírez',2),
('T3333333C','Sara García',3),
('T4444444D','Mark Wilson',4),
('T5555555E','Yuki Tanaka',5),
('T6666666F','Kim Soo',6),
('T7777777G','Li Wei',7),
('T8888888H','Raj Patel',8),
('T9999999I','Bruno Silva',9),
('T0000000J','Chris Taylor',10);

INSERT INTO LIMPIEZA VALUES
('T1111111A'),
('T2222222B'),
('T3333333C'),
('T4444444D'),
('T5555555E'),
('T6666666F'),
('T7777777G'),
('T8888888H'),
('T9999999I'),
('T0000000J');

INSERT INTO LIMPIAR VALUES
('T1111111A',1),
('T2222222B',2),
('T3333333C',3),
('T4444444D',4),
('T5555555E',5),
('T6666666F',6),
('T7777777G',7),
('T8888888H',8),
('T9999999I',9),
('T0000000J',10);

INSERT INTO ENCARGADO VALUES
('T1111111A'),
('T2222222B'),
('T3333333C'),
('T4444444D'),
('T5555555E'),
('T6666666F'),
('T7777777G'),
('T8888888H'),
('T9999999I'),
('T0000000J');

INSERT INTO TRABAJO VALUES
(1,'T1111111A','2025-01-01'),
(2,'T2222222B','2025-01-01'),
(3,'T3333333C','2025-01-02'),
(4,'T4444444D','2025-01-02'),
(5,'T5555555E','2025-01-03'),
(6,'T6666666F','2025-01-03'),
(7,'T7777777G','2025-01-04'),
(8,'T8888888H','2025-01-04'),
(9,'T9999999I','2025-01-05'),
(10,'T0000000J','2025-01-05');

INSERT INTO INCIDENCIA(descripcion) VALUES
('Fuga en tubería del baño'),
('Problema con la freidora'),
('Fallo eléctrico en cocina'),
('Rotura de vidrio en entrada'),
('Retraso en proveedores'),
('Aire acondicionado averiado'),
('Problemas con el horno'),
('Resbalón de cliente'),
('Caída del sistema de caja'),
('Temperatura incorrecta en cámara fría');

INSERT INTO REGISTRAR VALUES
(1,'T1111111A',1),
(2,'T2222222B',2),
(3,'T3333333C',3),
(4,'T4444444D',4),
(5,'T5555555E',5),
(6,'T6666666F',6),
(7,'T7777777G',7),
(8,'T8888888H',8),
(9,'T9999999I',9),
(10,'T0000000J',10);

INSERT INTO INGREDIENTES VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);

/*Comprobación de todos los datos*/
SELECT * FROM PAIS;
SELECT * FROM PROVEEDOR;
SELECT * FROM TELEFONO;
SELECT * FROM PROVEER;
SELECT * FROM RECETA;
SELECT * FROM USAR;
SELECT * FROM CLIENTE_FIDELIZADO;
SELECT * FROM POSEER;
SELECT * FROM LOCAAL;
SELECT * FROM ESTAR;
SELECT * FROM PEDIDO;
SELECT * FROM TRABAJADOR;
SELECT * FROM LIMPIEZA;
SELECT * FROM LIMPIAR;
SELECT * FROM ENCARGADO;
SELECT * FROM TRABAJO;
SELECT * FROM INCIDENCIA;
SELECT * FROM REGISTRAR;
SELECT * FROM INGREDIENTES;
