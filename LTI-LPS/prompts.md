# PROMPTS
## PROMPT 1
Eres un Product Manager experto, con altos conocimientos como Business Analyst. Estamos desarrollando un ATS para Leader Technology Innovation. Te voy a dar el PRD básico que ya está desarrollado. Lo primero que quiero que hagas es analizarlo, y proponer las correcciones que veas necesarias si encuentras algún error, o alguna incoherencia. 

## PROMPT 2
Por ahora gurda estas consideraciones, pero no vamos a aplicar nada aún. 

## PROMPT 3
Según el PRD que te he dado antes, y sin modificar por ahora nada, vamos a generar varias historias de usuario seiguiente buenas prácticas. Es decir:, sigue esta estructura: 
  *  Formato estándar: "Como [tipo de usuario], quiero [realizar una acción] para [obtener un beneficio]".
   * Descripción: Una descripción concisa y en lenguaje natural de la funcionalidad que el usuario desea.
   * Criterios de Aceptación: Condiciones específicas que deben cumplirse para considerar la User Story como "terminada", éstos deberian de seguir un formato similar a “Dado que” [contexto inicial], "cuando” [acción realizada], “entonces” [resultado esperado].
   * Notas adicionales:  Notas que puedan ayudar al desarrollo de la historia
   * Tareas: Lista de tareas y subtareas para que esta historia pueda ser completada

Empieza por identificar las necesidades y requerimientos de los futuros usuarios de nuestro ATS

## PROMPT 4
Ahora quiero que basándote en el PRD y en las necesidades y requerimientos analizados, empecemos a generar las 5 historias de usuario más relevantes, en base a su valor para el usuario, complejidad, dependencias y otros factores importantes. Recuerda las buenas prácticas que te he indicado antes. 
Fijate en esta documentación: https://miro.com/es/agile/que-es-historia-usuario/

## PROMPT 5
Me han parecido bien las historias de usuario que me has propuesto. De todas formas revisa de nuevo el PRD que te he dado antes, revisa las mejoras que me has propuesto, y en base a poder tener un MVP, y la lógica MOSCOW, vuelve a plantearme las 5 historias de usuarios principales 

## PROMPT 6
¿Crees que hay alguna historia de usuario más que sea totalmente necesaria para un MVP?

## PROMPT 7
<!-- Primer prompt para backlog de historias de usuario -->
Busca documentación en internet para la elaboración de un buen backlog. Quiero que elabores un backlog en base a las historias de usuario que hemos definido ,que en total son 6 las necesarias para un MVP. Ten en cuenta que es proyecto que estamos empezando desde cero, que no es demasiado grande. Prioriza por el impacto en el usuario y valor del negocio, por la urgencia basada en tendencias del mercado y feedback de usuarios, por la complejidad y esfuerzo estimado de implementación y por los riesgos y dependencias entre tareas. 
<!-- ME HA DEVUELTO UN BACKLOG DE HISTORIAS DE USUARIO LÓGICO, CON SENTIDO -->

## PROMPT 8
<!-- Segundo prompt para backlog de historias de usuario -->
En base a las historias de usuario definidas necesito crear un backlog. Con tu experiencia como Product Manager, teniendo en cuenta que mi equipo de desarrollo es reducido, y quiero empezar a presentar tareas de una forma más o menos rápida, pero bien hechas y que vayan aportando valor al producto, define el backlog
<!-- ME HA DADO UNA ESTRUCTURA COMPLETA DE BACKLOG DE TICKETS Y SPRINTS -->

## PROMPT 9
<!-- Tercer prompt para backlog de historias de usuario -->
Eres un experto product Manager. Hemos definido seis historias de usuario necesarias para nuestro ATS de LTI. Hay que configurar el backlog de Historias de Usuario. Basándote en tu experiencia y usando beunas prácticas para la configuración de un backlog, y según el tamaño y alcance del proyecto, elabora dicho backlog
<!-- ESTA TERCERA OPCIÓN ME HA PARECIDO LA MÁS COMPLETA Y LA MÁS LÓGICA. ME QUEDO CON ESTA OPCIÓN.  -->

## PROMPT 10
Para la Historia de Usuario HU-1: Configuración de Roles y Permisos, quiero generar los tickets de trabajo. Ten en cuenta que siendo un experto Product Manager, conoces los componentes de un buen ticket de trabajo, como en el ejemplo que te voy a dar:

Título: Implementación de Autenticación de Dos Factores (2FA)

Descripción: Añadir autenticación de dos factores para mejorar la seguridad del login de usuarios. Debe soportar aplicaciones de autenticación como Authenticator y mensajes SMS.

Criterios de Aceptación:

	Los usuarios pueden seleccionar 2FA desde su perfil.
	Soporte para Google Authenticator y SMS.
	Los usuarios deben confirmar el dispositivo 2FA durante la configuración.

Prioridad: Alta

Estimación: 8 puntos de historia

Asignado a: Equipo de Backend

Etiquetas: Seguridad, Backend, Sprint 10

Comentarios: Verificar la compatibilidad con la base de usuarios internacionales para el envío de SMS.

Enlaces: Documento de Especificación de Requerimientos de Seguridad

Historial de Cambios:

	01/10/2023: Creado por [nombre]
	05/10/2023: Prioridad actualizada a Alta por [nombre]

Basándote en la experiencia de otros proyectos aporta la información técnica necesaria para completar todos los componentes de los tickets que vayamos a generar. 

## PROMPT 11
¿Qué metodología has usado para calcular la estimación de los tickets?