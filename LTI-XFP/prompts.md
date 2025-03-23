# Prompts para la actividad

He usado ChatGPT con 4o

Como me ha quedado el chat bastante limpio y ordenado lo comparto :). Lo hago sobretodo para que veáis la última parte, que creo que es bastante "Divertida" Ya que para estimar he hecho como una especie de paso a paso conversacional con chatgpt como si fueramos un equipo de desarrollo, hemos definido las reglas de estimación y hemos haciendo hasta que ha realizado el resultado final.

https://chatgpt.com/share/67dfdf02-824c-800c-9047-8219de8ff4a8

## Prompts intro

Hola, Actua como Product Manager que tambíen tiene experiencia de Business Analyst. Llevamos unas semanas trabajando los requerimientos y el análisis de arquitectura de alto nivel de una nueva aplicación tipo ATS. Para ello te voy a compartir los documentos realizados, primero el PRD con los requerimientos y luego con el diseño de Arquitectura de alto nivel. Antes de generar las historias de usuario, debes asegurarte de que comprendes a fondo el PRD. Esto incluye:

- Objetivos del producto: Entender por qué se está creando el producto, cuál es el problema que resuelve y cuál es su propuesta de valor.
- Audiencia objetivo: Identificar claramente los usuarios finales del producto.
- Requisitos y características clave: Leer y desglosar las funcionalidades y especificaciones que deben implementarse.
- Restricciones y dependencias: Identificar cualquier limitación técnica, legal o de negocio que deba tenerse en cuenta.
- Ten claro el stack tecnológico y la arquitectura que quiero implementar.
Lo importante es que de estos documentos quiero que:
- Entiendas completamente el propósito del producto y qué se espera lograr con este producto.
- Asegúrate de tener claro quién es el usuario final y cuál es la experiencia deseada.
Tómate el tiempo que creas necesario para hacer tu trabajo y si tienes dudas hazme preguntas para asegurar que hacemos una buena tarea.

----

Lo primero que quiero, basado en toda la información, organiza los requisitos más amplios en Epics. Como product Manager ya sabes que un Epic es un conjunto de funcionalidades relacionadas que abordan un objetivo mayor o una característica principal del producto. 

Te comparto algún ejemplo de Epic: Registro de usuario, Gestión de pagos, Dashboard de análisis, Funcionalidad de notificaciones, etc.

Quiero que realizes una lista clara de Epics que agrupen las funcionalidades clave del producto. Tómate todo el tiempo que creas necesario y hazme preguntas antes de empezar si crees que te van a ayudar a realizar una mejor tarea.


---- Aquí me ha hecho preguntas y yo le he respondido ----

El backlog esta dirigido a todo el equipo de ingenieria y de producto, así que seran front y backend developers, devops, equipo de documentacion y QA, etc.
Quiero que en general las funciones esten orientadas en funcionalidad.
Si, las funcionalidades internas tambien están incluidas para conseguir el exito del producto.
Por ahora vamos a centrarnos al MVP porque debemos completarlo cuanto antes.

-----

Me gusta el resultado de las epics pero creo que debajo de ellas me has puesto alguns user stories que por ahora no necesito. Quiero que para cada épic me hagas una definición clara incluyendo los siguientes apartados:
- Título: Un nombre claro y conciso para la Epic.
- Descripción: Un resumen de lo que representa la Epic y cómo contribuirá al objetivo del producto o al valor que se busca entregar al usuario.
- Objetivo/Beneficio: El valor que se obtiene al completar esta Epic, tanto para el usuario como para el negocio.
- Criterios de aceptación a alto nivel: Indicaciones generales sobre cómo sabremos que esta Epic está completa.
Tómate el tiempo que sea necesario y dame la salida en codigo markdown para añadir a mi documentación.

## Creamos las user Stories

Prerfecto.  Ahora para cada Epic quiero que desgloses en historias usuario más pequeñas y manejables. Las historias de usuario deben alinearse con los objetivos de negocio, enfocarse en el usuario y ser lo suficientemente claras para que el equipo de desarrollo las pueda implementar.

Quiero que sigas el formato estándar para las historias de usuario:
Como [rol de usuario], quiero [acción o necesidad], para que [beneficio o valor].
Te pongo un ejemplo de historia de usuario:
Como usuario registrado, quiero poder actualizar mi información de pago, para que mi suscripción continúe sin interrupciones.

