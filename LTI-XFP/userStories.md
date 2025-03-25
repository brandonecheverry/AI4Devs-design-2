# ✅ Historias de Usuario – MVP

Este documento contiene el desglose de historias de usuario para cada Epic del MVP, siguiendo el formato estándar y con criterios de aceptación detallados (Given / When / Then).

---

## 🟢 Epic 1: Onboarding de Usuario y Creación de Empresa

### Historia 1.1  
**Como** nuevo usuario,  
**quiero** poder registrarme con mi email y una contraseña,  
**para que** pueda crear una cuenta y acceder a TalentNest.

**Criterios de aceptación:**  
- Given que soy un visitante,  
  When completo el formulario de registro,  
  Then debería recibir un email de verificación.  
- Given que he verificado mi email,  
  When intento iniciar sesión,  
  Then debería poder acceder a mi cuenta.

---

### Historia 1.2  
**Como** usuario registrado,  
**quiero** crear el perfil de mi empresa,  
**para que** pueda gestionar procesos de contratación en nombre de mi organización.

**Criterios de aceptación:**  
- Given que he iniciado sesión,  
  When accedo al asistente de onboarding,  
  Then debería poder introducir el nombre y sector de mi empresa.

---

### Historia 1.3  
**Como** administrador de la empresa,  
**quiero** invitar a miembros de mi equipo,  
**para que** puedan colaborar conmigo en el proceso de selección.

**Criterios de aceptación:**  
- Given que estoy en el panel de gestión de equipo,  
  When introduzco el email de un nuevo miembro,  
  Then debería enviarse una invitación por correo.  
- Given que el miembro acepta la invitación,  
  When accede al enlace de activación,  
  Then debería poder registrarse y unirse a la empresa.

---

## 🟢 Epic 2: Gestión de Usuarios y Autenticación

### Historia 2.1  
**Como** usuario registrado,  
**quiero** poder iniciar y cerrar sesión de forma segura,  
**para que** mi información personal esté protegida.

**Criterios de aceptación:**  
- Given que he registrado una cuenta,  
  When introduzco mis credenciales correctamente,  
  Then debería acceder a mi cuenta.  
- Given que he iniciado sesión,  
  When selecciono “Cerrar sesión”,  
  Then debería terminar mi sesión actual.

---

### Historia 2.2  
**Como** usuario registrado,  
**quiero** poder recuperar mi contraseña,  
**para que** pueda acceder si la olvido.

**Criterios de aceptación:**  
- Given que estoy en la pantalla de login,  
  When selecciono “¿Olvidaste tu contraseña?” y proporciono mi email,  
  Then debería recibir un enlace para restablecerla.  
- Given que accedo al enlace de recuperación,  
  When introduzco una nueva contraseña válida,  
  Then debería poder iniciar sesión con la nueva contraseña.

---

### Historia 2.3  
**Como** administrador de empresa,  
**quiero** asignar roles a los miembros del equipo,  
**para que** cada uno tenga acceso adecuado a las funcionalidades de la plataforma.

**Criterios de aceptación:**  
- Given que estoy en la sección de miembros,  
  When selecciono a un usuario,  
  Then debería poder asignar uno de los roles disponibles.

---

## 🟢 Epic 3: Gestión de Compañías y Equipos

### Historia 3.1  
**Como** administrador de empresa,  
**quiero** poder editar el perfil de mi empresa,  
**para que** los datos estén siempre actualizados.

**Criterios de aceptación:**  
- Given que estoy autenticado,  
  When accedo a la sección de empresa,  
  Then debería poder editar el nombre, industria y tamaño del equipo.

---

### Historia 3.2  
**Como** miembro del equipo,  
**quiero** ver la lista de usuarios en mi empresa,  
**para que** sepa con quién estoy colaborando.

**Criterios de aceptación:**  
- Given que estoy en la empresa,  
  When accedo a la pestaña de “Equipo”,  
  Then debería ver la lista completa de usuarios con su rol.

