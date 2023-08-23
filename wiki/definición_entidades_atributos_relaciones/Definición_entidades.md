# **Definición de Entidades:**

## - **Venta**
| Nombre | Definición | Dominio | Tipo |
|---|------|---|---|
| Venta |  Representa una venta del restaurante y está compuesto de $N$ detalles de venta. Es hecha por un empleado | Ventas realizadas por el restaurante | Fundamental | 

## - **DetalleVenta**
| Nombre | Definición | Dominio | Tipo
|---|------|---|---|
| DetalleVenta |  Representa el detalle de una venta del restaurante donde se vende un producto y compone a la venta | Productos vendidos y sus cantidades en una venta hecha por el restaurante | Fundamental | 

## - **Producto**
| Nombre | Definición | Dominio | Tipo
|---|------|---|---|
| Producto |  Representa un producto disponible en el restaurante, es vendido en $N$ detalles de venta y tiene su propia receta | Productos del restaurante en el menú que están disponibles | Fundamental | 

## - **Empleado**
| Nombre | Definición | Dominio | Tipo
|---|------|---|---|
| Empleado |  Representa un empleado del restaurante (solo meseros), puede hacer $N$ ventas | Empleados contratados por el restaurante (activos - inactivos) | Fundamental | 

## - **Feedback**
| Nombre | Definición | Dominio | Tipo
|---|------|---|---|
| Feedback |  Representa una calificación dada a un producto por un cliente, el cliente puede o no dar su nombre y su teléfono | Feedback dados por un cliente a un producto (disponible o no) | Débil | 

## - **Receta**
| Nombre | Definición | Dominio | Tipo
|---|------|---|---|
| Receta |  Representa la receta de un producto del restaurante, está compuesta de $N$ ingredientes y es clasificada en una categoría específica | Las recetas de los productos del restaurante (disponibles o no) | Fundamental | 

## - **Ingrediente**
| Nombre | Definición | Dominio | Tipo
|---|------|---|---|
| Ingrediente |  Representa los ingredientes que tiene el restaurante, componen a una receta y son clasificados en una categoría específica | Ingredientes usados en productos y comprados por el restaurante |Fundamental | 

## - **Categoría**
| Nombre | Definición | Dominio | Tipo
|---|------|---|---|
| Categoría |  Representa las categorías válidas que pueden tener $N$ recetas e ingredientes | Categorías posibles de las recetas e ingredientes | Secundaria | 

## - **Locación**
| Nombre | Definición | Dominio | Tipo
|---|------|---|---|
| Locación |  Representa la locación del restaurante donde pueden ser almacenados $N$ ingredientes | Locaciones posibles del restaurante para almacenar ingredientes (con cantidad > $0$) | Secundaria | 