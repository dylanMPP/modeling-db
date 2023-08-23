# **Algoritmo de Transformación**

## - **Paso 0:**
  Refinar el diagrama incluyendo las entidades secundarias y eliminando atributos compuestos y multivaluados. En este caso, no tenemos atributos compuestos, pero sí multivaluados, los que entonces tomaremos como atributos normales. Asimismo, ya tenemos las entidades secundarias necesarias: 'Categoría' y 'Locación', por lo que no tenemos que agregar más.

  ![categoria_1](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/categoria_1.jpg?raw=true)

  ![locación_1](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/locacion_1.jpg?raw=true)

  Los atributos multivaluados 'teléfonoCliente' y 'empleadoTeléfono' quedan como un atributo normal.

  ![clienteTelefono_1](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/clienteTelefono_1.jpg?raw=true)

  ![empleadoTelefono_1](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/empleadoTelefono_1.jpg?raw=true)

## - **Paso 1:**
  Se crea una tabla con el nombre de la entidad, una columna por cada atributo y se define la llave primaria al final de la tabla usando la instrucción `PRIMARY KEY (<keyAttribute>)`. En este paso, mostraremos los casos de las entidades 'Empleado' y 'Venta'.

  ![empleado_1](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/empleado_1.jpg?raw=true)

  ![venta_1](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/venta_1.jpg?raw=true)

## - **Paso 2:**
  Definir las tablas que corresponden a las entidades débiles del diagrama. En nuestro caso, la única entidad débil es 'Feedback', ya que depende de la existencia de la entidad 'Producto'. Así pues:

  ![feedback_1](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/feedback_1.jpg?raw=true)

## - **Paso 3:**
  Transformar las relaciones binarias $1$ ... $1$. En nuestro caso, tenemos $1$ relación binaria con esas cardinalidades, la que va de 'Producto' a 'Receta' (tiene), donde elegimos a 'Producto' para que tenga la llave foránea, porque tiene participación 'Mandatory', mientras que 'Receta' tiene participación 'Optional'. Quedaría de la siguiente manera:  

  ![producto_1](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/producto_1.jpg?raw=true)

## - **Paso 4:**
  Transformar las relaciones binarias $1$ ... $N$. Aquí, analizamos si la relación es recursiva o no, dependiendo del caso tomaremos un proceso a seguir. En nuestro problema, tenemos $5$ relaciones binarias con esas cardinalidades y ninguna de ellas es recursiva, por lo que para cada una tomamos la entidad que tiene cardinalidad $N$ y le agregamos un atributo del mismo tipo que la Primary Key de la otra entidad y la declaramos como Foreign Key referenciando a la Primary Key de la otra entidad. Mostraremos el ejemplo de las entidades 'Venta' y 'Empleado', donde 'Venta' tiene la cardinalidad $N$ con participación 'Mandatory', y de las entidades 'Producto' y 'DetalleVenta', donde 'DetalleVenta' tiene la cardinalidad $N$ con participación 'Mandatory'. Podemos notar que 'DetalleVenta' también tiene una relación con las cardinalidades de este paso con 'Venta', donde 'DetalleVenta' es quien tiene cardinalidad $N$ con participación 'Mandatory', por lo que también la mostraremos. Quedarían de la siguiente manera:

  ![venta_2](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/detalleventa_1.jpg?raw=true)

  ![detalleventa_1](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/detalleventa_1.jpg?raw=true)

## - **Paso 5:**
  Transformar las relaciones binarias $N$ ... $N$. Para esto, debemos crear una nueva tabla con el nombre de ambas entidades (opcional), que tiene como atributos las llaves primarias de ambas entidades denotadas como Foreign Key, con los atributos de la relación y con una Primary Key compuesta de las llaves primarias de las entidades. En nuestro problema, tenemos $1$ relación con esas cardinalidades, pero no es una relación binaria, es una relación ternaria, por lo que no haremos nada en este paso. Luego del paso $6$, cuando ya "rompamos" la relación ternaria, especificamos el procedimiento de este paso.

## - **Paso 6:**
  Transformar las relaciones enearias (más de $2$ entidades). En nuestro problema, tenemos $1$ relación enearia, más especificamente, una ternaria, esta se presenta entre 'Categoría', 'Receta' e 'Ingrediente. Según el algoritmo, debemos crear una nueva tabla, pero podemos ver que si la creamos, tendríamos una tabla que contiene a cada receta, con cada ingrediente con cada categoría, lo que sería redundante, pues una receta está compuesta de $N$ ingredientes. Así pues, decidimos transformar esta relación ternaria, en $2$ relaciones binarias: 
  - Una entre 'Categoría' y 'Receta', donde 'Categoría' tiene cardinalidad $1$ con participación 'Optional' y 'Receta' tiene cardinalidad $N$ con participación 'Mandatory'.
  - Otra entre 'Receta' e 'Ingrediente', donde ambas tienen cardinalidad $N$ con participación 'Mandatory'.

No generamos una relación binaria entre 'Categoría' e 'Ingrediente', ya que sería también redundante. Así pues, si modificaramos el diagrama:

  ![destruccion_ternaria](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/destruccion_ternaria.jpg?raw=true)

En código:

  ![receta_1](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/receta_1.jpg?raw=true)

  ![ingrediente_1](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/ingrediente_1.jpg?raw=true)

  ![categoria_2](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/categoria_2.jpg?raw=true)

---

Se puede ver que de la relación ternaria surgieron $2$ binarias, con distintas cardinalidades (una de $1$ ... $N$ y otra de $N$ ... $N$), por tanto, vamos a hacer una segunda iteración de los pasos $4$ y $5$.

## - **Paso 4:**
  Transformar las relaciones binarias $1$ ... $N$. Aquí, analizamos si la relación es recursiva o no, dependiendo del caso tomaremos un proceso a seguir. Por lo dicho anteriormente, tenemos una relación entre 'Receta' y 'Categoría' con estas cardinalidades. Quedarían de la siguiente manera:

  ![receta_2](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/receta_2.jpg?raw=true)

## - **Paso 5:**
  Transformar las relaciones binarias $N$ ... $N$. Para esto, debemos crear una nueva tabla con el nombre de ambas entidades (opcional), que tiene como atributos las llaves primarias de ambas entidades denotadas como Foreign Key, con los atributos de la relación y con una Primary Key compuesta de las llaves primarias de las entidades. Con lo dicho anteriormente, tenemos una relación entre 'Receta' e 'Ingrediente' con estas cardinalidades. Quedarían así:

  ![receta_ingrediente_1](https://github.com/Bloque-SID/problema-de-modelado-t5/blob/main/wiki/images/receta_ingrediente_1.jpg?raw=true)

El algoritmo de transformación es presentado paso a paso en el siguiente link a través de un Excel:
https://drive.google.com/drive/folders/1X07miuF7lIKeWdIKlg7Xm_GHVQ1LHzYl?usp=sharing