## 🟢 Epic 4: Creación y Publicación de Ofertas de Trabajo

### Historia 4.1
**Como** administrador o reclutador,  
**quiero** crear una nueva oferta de trabajo,  
**para que** pueda iniciar un nuevo proceso de contratación.

**Criterios de aceptación:**
- Given que estoy autenticado en la plataforma,  
  When accedo a la sección de “Crear nueva oferta”,  
  Then debería poder introducir el título, descripción, localización y tipo de contrato.

---

### Historia 4.2  
**Como** usuario,  
**quiero** usar un asistente de IA para generar o mejorar la descripción del puesto,  
**para que** el contenido sea más atractivo e inclusivo sin necesidad de redactar desde cero.

**Criterios de aceptación:**
- Given que estoy creando una oferta,  
  When selecciono la opción “Generar con IA”,  
  Then debería obtener una descripción generada automáticamente que pueda revisar y editar.  
- Given que he editado la descripción generada,  
  When la guardo,  
  Then el contenido actualizado se refleja en la oferta.

---

### Historia 4.3  
**Como** usuario,  
**quiero** previsualizar la oferta antes de publicarla,  
**para que** pueda comprobar que se muestra correctamente a los candidatos.

**Criterios de aceptación:**
- Given que estoy creando o editando una oferta,  
  When selecciono “Vista previa”,  
  Then debería ver la oferta tal como se verá públicamente.  
- Given que reviso la vista previa,  
  When regreso a la edición,  
  Then puedo seguir modificando los campos sin perder cambios.

---

### Historia 4.4  
**Como** usuario,  
**quiero** publicar una oferta activa en una página pública,  
**para que** los candidatos puedan acceder y postularse fácilmente.

**Criterios de aceptación:**
- Given que he completado todos los campos obligatorios de la oferta,  
  When selecciono “Publicar oferta”,  
  Then esta debería mostrarse en la página pública de mi empresa.  
- Given que una oferta ha sido publicada,  
  When un candidato visita el enlace,  
  Then puede ver los detalles completos de la oferta y aplicar desde allí.

---

### Historia 4.5  
**Como** usuario,  
**quiero** poder pausar o cerrar una oferta publicada,  
**para que** deje de recibir aplicaciones si ya no está vigente.

**Criterios de aceptación:**
- Given que tengo ofertas activas,  
  When cambio el estado de la oferta a “Pausada” o “Cerrada”,  
  Then debería reflejarse en la interfaz y ya no permitir nuevas aplicaciones.  
- Given que una oferta está pausada o cerrada,  
  When accedo al panel de control,  
  Then debería ver el estado actual claramente identificado.

## 🟢 Epic 5: Aplicación de Candidatos y CV Parsing

### Historia 5.1  
**Como** candidato,  
**quiero** completar un formulario de aplicación,  
**para que** pueda postularme a una oferta de trabajo.

**Criterios de aceptación:**  
- Given que accedo a la página de una oferta pública,  
  When hago clic en “Aplicar”,  
  Then debería ver un formulario con campos básicos (nombre, email, CV).  
- Given que he completado el formulario,  
  When lo envío,  
  Then mi aplicación debería guardarse correctamente en el sistema.

---

### Historia 5.2  
**Como** sistema,  
**quiero** analizar el CV cargado por el candidato,  
**para que** se extraiga información clave automáticamente.

**Criterios de aceptación:**  
- Given que se ha recibido un archivo de CV,  
  When se procesa,  
  Then se extraen nombre, experiencia, habilidades y educación.  
- Given que la extracción fue exitosa,  
  When se genera una Snapshot Card,  
  Then esta se vincula automáticamente a la aplicación del candidato.

---

### Historia 5.3  
**Como** candidato,  
**quiero** recibir una confirmación por email tras postularme,  
**para que** tenga la certeza de que mi solicitud fue recibida.

**Criterios de aceptación:**  
- Given que he enviado una aplicación,  
  When el sistema la guarda correctamente,  
  Then se debe disparar un correo automático de confirmación.

