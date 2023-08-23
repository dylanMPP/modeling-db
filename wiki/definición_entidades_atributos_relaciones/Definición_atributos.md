# **Definición de Atributos:**
## - **Venta:**

| Att Nombre | Att Definición | Att Dominio | Primary? | Unique? | Mandatory? |
|---|------|---|---|------|---|
| VENTA_ID | Es el código único de identificación de una venta | VARCHAR (cadena) de máximo tamaño $10$ unidades CHAR | $$x$$ | $$x$$ | $$x$$ |
| VENTA_PRECIO_TOTAL | Es el precio o dinero total a pagar de una venta | NUMERIC con precisión de $8$ (dígitos antes de la coma) y escala de $2$ (dígitos después de la coma) |  |  | $$x$$ |
| VENTA_FECHA | Es la fecha de realización de una venta | DATETIME con valores insertados con `DATE` en el formato 'YYYY-MM-DD' (año-mes-día) y menores o iguales a la fecha actual |  |  | $$x$$ |

## - **Empleado:**
| Att Nombre | Att Definición | Att Dominio | Primary? | Unique? | Mandatory? |
|---|------|---|---|------|---|
| EMPLEADO_ID | Es el código único de identificación de un empleado | VARCHAR (cadena) de máximo tamaño $10$ unidades CHAR | $$x$$ | $$x$$ | $$x$$ |
| EMPLEADO_NOMBRE | Es el nombre de un empleado | VARCHAR (cadena) de máximo tamaño $30$ unidades CHAR |  |  | $$x$$ |
| EMPLEADO_FECHA_CONTRATACIÓN | Es la fecha de contratación de un empleado | DATETIME con valores insertados con `DATE` en el formato 'YYYY-MM-DD' (año-mes-día) y menores o iguales a la fecha actual |  |  | $$x$$ |
| EMPLEADO_DIRECCIÓN | Es la dirección de residencia de un empleado | VARCHAR (cadena) de máximo tamaño $20$ unidades CHAR |  |  | $$x$$ |
| EMPLEADO_TELÉFONO | Es el número telefónico de un empleado | VARCHAR (cadena) de máximo tamaño $15$ unidades CHAR |  | $$x$$ | $$x$$ |

## - **Detalle Venta:**
| Att Nombre | Att Definición | Att Dominio | Primary? | Unique? | Mandatory? |
|---|------|---|---|------|---|
| DETALLE_VENTA_ID | Es el código único de identificación de un detalle de venta | VARCHAR (cadena) de máximo tamaño $10$ unidades CHAR | $$x$$ | $$x$$ | $$x$$ |
| DETALLE_VENTA_CANTIDAD_PROD | Es la cantidad vendida del producto en un detalle de venta | INTEGER con valores $>$ $0$ |  |  | $$x$$ |
| DETALLE_VENTA_TOTAL | Es el precio o dinero total a pagar de un detalle de venta dependiendo del producto y su cantidad | NUMERIC con precisión de $8$ (dígitos antes de la coma) y escala de $2$ (dígitos después de la coma) |  |  | $$x$$ |

## - **Producto:**
| Att Nombre | Att Definición | Att Dominio | Primary? | Unique? | Mandatory? |
|---|------|---|---|------|---|
| PRODUCTO_ID | Es el código único de identificación de un producto | VARCHAR (cadena) de máximo tamaño $10$ unidades CHAR | $$x$$ | $$x$$ | $$x$$ |
| PRODUCTO_NOMBRE | Es el nombre de un producto | VARCHAR (cadena) de máximo tamaño $20$ unidades CHAR |  |  | $$x$$ |
| PRODUCTO_PRECIO | Es el precio de un producto | NUMERIC con precisión de $8$ (dígitos antes de la coma) y escala de $2$ (dígitos después de la coma) |  |  | $$x$$ |
| PRODUCTO_PRECIO | Es el costo (lo que cuesta hacer) de un producto | NUMERIC con precisión de $8$ (dígitos antes de la coma) y escala de $2$ (dígitos después de la coma) |  |  | $$x$$ |

