use DAM1_reto2_Grupo6;

create table Cliente (
DNI char(9) primary key,
nombre varchar(50) not null,
apellido varchar(100) not null,
correo varchar(200) unique not null,
contrasena varchar(255) not null
);

create table Compra (
idCompra int auto_increment primary key,
fecha datetime not null,
hora time not null,
precio decimal(8,2) not null,
descuento decimal(5,2),
DNI char(9) not null,
constraint fk_DNI_Cliente foreign key(DNI) references Cliente(DNI) on update cascade
);

create table Sala(
idSala int auto_increment primary key,
nombre varchar(50) not null
);

create table Pelicula(
idPeli int auto_increment primary key,
titulo varchar(100)	not null,
duracion int not null,
genero varchar(50),
precio decimal(8,2) not null
);

create table Sesion (
idSesion int auto_increment primary key,
fecha date not null,
horaIni time not null,
horaFin time not null,
precio decimal(8,2) not null,
idSala int not null,
idPeli int not null,
constraint fk_idSala_Sala foreign key(idSala) references Sala(idSala) on update cascade,
constraint fk_idPeli_Pelicula foreign key(idPeli) references Pelicula(idPeli) on update cascade
);

create table Entrada (
idEntrada int auto_increment primary key,
descuento decimal(5,2),
precio decimal(8,2) not null,
num_pers int unsigned not null,
idCompra int not null,
idSesion int not null,
constraint fk_idCompra_Compra foreign key(idCompra) references Compra(idCompra) on update cascade,
constraint fk_idSesion_Sesion foreign key(idSesion) references Sesion(idSesion) on update cascade
);





-- Insertar pelicula de cine
INSERT INTO Pelicula (titulo, duracion, genero, precio) VALUES 
('Avatar: Fuego y ceniza', 195, 'Ciencia Ficción', 12.50),
('Zootrópolis 2', 100, 'Animación', 9.50),
('28 años después: El templo de los huesos', 115, 'Terror', 10.50),
('La Asistenta', 108, 'Thriller', 10.00),
('Abuela Tremenda', 95, 'Comedia', 8.50),
('Bob Esponja: Una aventura pirata', 90, 'Animación', 8.50),
('Sin Piedad', 105, 'Acción', 9.80),
('Aída y vuelta', 110, 'Comedia', 9.00);



-- Insertar salas de cine
INSERT INTO sala (nombre) VALUES ('Sala Principal');
INSERT INTO sala (nombre) VALUES ('Sala 2');
INSERT INTO sala (nombre) VALUES ('Sala 3');
INSERT INTO sala (nombre) VALUES ('Sala VIP');
INSERT INTO sala (nombre) VALUES ('Sala Infantil');
INSERT INTO sala (nombre) VALUES ('Sala 3D');
INSERT INTO sala (nombre) VALUES ('Sala 4D');



-- Insertar clientes de cine
INSERT INTO Cliente (DNI, nombre, apellido, correo, contrasena) VALUES
('12345678A', 'Álvaro', 'García', 'alvaro@mail.com', 'pass123'),
('87654321B', 'Laura', 'Martínez', 'laura@mail.com', 'pass456'),
('87654321P', 'meric', 'lopez', 'meric@mail.com', 'pass789');



-- Insertar compras de cine
INSERT INTO Compra (fecha, hora, precio, descuento, DNI) VALUES
('2026-01-22', '12:30:00', 20.00, 2.00, '12345678A'),
('2026-01-22', '14:00:00', 15.00, 0.00, '87654321B');



-- Insertar sesion cine
INSERT INTO Sesion (fecha, horaIni, horaFin, precio, idSala, idPeli) VALUES
('2026-01-22', '18:00:00', '20:16:00', 8.50, 1, 1),
('2026-01-22', '20:30:00', '22:05:00', 7.50, 2, 2),
('2026-01-23', '16:00:00', '18:35:00', 9.00, 3, 3),
('2026-01-23', '19:00:00', '21:28:00', 8.00, 4, 4),
('2026-01-24', '15:00:00', '17:42:00', 9.50, 5, 5),
('2026-01-24', '17:45:00', '19:27:00', 7.50, 6, 6),

-- 28 ENERO
('2026-01-28', '17:30:00', '20:45:00', 9.50, 1, 1),
('2026-01-28', '20:00:00', '21:40:00', 8.50, 5, 2),

-- 29 ENERO
('2026-01-29', '18:00:00', '19:55:00', 9.00, 3, 3),
('2026-01-29', '20:30:00', '22:18:00', 8.00, 4, 4),

-- 30 ENERO
('2026-01-30', '17:00:00', '18:42:00', 8.50, 5, 5),
('2026-01-30', '19:30:00', '21:00:00', 7.50, 6, 6),

-- 31 ENERO
('2026-01-31', '18:30:00', '20:15:00', 9.00, 2, 7),
('2026-01-31', '21:00:00', '22:50:00', 8.50, 1, 8),

-- 1 FEBRERO
('2026-02-01', '16:30:00', '18:05:00', 7.50, 5, 5),
('2026-02-01', '19:00:00', '22:15:00', 10.00, 7, 1),

-- 2 FEBRERO
('2026-02-02', '17:00:00', '18:30:00', 7.50, 6, 6),
('2026-02-02', '20:00:00', '21:55:00', 9.00, 3, 3),

-- 3 FEBRERO
('2026-02-03', '18:45:00', '20:35:00', 8.50, 1, 8),
('2026-02-03', '21:00:00', '22:40:00', 8.50, 2, 2),

-- 4 FEBRERO
('2026-02-04', '17:30:00', '20:45:00', 9.50, 7, 1),
('2026-02-04', '20:30:00', '22:10:00', 8.50, 5, 2),

-- 5 FEBRERO
('2026-02-05', '18:00:00', '19:55:00', 9.00, 3, 3),
('2026-02-05', '21:00:00', '22:48:00', 8.00, 4, 4),

-- 6 FEBRERO
('2026-02-06', '17:00:00', '18:42:00', 8.50, 5, 5),
('2026-02-06', '19:30:00', '21:00:00', 7.50, 6, 6);



-- Insertar entrada de cine
INSERT INTO Entrada (descuento, precio, num_pers, idCompra, idSesion) VALUES
(1.00, 7.50, 2, 1, 1),
(0.00, 7.50, 1, 2, 4);
