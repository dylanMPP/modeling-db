REM   Script: Tablas modelado de Perro gordo
REM   Creacion de las tablas que hacen parte del problema de modelado perro gordo

CREATE TABLE categoría ( 
    categoría_id     VARCHAR2(10 CHAR) NOT NULL, 
    categoría_nombre VARCHAR2(20 ) NOT NULL, 
	PRIMARY KEY ( categoría_id ) 
);

CREATE TABLE empleado ( 
    empleado_id                 VARCHAR2(10 CHAR) NOT NULL, 
    empleado_nombre             VARCHAR2(30 CHAR) NOT NULL, 
    empleado_fecha_contratación DATE NOT NULL, 
    empleado_dirección          VARCHAR2(20 CHAR) NOT NULL, 
    empleado_teléfono           VARCHAR2(15 CHAR) NOT NULL, 
    PRIMARY KEY ( empleado_id ), 
    UNIQUE ( empleado_teléfono ) 
);

CREATE TABLE venta ( 
    venta_id             VARCHAR2(10 CHAR) NOT NULL, 
    venta_precio_total   NUMBER(8, 2) NOT NULL, 
    venta_fecha          DATE NOT NULL, 
    empleado_empleado_id VARCHAR2(10 CHAR) NOT NULL, 
    PRIMARY KEY ( venta_id ), 
    FOREIGN KEY ( empleado_empleado_id ) REFERENCES empleado ( empleado_id ) 
);

CREATE TABLE receta ( 
    receta_id                   VARCHAR2(10 CHAR) NOT NULL, 
    receta_tiempo_preparación   NUMBER(4, 2) NOT NULL, 
    categoría_categoría_id      VARCHAR2(10 CHAR) NOT NULL, 
    PRIMARY KEY ( receta_id ), 
    FOREIGN KEY ( categoría_categoría_id ) REFERENCES categoría ( categoría_id ) 
);

CREATE TABLE producto ( 
    producto_id      VARCHAR2(10 CHAR) NOT NULL, 
    producto_nombre  VARCHAR2(20 CHAR) NOT NULL, 
    producto_precio  NUMBER(8, 2) NOT NULL, 
    producto_costo   NUMBER(8, 2) NOT NULL, 
    receta_receta_id VARCHAR2(10 CHAR) NOT NULL, 
    PRIMARY KEY ( producto_id ), 
    FOREIGN KEY ( receta_receta_id ) REFERENCES receta ( receta_id ) 
);

CREATE TABLE detalle_venta ( 
    detalle_venta_id            VARCHAR2(10 CHAR) NOT NULL, 
    detalle_venta_cantidad_prod INTEGER NOT NULL, 
    producto_producto_id        VARCHAR2(10 CHAR) NOT NULL, 
    detalle_venta_total         NUMBER(8, 2) NOT NULL, 
    venta_venta_id              VARCHAR2(10 CHAR) NOT NULL, 
    PRIMARY KEY ( detalle_venta_id ), 
    FOREIGN KEY ( producto_producto_id ) REFERENCES producto ( producto_id ), 
    FOREIGN KEY ( venta_venta_id ) REFERENCES venta ( venta_id ) 
);

CREATE TABLE feedback ( 
    feedback_calificación INTEGER NOT NULL, 
    feedback_fecha        DATE NOT NULL, 
    producto_producto_id  VARCHAR2(10 CHAR) NOT NULL, 
    nombre_cliente        VARCHAR2(30 CHAR), 
    teléfono_cliente      VARCHAR2(15 CHAR),
    PRIMARY KEY (teléfono_cliente, producto_producto_id ),
    FOREIGN KEY ( producto_producto_id ) REFERENCES producto ( producto_id ) 
);

CREATE TABLE locación ( 
    locación_id    VARCHAR2(10 CHAR) NOT NULL, 
    locación_lugar VARCHAR2(20 CHAR) NOT NULL, 
    PRIMARY KEY ( locación_id ) 
);

CREATE TABLE ingrediente ( 
    ingrediente_id             VARCHAR2(10 CHAR) NOT NULL, 
    ingrediente_nombre         VARCHAR2(15 CHAR) NOT NULL, 
    ingrediente_costo_unitario NUMBER(8, 2) NOT NULL, 
    ingrediente_cantidad       INTEGER NOT NULL, 
    ingrediente_medida         VARCHAR2(10 CHAR) NOT NULL, 
    locación_locación_id       VARCHAR2(10 CHAR) NOT NULL, 
    categoría_categoría_id     VARCHAR2(10 CHAR) NOT NULL, 
    PRIMARY KEY ( ingrediente_id ),
    FOREIGN KEY ( locación_locación_id ) REFERENCES locación ( locación_id ) 
);

CREATE TABLE receta_ingrediente ( 
    receta_receta_id           VARCHAR2(10 CHAR) NOT NULL, 
    ingrediente_ingrediente_id VARCHAR2(10 CHAR) NOT NULL,
    receta_cantidad_ingrediente INTEGER NOT NULL, 
    PRIMARY KEY ( receta_receta_id, ingrediente_ingrediente_id ), 
    FOREIGN KEY ( ingrediente_ingrediente_id ) REFERENCES ingrediente ( ingrediente_id ), 
    FOREIGN KEY ( receta_receta_id ) REFERENCES receta ( receta_id ) 
);