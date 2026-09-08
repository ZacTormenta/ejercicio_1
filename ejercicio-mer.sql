-- Ejercicio MER
-- Fecha: 08/09/2026
-- Autor: Emilian Santiago Villamizar Martinez

-- Crear base de datos:
CREATE DATABASE ejercicio_mer;
CREATE TABLE Productora(
    ID INTEGER PRIMARY KEY;
    Nombre VARCHAR;
)
CREATE TABLE Estado(
    ID INTEGER PRIMARY KEY;
    Nombre VARCHAR;
)
CREATE TABLE Ejemplar(
    Numero INTEGER PRIMARY KEY;
    Estado_ID INTEGER Foreign Key (ID) REFERENCES (Estado);
    Pelicula_ID INTEGER Foreign key (ID) REFERENCES(Pelicula);
)
CREATE TABLE Pelicula(
    ID INTEGER PRIMARY KEY;
    Productora_ID INTEGER Foreign Key (ID) REFERENCES (Productora);
    Nacionalidad_ID INTEGER Foreign Key (ID) REFERENCES (Nacionalidad);
    Titulo VARCHAR;
    Director_ID INTEGER Foreign Key (ID) REFERENCES (Director);
    Fecha DATETIME;
)
CREATE TABLE Director(
    ID INTEGER PRIMARY KEY;
    Nacionalidad_ID INTEGER Foreign Key (ID) REFERENCES (Nacionalidad);
    Nombre VARCHAR;
)
CREATE TABLE Ejemplar_Renta(
    Ejemplar_Numero INTEGER Foreign Key (Numero) REFERENCES (Ejemplar);
    Renta_Numero INTEGER Foreign Key (Numero) REFERENCES (Renta);
    Entrega DATETIME;
)
CREATE TABLE Renta(
    Numero INTEGER PRIMARY KEY;
    Cliente_DNI INTEGER Foreign Key (DNI) REFERENCES (Cliente);
    Inicia DATETIME;
    Termina DATETIME;
)
CREATE TABLE Reparto(
    Actor_ID INTEGER Foreign key (ID) REFERENCES (Actor);
    Pelicula_ID INTEGER Foreign key (ID) REFERENCES(Pelicula);
    Rol INTEGER;
)
CREATE TABLE Nacionalidad(
    ID INTEGER PRIMARY KEY;
    Nombre VARCHAR;
)
CREATE TABLE Cliente(
    DNI INTEGER PRIMARY KEY;
    Cliente_DNI INTEGER Foreign Key (DNI) REFERENCES (Cliente);
    Nombre VARCHAR;
    Direccion VARCHAR;
    Telefono VARCHAR;
)
CREATE TABLE Actor(
    ID VARCHAR;
    Nacionalidad_ID INTEGER Foreign Key (ID) REFERENCES (Nacionalidad);
    Nombre VARCHAR;
    Sexo CHAR;
)