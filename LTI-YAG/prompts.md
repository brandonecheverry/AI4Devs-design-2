# Prompts

Usando claude 3.7 sonnet + thinking

## Prompt 1
```md
# Planificación y gestión de producto de forma colaborativa y multidisciplinaria

Te ire dando los lineamientos del ejercicio paso a paso, no comentes definiciones innecesarias antes de que terminamos de discutir lo que vamos a realizar, al final cuando te indique que ya termine de darte las indicaciones puedes realizarme las preguntas que consideres necesarias para afrontar el ejercicio de la forma mas óptima posible.
```
## Prompt 2
```md
## Actores y sus roles:

Para el siguiente ejercicio voy a requerir de una colaboración multidisciplinaria, en la que deben participar de tu parte 2 actores separados, con opiniones y decisiones basadas en su propio rol, y contarme a mi como un 3er actor


- Actor 1 (LLM): Product Manager
- Actor 2 (LLM): Business Analyst
- Actor 3: (Yo, el humano que interactua con el LLM): Senior Developer
```
## Prompt 3
```md
## Objetivo

El objetivo sera realizar un trabajo colaborativo, discutido, en la que analicemos, definamos, diseñemos, evaluemos, estimemos y prioricemos en forma conjunta 2 historias de usuario, con las cuales armaremos un backlog de producto, generando los tickets individuales de las historias de usuario para este backlog, los tickets estaran definidos, estimados y priorizados al final del ejercicio, todo esto basados en el PRD simplificado que se encuentra en @PRD.md 
```
## Prompt 4
```md
## Estilo de colaboración

Continuando con los lineamientos del ejercicio, la idea es que tanto el actor 1 como el actor 2 ayuden a generar las user stories, preguntando por mi opinion tecnica de implementacion en las ocaciones que sean necesarias hasta lograr el backlog de tickets por historia de usuario y épicas.
```
## Prompt 5

```md
## Planning Poker

Despues que discutamos y generemos las user stories y sus tickets indivudales, procederemos a generar un Planning Poker para estimar ticket por ticket, esto sera inicialmente una votación secreta para estimar la complejidad del ticket, es necesario que exista una alta claridad y honestidad en las opiniones y valores proporcionados por los actores, ya que el objetivo de el planning poker sera entender la perspectiva de las partes, para generar un debate que nos lleve a mantener la vision del equipo hacia un mismo punto y por ultimo que los actores coincidan en un mismo valor

Ejemplo:

Ticket 1: [Se define el ticket con la información previamente definida: un **titulo** claro y conciso, una **descripción** con el proposito, requisitos y restricciones, sus **criterios de aceptación**, la **prioridad** con urgencia y valor, **etiquetas** como frontend, backend, etc]

Comienza la votación -> el actor 1 y 2 toman su decision y no la muestran hasta que el actor 3 (yo) ingreso mi puntuación -> despues de ingresar la puntuación se revelan los scores de los 3 participantes -> el actor 1 y el actor 2 coinciden en que la tarea corresponde a 4 puntos, sin embargo el actor 3 (yo) considera que la tarea tiene un valor de 2 puntos -> debido a que yo discrepo, se me pregunta el por que ese puntaje, yo doy mi opinion en la que puedo a su vez retractarme, o intentar convencer a los otros actores, los otros actores consideran esto y opinan sobre si lo que yo comento vale la pena bajarle el puntaje o si lo que yo comento no se alinea con la vision del proyecto -> se genera entendimiento de mi parte y yo decido si coincidir con el puntaje o si tengo otra perspectiva que aportar y continuar el debate o pasar al siguiente ticket

La idea no es generar conflicto sino ENTENDIMIENTO, entre las partes, para alinearse a una sola VISION, en el marco de lo definido en el PRD
```

## Prompt 6
```md
## Sistema de puntación para estimar

Utilizaremos un sistema de puntos (1, 2, 4, 8, 16), aumentando el puntaje elegido dependiendo de la complejidad, siendo **1**, los puntos de una tarea muy simple, quizas una linea de codigo o un cambio minimalista que no requiere casi de pensar, **2** una tarea pequeña ya sea añadir un boton o cosas similares en cuanto a complejidad, **4** una tarea que involucre conectar varias partes como un endpoint, **8** aquellas tareas que involucren la creación de un servicio con logica personalizada, en las que se deben añadir otras capas de complejidad, **16** siendo el puntaje de mayor peso en nuestro sistema, debe ser aquella tarea de mayor complejidad pero que no puede ser dividida en otras subtareas.

Algo importante al momento de estimar es que si una tarea parece tomar mas peso que 16, es posible que la misma pueda ser subdivida en otras tareas mas pequeñas para definir como tickets
```