---

## 🟢 Epic 6: Gestión del Pipeline de Selección

### Historia 6.1  
**Como** reclutador,  
**quiero** ver a los candidatos organizados por etapa del proceso,  
**para que** pueda hacer seguimiento fácilmente a cada uno.

**Criterios de aceptación:**  
- Given que estoy en la oferta,  
  When accedo al panel de candidatos,  
  Then debería ver un tablero tipo Kanban con las etapas y los candidatos asignados.

---

### Historia 6.2  
**Como** reclutador,  
**quiero** mover un candidato entre etapas del proceso,  
**para que** pueda reflejar su progreso en el pipeline.

**Criterios de aceptación:**  
- Given que estoy visualizando el pipeline,  
  When arrastro un candidato de una etapa a otra,  
  Then el cambio debe guardarse automáticamente.

---

### Historia 6.3  
**Como** usuario,  
**quiero** definir las etapas de un pipeline personalizado,  
**para que** el proceso se adapte a mi forma de trabajar.

**Criterios de aceptación:**  
- Given que estoy creando o editando un pipeline,  
  When agrego, edito o elimino etapas,  
  Then los cambios deben guardarse y reflejarse al instante.

---

### Historia 6.4  
**Como** miembro del equipo,  
**quiero** dejar notas internas en la ficha del candidato,  
**para que** otros miembros puedan ver mis observaciones.

**Criterios de aceptación:**  
- Given que accedo al perfil del candidato,  
  When escribo una nota,  
  Then esta debe guardarse y mostrarse en la conversación interna del equipo.

---

## 🟢 Epic 7: Mensajería y Comunicación Automática

### Historia 7.1  
**Como** reclutador,  
**quiero** configurar mensajes automáticos para cada etapa,  
**para que** los candidatos reciban notificaciones según su estado.

**Criterios de aceptación:**  
- Given que accedo a la configuración de la oferta,  
  When defino plantillas por etapa,  
  Then estas deben guardarse y aplicarse automáticamente.

---

### Historia 7.2  
**Como** sistema,  
**quiero** enviar mensajes automáticamente al detectar ciertos eventos,  
**para que** los candidatos estén siempre informados.

**Criterios de aceptación:**  
- Given que un candidato cambia de etapa,  
  When hay una plantilla asociada,  
  Then se debe enviar el mensaje configurado.  
- Given que se ha enviado el mensaje,  
  When se consulta el historial,  
  Then debe aparecer la notificación registrada.

---

## 🟢 Epic 8: Suscripciones, Facturación y Prueba Gratuita

### Historia 8.1  
**Como** nuevo usuario,  
**quiero** comenzar con una prueba gratuita de 14 días,  
**para que** pueda evaluar la plataforma sin compromiso.

**Criterios de aceptación:**  
- Given que me registro por primera vez,  
  When accedo al panel,  
  Then debería activarse automáticamente una prueba gratuita.  
- Given que estoy en prueba gratuita,  
  When visualizo mi cuenta,  
  Then debería ver el tiempo restante.

---

### Historia 8.2  
**Como** usuario administrador,  
**quiero** seleccionar un plan de suscripción,  
**para que** pueda seguir usando la plataforma después de la prueba.

**Criterios de aceptación:**  
- Given que estoy autenticado,  
  When accedo a la sección de facturación,  
  Then debería poder seleccionar entre varios planes.  
- Given que selecciono un plan,  
  When confirmo el pago,  
  Then mi suscripción debe activarse correctamente.

---

### Historia 8.3  
**Como** usuario,  
**quiero** ver mis facturas y estado de suscripción,  
**para que** tenga control sobre mis pagos.

**Criterios de aceptación:**  
- Given que tengo una suscripción activa,  
  When accedo al historial de facturas,  
  Then debería ver todas las facturas con su estado (pagada o pendiente).

---

## 🟢 Epic 9: Dashboard de Contratación y Métricas Básicas

