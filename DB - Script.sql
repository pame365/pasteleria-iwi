CREATE DATABASE IF NOT EXISTS reposteriaiwi;
USE reposteriaiwi;

CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    fecha_registro DATE
) ENGINE = InnoDB;

CREATE TABLE Productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo_producto VARCHAR(50),
    sabor VARCHAR(50),
    tamaño VARCHAR(50),
    stock_actual INT DEFAULT 0
);


CREATE TABLE Ingredientes (
    id_ingrediente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    unidad VARCHAR(20), -- gramos, litros, unidades
    cantidad_disponible DECIMAL(10,2)
);


CREATE TABLE Recetas (
    id_receta INT AUTO_INCREMENT PRIMARY KEY,
    id_producto INT NOT NULL,
    id_ingrediente INT NOT NULL,
    cantidad_necesaria DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_ingrediente) REFERENCES Ingredientes(id_ingrediente)
        ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE Pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    fecha_pedido DATE ,
    estado ENUM('pendiente','en proceso','entregado','cancelado') DEFAULT 'pendiente',
    total DECIMAL(10,2) DEFAULT 0.00,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
        ON DELETE SET NULL ON UPDATE CASCADE
);


CREATE TABLE Pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    fecha_pedido DATE,
    estado ENUM('pendiente','en proceso','entregado','cancelado') DEFAULT 'pendiente',
    total DECIMAL(10,2) DEFAULT 0.00,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
        ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;