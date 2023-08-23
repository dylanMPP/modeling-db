# **Modelos Conceptuales**

## - **Notación de Chen**:

  La siguiente imagen muestra el modelo en diagrama con la notación de Chen. Podemos ver que las entidades son representadas por rectangulos iniciando con mayúscula, cuyos atributos están unidos con líneas sin dirección en ovalos (con doble línea si son atributos multivaluados) iniciando con minúscula (las llaves primarias subrayadas) y que las relaciones entre entidades están representadas como rombos y un verbo en minúscula. Ahora, las entidades débiles están diseñadas como rectángulos con doble contorno y la participación opcional con un círculo vacío en la línea de la entidad en la relación.

![chen_diagram](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/chen_diagram.png?raw=true)

Podemos notar que existen $9$ entidades en el diagrama:
  - **DetalleVenta:** Tiene $3$ atributos, $1$ llave primaria, está relacionado con 'Venta' y con 'Producto', en ambas tiene cardinalidad $N$ con participación 'Mandatory'.

  - **Venta:**  Tiene $3$ atributos, $1$ llave primaria, está relacionado con 'DetalleVenta' y con 'Empleado', en la primera tiene cardinalidad $1$ y en la segunda tiene cardinalidad $N$, ambas con participación 'Mandatory'.

  - **Empleado:** Tiene $5$ atributos, $1$ atributo multivaluado, $1$ llave primaria, está relacionado con 'Venta', con cardinalidad $1$ y con participación 'Optional'.

  - **Locación:** Tiene $2$ atributos, $1$ llave primaria, está relacionado con 'Ingrediente', tiene cardinalidad $1$ con participación 'Optional'.

  - **Ingrediente:** Tiene $6$ atributos, $1$ llave primaria, está relacionado con 'Categoría', con 'Receta' y con 'Locación', en todas tiene cardinalidad $N$ con participación 'Mandatory'.

  - **Receta:** Tiene $3$ atributos, $1$ llave primaria, está relacionado con 'Categoría' y con 'Ingrediente', en ambas tiene cardinalidad $N$ con participación 'Mandatory'.

  - **Categoría:** Tiene $2$ atributos, $1$ llave primaria, está relacionado con 'Receta' y con 'Ingrediente', en ambas tiene cardinalidad $1$ con participación 'Optional'.

  - **Producto:** Tiene $4$ atributos, $1$ llave primaria, está relacionado con 'DetalleVenta', con 'Receta' y con 'Feedback', en todas tiene cardinalidad $1$, en la primera con participación 'Optional' y las otras con participación 'Mandatory'.

  - **Feedback:** Tiene $2$ atributos, no tiene llaves primarias (es débil), está relacionado con 'Producto' (esta relación tiene $2$ atributos: 'nombreCliente' y 'teléfonoCliente'), tiene cardinalidad $N$ con participación 'Mandatory'.

El siguiente link lleva a una carpeta drive que contiene el diagrama:

https://drive.google.com/drive/folders/1gd1pWqnlyrPQPKKEA77-tlr6D7IHVwf_?usp=sharing

----

## - **DataModeler - Notación Barker**:

  La siguiente imagen muestra el modelo conceptual (lógico) en diagrama con la notación de Barker hecha en DataModeler. Podemos ver que las entidades son representadas por rectangulos con esquinas curveadas, cuyos atributos están contenidos en el rectángulo y tienen un $*$ si son obligatorios y un # si son la llave primaria, unidos con líneas con 'patas de gallina' sin dirección, la línea es punteada si esa entidad tiene participación 'Optional' y tienen la 'pata de gallina' si la cardinalidad de esa entidad es $N$, si no la tiene, es $1$. Cabe recalcar que aquí no se presenta la relación ternaria de manera "completa", pues 'destruimos' esa relación y solo nos quedaron relaciones binarias entre 'Categoría' y 'Receta', y 'Receta' e 'Ingrediente', esto está explicado con mayor profundidad en el [Algoritmo de Transformación](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/Algoritmo_Transformaci%C3%B3n.md).

	
![logical_diagram](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/logical_diagram.jpg?raw=true)

Ahora, si hubiésemos destruido la relación ternaria de manera "completa", hubiésemos obtenido $3$ relaciones binarias: una entre 'Categoría' y 'Receta', 'Receta' e 'Ingrediente', y 'Categoría' e 'Ingrediente'. En DataModeler se vería de la siguiente manera. (este diagrama **NO** es el final, es simplemente un complemento para ver la diferencia entre el de arriba ↑ que es el que vamos a usar y este)

![logical_diagram2](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/logical_diagram2.jpg?raw=true)

Podemos ver que la diferencia entre los $2$ es la relación entre 'Categoría' e 'Ingrediente. De todas formas, en ambos diagramas, podemos notar que existen $9$ entidades en el diagrama, pero, a diferencia del diagrama de Chen, no podemos ver fácilmente los atributos de cada relación, para eso, podemos ingresarnos en cada relación para ver los atributos. Así pues:
  - **DetalleVenta:** Tiene $3$ atributos, $1$ llave primaria, está relacionado con 'Venta' y con 'Producto', en ambas tiene cardinalidad $N$ con participación 'Mandatory'.

  - **Venta:**  Tiene $3$ atributos, $1$ llave primaria, está relacionado con 'DetalleVenta' y con 'Empleado', en la primera tiene cardinalidad $1$ y en la segunda tiene cardinalidad $N$, ambas con participación 'Mandatory'.

  - **Empleado:** Tiene $5$ atributos, $1$ atributo multivaluado, $1$ llave primaria, está relacionado con 'Venta', con cardinalidad $1$ y con participación 'Optional'.

  - **Locación:** Tiene $2$ atributos, $1$ llave primaria, está relacionado con 'Ingrediente', tiene cardinalidad $1$ con participación 'Optional'.

  - **Ingrediente:** Tiene $6$ atributos, $1$ llave primaria, está relacionado con 'Categoría', con 'Receta' y con 'Locación', en todas tiene cardinalidad $N$ con participación 'Mandatory'.

  - **Receta:** Tiene $3$ atributos, $1$ llave primaria, está relacionado con 'Categoría' y con 'Ingrediente', en ambas tiene cardinalidad $N$ con participación 'Mandatory'.

  - **Categoría:** Tiene $2$ atributos, $1$ llave primaria, está relacionado con 'Receta' y con 'Ingrediente', en ambas tiene cardinalidad $1$ con participación 'Optional'.

  - **Producto:** Tiene $4$ atributos, $1$ llave primaria, está relacionado con 'DetalleVenta', con 'Receta' y con 'Feedback', en todas tiene cardinalidad $1$, en la primera con participación 'Optional' y las otras con participación 'Mandatory'.

  - **Feedback:** Tiene $2$ atributos, no tiene llaves primarias (es débil), está relacionado con 'Producto' (esta relación tiene $2$ atributos: 'nombreCliente' y 'teléfonoCliente'), tiene cardinalidad $N$ con participación 'Mandatory'.

El siguiente link lleva a una carpeta drive que contiene los diagramas (lógico y relacional) y los archivos para abrir el modelo conceptual en DataModeler:
https://drive.google.com/drive/folders/1JkOpeC8a3Cbw94-5OTILKuUoNWft5NKS?usp=sharing