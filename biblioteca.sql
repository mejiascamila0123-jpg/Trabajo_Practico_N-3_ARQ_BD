CREATE DATABASE Biblioteca;

USE biblioteca;

CREATE TABLE Tema (
	ID_Tema INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Tema VARCHAR(100) NOT NULL
 );
 
 CREATE TABLE Editorial (
	ID_Editorial INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Editorial VARCHAR(100) NOT NULL
 );
 
 CREATE TABLE Autor (
	ID_Autor INT AUTO_INCREMENT PRIMARY KEY,
    NyA VARCHAR(100)
 );
 
 CREATE TABLE Libro (
	ID_Libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    Estado VARCHAR(20),
    ID_Editorial INT NOT NULL,
    ID_Tema INT NOT NULL,
    FOREIGN KEY (ID_Editorial) REFERENCES Editorial(ID_Editorial),
    FOREIGN KEY (ID_Tema) REFERENCES Tema(ID_Tema)
);

CREATE TABLE Libro_Autor (
	ID_Libro INT NOT NULL,
    ID_Autor INT NOT NULL,
    PRIMARY KEY (ID_Libro, ID_Autor),
    FOREIGN KEY (ID_Libro) REFERENCES Libro(ID_Libro),
    FOREIGN KEY (ID_Autor) REFERENCES Autor(ID_Autor)
);

CREATE TABLE Socio (
	ID_Socio  INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(150),
    Cuota VARCHAR(6) NOT NULL
);

CREATE TABLE Prestamo (
	ID_Prestamo INT AUTO_INCREMENT PRIMARY KEY,
    ID_Socio INT NOT NULL,
    Fecha_Prestamo DATE NOT NULL,
    Fecha_Devolución DATE NULL, 
    FOREIGN KEY (ID_Socio) REFERENCES Socio(ID_Socio)
);

CREATE TABLE Prestamo_Libro (
    ID_Prestamo INT NOT NULL,
    ID_Libro INT NOT NULL,
    PRIMARY KEY (ID_Prestamo, ID_Libro),
    FOREIGN KEY (ID_Prestamo) REFERENCES Prestamo(ID_Prestamo),
    FOREIGN KEY (ID_Libro) REFERENCES Libro(ID_Libro)
);
  
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Tema (Nombre_Tema) VALUES
 ('Electrónica'),                -- ID 1
 ('Astrofísica'),                 -- ID 2
 ('Programación'),                -- ID 3
 ('Formación ética y ciudadana'), -- ID 4
 ('Física'),                      -- ID 5
 ('Matemática');                  -- ID 6
  
INSERT INTO Editorial (Nombre_Editorial) VALUES
 ('Alfaomega'),
 ('McGraw-Hill'),
 ('Pearson'),
 ('Marcombo');
 
INSERT INTO Autor (NyA) VALUES	
 ('Marissa Meyer'),
 ('Maria Elena Walsh'),
 ('Miguel de Cervantes'),
 ('H.P. Lovecraft'),
 ('Franz Kafka'); 
 
INSERT INTO Libro (titulo, Estado, ID_Editorial, ID_Tema) VALUES 
 ('Teorema de la relatividad', 'Disponible', 1, 5),         
 ('Cálculo de Una Variable', 'Deteriorado', 3, 6),           
 ('Ingeniería de satélites', 'No encontrado', 2, 2),         
 ('Redes universales', 'Deteriorado', 3, 3),                
 ('Léxico de la política', 'Deteriorado', 2, 4),             
 ('Principios de Electrónica', 'No encontrado', 4, 1),       
 ('Sistemas estelares', 'Disponible', 3, 2),                
 ('Álgebra Lineal y sus Aplicaciones', 'Disponible', 2, 6),  
 ('Mecánica de Fluidos', 'Disponible', 1, 5),               
 ('Estructuras de Datos en C++', 'Disponible', 4, 3);        

 
 INSERT INTO Libro_Autor (ID_Libro, ID_Autor) VALUES
 (1,1),
 (2,2),
 (3,3),
 (4,4),
 (5,2),
 (6,5),
 (7,4),
 (8,2),
 (9,4),
 (10,3);
 
INSERT INTO Socio (Nombre, Cuota) VALUES
('Carlito Perez', 'Al día'),
('Emilce Rodriguez', 'Debe'),
('Carlos Rodríguez', 'Debe'),
('Benjamin Salvatierra', 'Al día'),
('Lucas Fernández', 'Debe'),
('Sofia Gomez', 'Al día'),
('Diego Torres', 'Debe'),
('Pepe Hernan', 'Debe'),
('Sofia Bres', 'Al día'),
('Lusero del Valle', 'Al día');

INSERT INTO Prestamo (ID_Socio, Fecha_Prestamo, Fecha_Devolución) VALUES
(1, '2026-08-13', '2026-08-17'),
(10, '2026-09-08', NULL),
(2, '2026-09-07', NULL),
(8, '2026-08-15', '2026-08-28'),
(9,'2026-09-20',NULL);

INSERT INTO Prestamo_Libro (ID_Prestamo, ID_Libro) VALUES
(1,1),
(2,2),
(3,4),
(4,7),
(5,9);