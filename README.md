integrantes 
Morante
Espinoza Olivo 
Parrales
Acuña 
# pasteleria-iwi
Fecha: 18/julio/2025
Integrantes: Parrales, Morante, Espinoza Olivo 
Tema: Proyecto ABP

Negocio:                                             Pastelería iwi

En nuestro negocio de pastelería, nos hemos dado cuenta de que, a medida que aumenta la cantidad de pedidos y productos, también se vuelve más difícil mantener el control de todo. Desde los ingredientes que se usan, hasta los pedidos que hacen los clientes. Es importante tener todo bien controlado y organizado para que no haya errores ni pérdidas, ya que, si no se lleva un buen orden, se puede gastar más de la cuenta, olvidar pedidos o incluso perder clientes por una mala atención. 
Por esta razón, una base de datos es muy útil. Nos ayuda a guardar y organizar toda la información importante del negocio.
Ante esta situación, decidimos desarrollar un modelo de base de datos que nos permita organizar todos los aspectos importantes del negocio: productos, pedidos, clientes, inventario y ventas. Esta herramienta será clave para automatizar procesos, reducir errores y mejorar el servicio al cliente, permitiéndonos hacer crecer la pastelería de manera más profesional.
Dicho esto nuestras dos tablas principales las denominamos “clientes” y “productos”. 
En primer lugar tenemos como campo de nuestra tabla “producto” la cual se desglosa en los siguientes subcampos; id_ producto (este campo identifica el producto), nombre, tipo_producto, sabor, tamaño, stock_actual(loa cantidad de disponibilidad de ese producto).
La tabla “productos” está conectado con una tabla denominada “inventario” dentro de esta tabla se encuentran dos campos, la cuales son “ingredientes” y la otra es “recetas”. Dentro de ingredientes, podemos observar los campos que serían;  id_ingredientes, nombre, unidad, cantidad, disponible,  costo unitario. dentro de la recetas. Manejamos los siguientes campos; id_ receta, id_ producto, id_ ingredientes, cantidad_necesaria.
Una de las tablas  principales es “cliente” la cuál cuenta con los siguientes subcampos; id_ clientes (único), nombre, teléfono, Gmail, fecha_registro. Esta tabla está conectada con pedidos las cual cuenta con los siguientes subcampos; id_pedido, id_cliente, fecha_pedido, estado_pedido,  total.
