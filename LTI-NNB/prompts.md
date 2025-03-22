-------------
MODELO USADO
-------------

Claude-3.7-sonnet

-----
PROMPT #1
-----

Estoy desarrollando un sistema ATS de nombre "LTI". Ya tengo un documento en formato Markdown, con la descripción del software, algunos casos de uso, el modelo de datos, el diseño del sistema, entre otros. Quiero que lo leas y que tengas el contexto completo para proseguir con unas tareas.

-----
PROMPT #2
-----

Como parte del equipo de desarrollo, genera 5 historias de usuario del sistema "LTI". 

Para ello, me gustaria que: 

- Te enfocaras en el usuario
- Uses descripciones informales y en lenguaje natural, manteniendo un formato simple y conciso.
- Fomentes la colaboración
- Definas de manera clara, los criterios que deben cumplirse para considerar una historia terminada.

El formato de cada historia de usuario la necesito en formato Markdown, con la siguiente estructura: 
## Historia: 
Como [rol de usuario], quiero [accion que debe realizar el usuario], para que [beneficio que espera obtener el usuario]
EJ: Como gerente de producto, quiero una manera en que los miembros del equipo puedan entender cómo las tareas individuales contribuyen a los objetivos, para que puedan priorizar mejor su trabajo.
## Criterios de Aceptacion: 
Lista de 3 criterios de aceptacion.
## Notas adicionales 
(si se requiere)
## Historias de usuario relacionadas 
(si se requiere)

-----
PROMPT #3
-----

Prioriza a tu consideración las useer stories a partir del impacto que ocasionan en el producto, para ser usadas con metodología SCRUM.

-----
PROMPT #4
-----

Dadas las historias de usuario anteriores, que tecnologias se necesitan para llevar a cabo cada historia? Resalta la más importante y la menos importante.

-----
PROMPT #5
-----

A partir de esta respuesta, organiza por prioridad aquellas historias de usuario que requieran mas importancia y deban atacarse rápido. Ten en cuenta que el proyecto se realizara con metodología Scrum.

-----
PROMPT #6
-----

Teniendo en cuenta las funcionalidades existentes del sistema "LTI" , y con las historias de usuario que me entregaste, identifica los cinco problemas mas comunes que podrian enfrentar los usuarios y sugiere mejoras para ello.

-----
PROMPT #7
-----

A partir de las tecnologias necesarias e importantes, a la concurrencia de cada problema y al impacto de cada mejora, prioriza las user Stories, explicando el porque de la decisión, y enfocando las prioridades para ser usadas con metodología SCRUM. Recuerda ser claro y conciso con cada explicación.

-----
PROMPT #8
-----

Eres un experto planificador de proyectos de software. A partir de la Historia de usuario #2, junto con todo su contexto, genera los Tickets de trabajo para dar la historia por completada, siguiendo la metodología SCRUM. Ten en cuentas las siguientes consideraciones: 

* El equipo de trabajo esta conformado por 4 Junior Devs, 2 Senior Devs y 1 Lead Dev.
* La estimacion de cada ticket la haremos usando la metodología de camisetas en donde XS: 4 horas, S: 1 dia, M: 3 dias, L: 5 dias, XL: 10 dias.
* Los sprints son de 2 semanas (10 dias laborales)
* Las categorias que usaremos en cada ticket son: Feature, Tarea Tecnica, Bugs/Errores, Mejoras, Investigacion.
* Prioriza a partir del impacto en el core del sistema, cada ticket usando valores como Critico, Alto, Medio y Bajo

Cada ticket debe tener el siguiente formato: 

* Titulo Claro y Corto
* Descripcion detallada de 1 o dos lineas, mostrando el proposito.
* Criterios de aceptacion
* Prioridad
* Estimado de esfuerzo
* Asignado 
* Categoria 
* Comentarios

Redactalo en formato Markdown.