## Prompt 7
```md

## Criterios de los actores
- Es importante entender que estamos en un entorno de alta incertidumbre (VUCA), por lo que debemos actuar siguiendo los principios de VUCA Prime
- La colaboración interdiciplinaria es la clave para lograr el objetivo
- El feedback constante nos llevará a generar la claridad necesaria para generar estimaciones precisas
- Utilizaremos los valores de SCRUM, fomentando la transparencia, inspección y adaptación
- Priorización usando MoSCoW
```

## Prompt 8
```md

## Formato para las User Stories
- Formato estándar: "Como [tipo de usuario], quiero [realizar una acción] para [obtener un beneficio]".
- Descripción: Una descripción concisa y en lenguaje natural de la funcionalidad que el usuario desea.
- Criterios de Aceptación: Condiciones específicas que deben cumplirse para considerar la User Story como "terminada", éstos deberian de seguir un formato similar a “Dado que” [contexto inicial], "cuando” [acción realizada], “entonces” [resultado esperado].
- Notas adicionales:  Notas que puedan ayudar al desarrollo de la historia

Ejemplo completo:

- Título de la Historia de Usuario: 

Como [rol del usuario],
quiero [acción que desea realizar el usuario],
para que [beneficio que espera obtener el usuario].

- Criterios de Aceptación:

[Detalle específico de funcionalidad]
[Detalle específico de funcionalidad]
[Detalle específico de funcionalidad]

- Notas Adicionales:

[Cualquier consideración adicional]

- Historias de Usuario Relacionadas:

[Relaciones con otras historias de usuario]
```

## Prompt 9
```md
Tengo dudas sobre la epica "Gestión de Vacantes y Candidatos", puntualmente el por que fueron agrupadas ambos roles, de vacantes y candidatos en una sola epica, esto debido a que siento que la gestion de las vacantes lleva un trabajo mas corto que la gestión de los candidatos, ya que en esta ultima utilizaremos modelos de AI para generar los insights culturales, es por esto que siento que la gestión de los candidatos por si solo deberia ser una epica, ¿que opinan?

Por otra parte, la primera historia de usuario: "Creación de Vacante por Reclutador" se ve correcta, sobre todo por que para esta historia no estamos considerando el uso de LLMs para la creación, estariamos solo guardando la información de una vacante en nuestra base de datos utilizando nuestro frontend
```

## Prompt 10
```md
Se ve correcta la historia de usuario, no veo a simple vista alguna consideración tecnica a tomar en cuenta en el tema del filtrado, es solo mostrar la información en el frontend y filtrarla enviando los parametros correctos en la consulta
```

## Prompt 11
```md
Si, tengo una consideración con la "edición y cierre de vacante", creo que este historial de modificaciones es de suma importancia y no debe ser visto como algo menor
```

## Prompt 12
```md
Si, podemos continuar con las historias de usuario de la siguiente épica
```

## Prompt 13
```md
Creo que el cargar la información en cada postulación seria un inconveniente para el usuario en temas de UX y seria incomodo a nivel de gestión de la información en la DB, creo que deberia existir un primer paso en el que el usuario cree su perfil y llene toda esta información, esto podria ser como un wizard, una vez llene esa información puede seleccionar con mayor comodidad a que vacante desea postularse

¿que opinan?
```

## Prompt 14
```md
Si, es una mejor estructura
```

## Prompt 15
```md
Tengo algunas consideraciones técnicas:

- Las tareas de ambos tickets siguen siendo muy grandes en mi opinión, creo que deben ser subdivididas en subtareas puntuales, esto favoreceria la estimación de cada tarea de forma individual y permitira estimar de una mejor manera

Ejemplo: por una parte el diseño del UI, la implementación del UI, el manejo de las validaciones y errores del lado del front, la interaccion del boton de borrador y la interaccion del boton de publicar directamente, la logica individual de las acciones del front, la gestión de la DB etc
```

## Prompt 16
```md
Si, lucen mejor las tareas individuales de esta historia de usuario, procedamos con la siguiente historia
```

## Prompt 17
```md
Aqui mis observaciones:

- Ticket 4.6: Implementación frontend del paso 5 - Perfil Musical

Es importante dejarle claro al usuario que si bien no conectar el perfil de spotify es algo opcional, si no lo conecta significaria no obtener una información precisa sobre su perfil cultural y por tanto podria estar en desventaja frente a otros candidatos

- El ticket 4.12 me parece innecesario, esto por que el progreso si debe guardarse paso a paso, para eso estamos implementando endpoints individuales desde el ticket 4.7 hasta el 4.11, lo que si debe poder es ir atras en cada paso y actualizarlo si lo cree conveniente
```