### Historia 9.1  
**Como** usuario,  
**quiero** ver un resumen general de todas mis ofertas activas,  
**para que** pueda tener visibilidad del estado de mis procesos.

**Criterios de aceptación:**  
- Given que tengo varias ofertas activas,  
  When accedo al dashboard,  
  Then debería ver una tarjeta resumen de cada oferta (candidatos, progreso, etc.).

---

### Historia 9.2  
**Como** usuario,  
**quiero** ver métricas básicas por oferta,  
**para que** pueda evaluar el rendimiento de mis contrataciones.

**Criterios de aceptación:**  
- Given que accedo al dashboard,  
  When selecciono una oferta,  
  Then debería ver tiempo medio en cada etapa, tasa de conversión y fuente de candidatos.

---

## 🟢 Epic 10: Centro de Ayuda y Soporte In-App

### Historia 10.1  
**Como** usuario,  
**quiero** tener acceso a una sección de ayuda dentro de la app,  
**para que** pueda resolver dudas comunes sin salir de la plataforma.

**Criterios de aceptación:**  
- Given que estoy usando la app,  
  When accedo a la sección de ayuda,  
  Then debería ver una lista de preguntas frecuentes.  
- Given que tengo una duda no resuelta,  
  When envío un mensaje desde el formulario,  
  Then debería recibir una respuesta del equipo de soporte.

---

## 🟢 Epic 11: Módulo de Integración IA (Job & Snapshot Assistant)

### Historia 11.1  
**Como** sistema,  
**quiero** conectarme a un servicio externo de IA,  
**para que** pueda generar descripciones de oferta y Snapshot Cards.

**Criterios de aceptación:**  
- Given que se solicita una acción de IA,  
  When se llama a la API externa,  
  Then debe devolverse una respuesta válida o un error controlado.  
- Given que la IA falla,  
  When ocurre un error,  
  Then el sistema debe mostrar una alternativa de fallback al usuario.

---

## 🟢 Epic 12: Sistema de Notificaciones y Eventos

### Historia 12.1  
**Como** sistema,  
**quiero** detectar eventos como “nueva aplicación” o “cambio de etapa”,  
**para que** pueda disparar acciones como emails o registros internos.

**Criterios de aceptación:**  
- Given que ocurre un evento relevante,  
  When este es capturado por el sistema,  
  Then se debe procesar y ejecutar la acción correspondiente (ej. envío de email, logging).

---

## 🟢 Epic 13: Panel de Administración Interna (Backoffice)

### Historia 13.1  
**Como** administrador interno,  
**quiero** visualizar la lista de usuarios y empresas,  
**para que** pueda gestionar cuentas y dar soporte técnico.

**Criterios de aceptación:**  
- Given que accedo al panel interno,  
  When navego a la sección de usuarios,  
  Then debería ver una tabla con todos los registros y acciones disponibles.

---

### Historia 13.2  
**Como** administrador interno,  
**quiero** ver feedback de usuarios y logs de errores,  
**para que** pueda identificar mejoras y resolver incidencias.

**Criterios de aceptación:**  
- Given que accedo al panel interno,  
  When consulto la sección de feedback,  
  Then debería ver mensajes ordenados por fecha y empresa.

---

## 🟢 Epic 14: Infraestructura y DevOps para Despliegue

### Historia 14.1  
**Como** equipo de desarrollo,  
**quiero** tener CI/CD automatizado,  
**para que** cada cambio se despliegue de forma segura y rápida.

**Criterios de aceptación:**  
- Given que se hace un push a main,  
  When la pipeline se ejecuta,  
  Then el sistema debe realizar tests, build y despliegue en entorno productivo.

---

### Historia 14.2  
**Como** DevOps,  
**quiero** monitorizar servicios en producción,  
**para que** podamos detectar problemas antes de que afecten a los usuarios.

**Criterios de aceptación:**  
- Given que los servicios están activos,  
  When ocurre una anomalía,  
  Then esta debe aparecer registrada en CloudWatch o X-Ray con una alerta asociada.