## - **Feedback:**
| Att Nombre | Att Definición | Att Dominio | Primary? | Unique? | Mandatory? |
|---|------|---|---|------|---|
| FEEDBACK_CALIFICACIÓN | Es la calificación dada en un feedback a un producto | INTEGER con valores $\geq$ $1$ y $\leq$ $5$ |  |  | $$x$$ |
| FEEDBACK_FECHA | Es la fecha en la que se realizó el feedback | DATETIME con valores insertados con `DATE` en el formato 'YYYY-MM-DD' (año-mes-día) y menores o iguales a la fecha actual |  |  | $$x$$ |

## - **Receta:**
| Att Nombre | Att Definición | Att Dominio | Primary? | Unique? | Mandatory? |
|---|------|---|---|------|---|
| RECETA_ID | Es el código único de identificación de una receta | VARCHAR (cadena) de máximo tamaño $10$ unidades CHAR | $$x$$ | $$x$$ | $$x$$ |
| RECETA_TIEMPO_PREPARACIÓN | Es el tiempo estimado de una receta para realizar el producto | NUMERIC con precisión de $4$ (dígitos antes de la coma) y escala de $2$ (dígitos después de la coma) |  |  | $$x$$ |

## - **Categoría:**
| Att Nombre | Att Definición | Att Dominio | Primary? | Unique? | Mandatory? |
|---|------|---|---|------|---|
| CATEGORÍA_ID | Es el código único de identificación de una categoría | VARCHAR (cadena) de máximo tamaño $10$ unidades CHAR | $$x$$ | $$x$$ | $$x$$ |
| CATEGORÍA_NOMBRE | Es el nombre de una categoría | VARCHAR (cadena) de máximo tamaño $20$ unidades CHAR |  |  | $$x$$ |

## - **Ingrediente:**
| Att Nombre | Att Definición | Att Dominio | Primary? | Unique? | Mandatory? |
|---|------|---|---|------|---|
| INGREDIENTE_ID | Es el código único de identificación de un ingrediente | VARCHAR (cadena) de máximo tamaño $10$ unidades CHAR | $$x$$ | $$x$$ | $$x$$ |
| INGREDIENTE_NOMBRE | Es el nombre de un ingrediente | VARCHAR (cadena) de máximo tamaño $15$ unidades CHAR |  |  | $$x$$ |
| INGREDIENTE_COSTO_UNITARIO | Es el costo unitario de un ingrediente | NUMERIC con precisión de $8$ (dígitos antes de la coma) y escala de $2$ (dígitos después de la coma) |  |  | $$x$$ |
| INGREDIENTE_CANTIDAD | Es la cantidad almacenada del ingrediente en una locación | INTEGER con valores $>$ $0$ |  |  | $$x$$ |
| INGREDIENTE_MEDIDA | Es la medida en la que se mide el ingrediente | VARCHAR (cadena) de máximo tamaño $10$ unidades CHAR |  | | $$x$$ |

## - **Locación:**
| Att Nombre | Att Definición | Att Dominio | Primary? | Unique? | Mandatory? |
|---|------|---|---|------|---|
| LOCACIÓN_ID | Es el código único de identificación de una locación | VARCHAR (cadena) de máximo tamaño $10$ unidades CHAR | $$x$$ | $$x$$ | $$x$$ |
| LOCACIÓN_LUGAR | Es el nombre del lugar o de la locación | VARCHAR (cadena) de máximo tamaño $20$ unidades CHAR |  |  | $$x$$ |

## - **Relación Producto-Feedback:**
| Att Nombre | Att Definición | Att Dominio | Unique? | Mandatory? |
|---|------|---|---------|---|
| NOMBRE_CLIENTE | Es el nombre del cliente que dio un feedback a un producto | VARCHAR (cadena) de máximo tamaño $30$ unidades CHAR |   |  |
| TELÉFONO_CLIENTE | Es el teléfono del cliente que dio un feedback a un producto | VARCHAR (cadena) de máximo tamaño $15$ unidades CHAR |  |  |

## - **Relación Receta-Ingrediente:**
| Att Nombre | Att Definición | Att Dominio | Unique? | Mandatory? |
|---|------|---|---------|---|
| CANTIDAD_INGREDIENTE | Es la cantidad necesaria de un ingrediente para una receta | INTEGER con valores $>$ $0$ |   | $$x$$ |