## Prompt 18
```md

Me parece excepcional el trabajo realizado hasta ahora, por favor registremose el avance de esta epica en el archivo @UserStories-YAG.md , en el incluiremos las épicas, las historias de usuario asociadas junto con sus tickets, incluye toda la información que hemos obtenido como resultado, deja un espacio para el valor de la estimación en cada ticket que incluyas para actualizarlas en un futuro cuando realizemos el planning poker

Usa una estructura en markdown como esta:

# LTI - Gestión de candidatos

## Épica [numero y nombre]

### [Codigo y nombre de la story]

Aqui incluiras el titulo (Como [rol], quiero, [acción], para que [beneficio], todo esto es lo que ya hemos definido previamente, incluiras los criterios de aceptación, las notas adicionales, las historias de usuario relacionadas y la lista de tickets asociados (con su información completa, recuerda dejar el espacio para la estimación)

asi hasta continuar con todas las epicas e historias de usuario con sus tareas

Alguna duda?
```

## Prompt 19
```md
Estamos bien, ahora vamos a realizar el planning poker de cada uno de los tickets con los lineamientos que discutimos con anterioridad
```

## Prompt 20
```md
Mi estimación es de 4 puntos, esto debido a que son muchos elementos los que vamos a crear para el UI

PD: No reveles la votacion de tu lado hasta que yo haya dado la mia, de esta manera no condicionaras mis respuestas al yo haber leido antes las suyas
```

## Prompt 21
```md
2 Puntos
```

## Prompt 22
```md
Mi perspectiva es que el proceso de validacion es mas sencillo que el de implementación, pero esto podria ser un sesgo, decido aceptar su consideracion asi que asignemos 4 puntos 
```

## Prompt 23
```md
4 puntos
```

## Prompt 24
```md
4 puntos
```

## Prompt 25
```md
2 Puntos
```

## Prompt 26
```md
Mi opinion es que esto ya fue definido en el modelo de datos de PRD, por lo cual su implementación es mas sencilla, al ya haber sido realizado previamente el analisis de estas entidades
```

## Prompt 27
```md
8 puntos
```

## Prompt 28
```md
Quizas estoy sobreestimando esto, pero al ser una caracteristica core que involucra cierta logica no definida del todo aun le di 8 puntos, pueden darme su perspectiva de por que 4 puntos para que lleguemos a un consenso claro?
```

## Prompt 29
```md
Despues de leer las consideraciones estoy de acuerdo en estimar 4 puntos, debido a que en este caso la complejidad de la misma no es tan excesiva, este es un proceso estandard con información ya definida previamente
```

## Prompt 30
```md
Pues en realidad mi experiencia me dice que conectar ambos modelos puede presentar inconsistencias que deben manejarse, entonces realmente dar los 4 puntos seria correcto si tomamos como parte de la tarea el hecho de que esta implica inherentemente el validar el correcto funcionamiento del frontend y el backend despues de la implementación. Procedamos con 4 puntos
```

## Prompt 31
```md
4 Puntos
```

## Prompt 32
```md
Esto sigue siendo un proceso muy estandard y en mi opinion solo estamos anidando "wheres", lo cual resulta mucho mas sencillo de lo que parece, especialmente usando ORMs
```

## Prompt 33
```md
Realmente estaba debatiendo conmigo mismo si debia ser 2 o 4, pero me inclino mas hacia lo que ustedes comentan, esto es un esfuerzo menor, coincidamos en 2 puntos
```

## Prompt 34
```md
En base a lo que hemos discutido hasta ahora, termina de estimar el resto de tickets, presentamelos y permiteme discernir si podemos hacer ajustes en ellos
```

## Prompt 35
```md
- Creo que la tarea 5.4 debe tener 8 puntos, debido a que es un proceso clave y que desconozco
- La tarea Ticket 5.6 no es  Implementación de gestión de conexión (desconexión/reconexión) sino: Implementación de consentimiento explícito para datos musicales
- La 5.7 es Creación de endpoint para almacenar perfil musical, debe ser 8 para que maneje ambos spotify y data manual
- La 5.8 es Implementación de visualización de perfil musical en perfil de candidato: 4 puntos,
- La 5.9 no existe
```

## Prompt 36
```md
Ya hemos terminado la estimación, vamos a realizar ahora un ordenamiento de los tickets estimados, esto se realizara en la nueva seccion @## Backlog ordenado Alli solo incluiremos una lista ordenada de tickets, la idea es que agrupemos estos tickets basados en que se priorice la entrega de funcionalidades de forma progresiva para cumplir con las historias de usuarios

Dame ideas, recuerda que estamos trabajando el PM, el BA y yo, el senior dev
```

## Prompt 37
```md
Estoy de acuerdo con la propuesta, toma en cuenta tanbien la naturaleza del ticket y considera si es prioritario, de manera que priorices funcionalidades por encima de otras utilizando el concepto de MoSCoW
```

## Prompt 38
```md
Tomemos en cuenta los diseños de UI como parte del Must Have y no del Should Have
```

## Prompt 39
```md
Estoy de acuerdo, utiliecemos este orden y añadamos la lista de tickets ordenado en la sección de @## Backlog ordenado 
```
