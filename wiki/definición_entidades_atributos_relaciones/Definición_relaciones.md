# **Matriz de Relaciones**
La siguiente imagen representa la matriz de relaciones donde se describe la salida y llegada desde todas las entidades con su respectiva descripción. Cabe recalcar que aquí no se presenta la relación ternaria de manera "completa", pues 'destruimos' esa relación y solo nos quedaron relaciones binarias entre 'Categoría' y 'Receta', y 'Receta' e 'Ingrediente', esto está explicado con mayor profundidad en el [Algoritmo de Transformación](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/Algoritmo_Transformaci%C3%B3n.md).

![relationships_matrix](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/matriz_relaciones.jpg?raw=true)

A su vez, se puede hallar el Excel de la matriz a través del siguiente link:
https://drive.google.com/drive/folders/1Ke8qmMqUpSZF1yBG5wqURAuZiTHYQXoc?usp=sharing

# **Cardinalidad de Relaciones**
Para cada relación, escribimos de forma escrita el signifcado de cada cardinalidad en ambas direcciones de la relación. Cabe recalcar que aquí no se presenta la relación ternaria de manera "completa", pues 'destruimos' esa relación y solo nos quedaron relaciones binarias entre 'Categoría' y 'Receta', y 'Receta' e 'Ingrediente', esto está explicado con mayor profundidad en el [Algoritmo de Transformación](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/Algoritmo_Transformaci%C3%B3n.md).

  - **DetalleVenta -> Producto:** $1$ (un) detalle de venta vende $1$ (un) producto. Producto tiene participación 'Optional' y DetalleVenta 'Mandatory'.
  - **Producto -> DetalleVenta:** $1$ (un) producto es vendido en $N$ (muchos) detalles de venta. Producto tiene participación 'Optional' y DetalleVenta 'Mandatory'.
  - **DetalleVenta -> Venta:** $1$ (un) detalle de venta compone a $1$ (una) venta. Venta y DetalleVenta tienen participación 'Mandatory'. 
  - **Venta -> DetalleVenta:** $1$ (una) venta está compuesta de $N$ (muchos) detalles de venta. Venta y DetalleVenta tienen participación 'Mandatory'.
  - **Empeado -> Venta:** $1$ (una) venta es realizada por $1$ empleado. Empleado tiene participación 'Optional' y Venta 'Mandatory'.
  - **Venta -> Empleado:** $1$ (un) empleado realiza $N$ (muchas) ventas. Empleado tiene participación 'Optional' y Venta 'Mandatory'.
  - **Producto -> Feedback:** $1$ (un) producto tiene $N$ (muchos) feedbacks. Producto y Feedback tienen participación 'Mandatory'.
  - **Feedback -> Producto:** $1$ (un) feedback es de o es realizado a $1$ (un) producto. Producto y Feedback tienen participación 'Mandatory'.
  - **Producto -> Receta:** $1$ (un) producto tiene $1$ (una) receta. Producto tiene participación 'Mandatory' y Receta 'Optional'.
  - **Receta -> Producto:** $1$ (una) receta es de $1$ (un) producto. Producto tiene participación 'Mandatory' y Receta 'Optional'.
  - **Locación -> Ingrediente:** $1$ (una) locación tiene $N$ (muchos) ingredientes. Locación tiene participación 'Optional' e Ingrediente tiene participación 'Mandatory'.
  - **Ingrediente -> Locación:**  $1$ (un) ingrediente está en $1$ (una) locación. Locación tiene participación 'Optional' e Ingrediente tiene participación 'Mandatory'.
  - **Receta -> Categoría:** $1$ (una) receta tiene $1$ (una) categoría. Categoría tiene participación 'Optional' y Receta 'Mandatory'.
  - **Categoría -> Receta:** $1$ (una) categoría es de o la tienen $N$ (muchas) recetas. Categoría tiene participación 'Optional' y Receta 'Mandatory'.
  - **Receta -> Ingrediente:** $1$ (una) receta tiene $N$ (muchos) ingredientes. Receta e Ingrediente tienen participación 'Mandatory'.
  - **Ingrediente -> Receta:** $1$ (un) ingrediente está en o es de $N$ (muchas) recetas. Receta e Ingrediente tienen participación 'Mandatory'.