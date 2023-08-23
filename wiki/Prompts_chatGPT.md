# **Prompts ChatGPT:**

A continuación, presentamos los 'Prompts' dados a ChatGPT para resolver dudas, generar texto o crear código.

- ¡Hola! Actúa como un ingeniero de sistemas con énfasis en bases de datos relacionales.
  
  En el diseño de una base de datos relacional de un restaurante de comidas rápidas, ¿cuál sería una posible entidad débil? Sabiendo que ya se tienen las siguientes entidades: Empleado, Producto, Venta, Receta, Ingrediente, Locación (de un ingrediente) y Cliente
  
![Resultado5](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/resultadoGPT5.jpg?raw=true)

- ¡Hola! Actúa como un ingeniero de sistemas con énfasis en bases de datos relacionales.

  En una relación entre una entidad fundamental y otra débil, la débil qué tipo de participación tiene? Mandatory u Opcional? La entidad débil tendrá una llave foránea de la fundamental?
  
![Resultado4](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/resultadoGPT4.jpg?raw=true)


- ¡Hola! Actúa como un ingeniero de sistemas con énfasis en bases de datos relacionales. Generame 50 inserts para una base de datos relacional en SQL de un restaurante de la tabla Empleado con los siguientes atributos:
  
```
    empleado_id  tipo VARCHAR(10 ) 
    empleado_nombre    VARCHAR(30 CHAR), 
    empleado_fecha_contratación DATE, 
    empleado_dirección          VARCHAR(20 CHAR) , 
    empleado_teléfono           VARCHAR(15 CHAR) 
```
![Resultado1](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/resultadoGPT1.png?raw=true)


- ¡Hola! Actúa como un ingeniero de sistemas con énfasis en bases de datos relacionales. Generame 50 inserts para una base de datos relacional en SQL de un restaurante de la tabla ingrediente, con los siguientes atributos atributos:
```
    ingrediente_id             VARCHAR2(10) , 
    ingrediente_nombre         VARCHAR2(15 CHAR), 
    ingrediente_costo_unitario NUMBER(8, 2), 
    ingrediente_cantidad       INTEGER, 
    ingrediente_medida         VARCHAR2(10), 
    locación_locación_id       VARCHAR2(10) Ej: L001
    categoría_categoría_id     VARCHAR2(10)  Ej: C001
```
![Resultado2](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/resultadoGPT2.png?raw=true)

	Entiendo. Puedes continuar generando los inserts desde I010? 

![Resultado3](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/resultadoGPT3.png?raw=true)


- ¡Hola! Actúa como un ingeniero de sistemas con énfasis en bases de datos relacionales. Dame la creación de tablas en SQL de las siguientes entidades: Venta, DetalleVenta, Producto, Receta, Ingrediente, Locación (entidad secundaria), Feedback (entidad débil), Categoría (entidad secundaria) y Empleado. Una plantilla, no es necesario que lo hagas con muchos atributos o relaciones

![Resultado6](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/resultadoGPT6.png?raw=true)

