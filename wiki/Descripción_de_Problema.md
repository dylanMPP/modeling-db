# **Descripción del problema**

El caso para el problema de este trabajo de modelado de bases de datos relacionales consiste en un restaurante de comidas rápidas llamado ‘Perro Gordo’, ubicado en la ciudad de Buga, en el departamento del Valle del Cauca. Este restaurante lleva más de 20 años ofreciendo sus productos de alta calidad, siendo un lugar muy reconocido y considerado por muchos como ‘el mejor en comidas rápidas’.

El restaurante, con el fin de actualizar su sistema, contrató un profesional para la implementación de un software para gestionar la información, sin embargo, después de un tiempo el sistema presentó limitaciones por temas suscripciones y pagos mensuales. ‘Perro Gordo’ decidió contratar un grupo de ingenieros con el fin de implementar software propio para llevar contabilidad, la caja, el personal, los productos y la administración del negocio. A nuestro equipo se nos asignó la modelación de la base de datos y su implementación, para esta tarea el restaurante nos proporcionó la siguiente información:

* El restaurante cuenta con ingredientes, recetas, productos, empleados y ventas, de los cuales quiere tener registros. 

* Los ingredientes en este tipo de negocio son la materia prima para poder operar, por eso cuando son recibidos del proveedor (que en este caso su información no resulta relevante), son almacenados en una ubicación que cuenta con un ID para saber en dónde se encuentra. A su vez, el ingrediente cuenta con ID único que lo identifica, nombre comercial, costo unitario, medida (puede ser unidades, gramos, mililitros, etc.), cantidad que está dada en la medida que es especificada y finalmente a la categoría o grupo de ingredientes a la que pertenece.

* La receta es la forma y medida en que se usan los ingredientes para la preparación de un producto, dentro de sus atributos tiene un ID único de receta y su tiempo de preparación. Posee una relación con los ingredientes debido a que una receta cuenta con muchos ingredientes, pero un ingrediente puede hacer parte de diferentes recetas, de esa relación sale como producto la cantidad de ingrediente necesaria para cada receta y la categoría a la que pertenece la receta.

* El producto es el resultado de la implementación de la receta, son las opciones que tiene el cliente para consumir. El producto tiene un ID único, nombre, el costo de preparar el producto y su precio para el cliente. Los clientes tienen la opción de calificar el producto (hacer un feedback), donde se registrará el nombre y el teléfono del cliente (opcionales), la fecha y el valor de la calificación, la cual va de $1$ a $5$.

* Los empleados cuentan con un ID, nombre, fecha de contratación, dirección y teléfono. Los empleados, en este caso, serán solo los meseros, es decir, se encargan de registrar sus ventas, de las cuales se tiene registro del ID de la venta, fecha y su valor total. 

* Las ventas tienen su propio ID, fecha y precio o dinero total a pagar, y se descomponen en detalles de venta, los cuales guardan los registros de los productos que se han servido en la venta, tienen su propio ID del detalle y guardan la información de las unidades del producto y el valor total.

Este problema es original, lo cual quiere decir que no tomamos como base otro contexto u otro caso, ya que el restaurante existe verdaderamente y la situación tecnológica descrita es verídica. Por tanto, tomamos este caso con el fin de poder ayudar a ‘Perro Gordo’ para que cuente con una base de datos diseñada e implementada de la mejor manera.