Pero a más a más quiero que para cada historia, definas criterios de aceptación usando el formato Given/When/Then para asegurar que todos tengan claridad sobre los resultados esperados.
Como ejemplo de criterio de aceptación:
Given que soy un usuario registrado,
When accedo a la sección de "Mi cuenta",
Then debería poder ver un botón para actualizar mi información de pago.

En resumen, tómate el tiempo que creas necesario para crear un conjunto de historias de usuario que cubren todas las funcionalidades y requisitos identificados en los epics que han salido del documento PRD.

## Backlog

Ahora me vas a ayudar a crear y priorizar el Backlog de Producto.
Vas a coger todas las historias de usaurio que hemos creado  y las organizaras en un backlog de producto. Tómate el tiempo que creas necesario para priorizar, es fundamental para el éxito de la tarea. Utiliza un enfoque de priorización de Value vs Complexity combinado con MosCow para asegurarte de que estás abordando las funcionalidades más importantes primero.

Quiero que me des un Backlog de producto priorizado, listo para ser trabajado por el equipo en los próximos sprints.

## Tareas

No hace falta, vamos a por la siguiente tarea:
Vas a coger la primera user story del backlog, que es la primera que se debe hacer por prioridad: Registro de usuario. Quiero que para esta historia de usario hagas un desglose de tareas o tickets de trabajo más pequeños para que puedan ser gestionados más fácilmente por los ingenieros de software del proyecto. Estos tickets son lo que se implementarán durante el sprint. Al escribir estos tickets, asegúrate de:

- Incluir pasos técnicos claros para implementar la funcionalidad.
- Especificar cualquier requisito de prueba o criterios de aceptación adicionales.
- Si es necesario, dividir las tareas en subtareas más pequeñas para asegurar que el trabajo sea lo suficientemente detallado.

Ejemplo de tarea de trabajo para una historia:

- Crear el formulario de actualización de pago.
- Implementar validaciones de campo para los datos de pago.
- Conectar el formulario con la API de procesamiento de pagos.
- Crear pruebas unitarias para el flujo de actualización de pago.


Quiero que me des el detalle de todos los Tickets de trabajo. Bien detallados, listos para ser asignados al equipo de desarrollo. Bien aterrízalos técnicamente, tal y como se hace en las reuniones de planificación.

## Tareas detallado con estimación

Vale, tu siguiente tarea va a ser enriquecer el listado de tickets que has realizado para ayudar a los desarrolladores. Primero para cada ticket quiere que le añadas criterios de aceptación claros y medibles. Quiero que los documentes adecuadamente para que sean entendibles. Tambien quiero que le añadadas una sección de prioridad al ticket para que evalues cual es importante es ese ticket para que el desarrollador lo priorize frente a otros y finalmente vamos a añadir una estimación para el ticket. Se que es dificil estimar sin un historial claro del equipo pero vamos a ir paso a paso. Las estimaciones serán usando puntos de historia. Un punto de historia representa 4 horas. Vamos a ir ticket a ticket haciendo una estrategia de estimación de scrum poker. Tu me ofreceras el valor que crees, luego yo te digo lo que yo creo y si es igual se queda ese valor, y si lo que tu dices respecto lo que yo digo es diferente por ahora nos quedaremos la estimacion mas pesimista. Te paso entonces el listado de posibles valores para que luego pongas el valor correcto en puntos te historia en el ticket.
0: Tarea que no requiere esfuerzo o ya está hecha (no se asigna ningún punto).
1: Tarea muy pequeña, estimada en 4 horas de trabajo.
2: Tarea pequeña, estimada en 8 horas de trabajo (2 puntos).
3: Tarea pequeña a media, estimada en 12 horas de trabajo (3 puntos).
5: Tarea de tamaño medio, estimada en 20 horas de trabajo (5 puntos).
8: Tarea grande, estimada en 32 horas de trabajo (8 puntos).
13: Tarea muy grande, estimada en 52 horas de trabajo (13 puntos).
20: Tarea extremadamente grande, estimada en 80 horas de trabajo (20 puntos).
40: Tarea compleja, estimada en 160 horas de trabajo (40 puntos).
100: Tarea muy compleja o "epic", estimada en 400 horas de trabajo (100 puntos).
∞: Tareas tan grandes o inciertas que no se pueden estimar fácilmente (esto sugiere que la tarea debe ser desglosada antes de la estimación).

Tomate el tiempo que creas necesario para el éxito de este trabajo


