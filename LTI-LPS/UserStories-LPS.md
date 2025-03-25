# Documentación del ATS - Leader Technology Innovation (LTI)

## Índice
1. [Identificación de Necesidades y Requerimientos](#identificación-de-necesidades-y-requerimientos)
2. [Historias de Usuario](#historias-de-usuario)
3. [Backlogs](#backlogs)
4. [Tickets de Trabajo](#tickets-de-trabajo)

## Identificación de Necesidades y Requerimientos

### 1. Reclutadores

#### Necesidades
- Publicar vacantes en múltiples plataformas desde un solo lugar
- Filtrar y gestionar grandes volúmenes de candidatos de manera eficiente
- Coordinar entrevistas y gestionar la comunicación con candidatos
- Evaluar a los candidatos en colaboración con managers

#### Requerimientos
- Integración con LinkedIn, Indeed y portales internos
- Sistema de filtrado y ranking de candidatos
- Agenda integrada para programar entrevistas
- Panel de evaluación compartido con managers

### 2. Managers de Contratación

#### Necesidades
- Acceder a candidatos preseleccionados sin revisar cientos de CVs
- Colaborar con reclutadores para dar feedback estructurado
- Tomar decisiones basadas en datos sobre los mejores candidatos

#### Requerimientos
- Interfaz de evaluación rápida con feedback y calificación
- Reportes sobre desempeño de candidatos en cada fase
- Sistema de notificaciones sobre nuevos candidatos preseleccionados

### 3. Candidatos

#### Necesidades
- Aplicar de forma sencilla y rápida a las vacantes
- Conocer el estado de su candidatura en todo momento
- Recibir feedback sobre su proceso de selección

#### Requerimientos
- Aplicación con carga de CV automatizada y perfil editable
- Sistema de seguimiento de estado en tiempo real
- Notificaciones y comunicación fluida con reclutadores

### 4. Administradores del Sistema

#### Necesidades
- Configurar permisos y roles de los usuarios del sistema
- Generar reportes sobre métricas de contratación y desempeño del ATS
- Gestionar integraciones con herramientas externas

#### Requerimientos
- Panel de administración con gestión de roles y accesos
- Dashboard con KPIs clave del proceso de selección
- API para integraciones con herramientas de terceros

## Historias de Usuario

### 1. Publicación Multi-Canal de Ofertas de Trabajo

**Prioridad MOSCOW:** Must have

**User Story:**
> Como reclutador, quiero publicar una oferta de trabajo en múltiples plataformas desde un único panel para reducir el tiempo de difusión y garantizar que la vacante llegue a los candidatos adecuados.

**Descripción:**
El sistema debe permitir la creación de una oferta de trabajo con todos sus detalles y, mediante la selección de canales (LinkedIn, Indeed, portal corporativo, etc.), publicar automáticamente la vacante en cada uno de ellos. Se debe registrar cada publicación para futuras referencias y análisis.

**Criterios de Aceptación:**
- Dado que el reclutador ha completado el formulario de la oferta
- Cuando selecciona los canales y confirma la publicación
- Entonces la oferta se publica en todos los canales elegidos y se guarda un historial en el sistema

**Notas Adicionales:**
- Para el MVP, la personalización del anuncio por canal se puede simplificar
- La integración con cada plataforma debe ser robusta para evitar errores en la publicación

**Tareas:**
- Diseño e implementación de la interfaz de creación y selección de canales
- Desarrollo de conectores/API básicos para los principales portales
- Registro y visualización del historial de publicaciones

### 2. Filtrado y Preselección de Candidatos con IA Básica

**Prioridad MOSCOW:** Must have

**User Story:**
> Como reclutador, quiero que el sistema analice automáticamente los CVs y realice un ranking inicial de candidatos mediante IA básica para identificar rápidamente los perfiles más prometedores.

**Descripción:**
El ATS debe recibir las aplicaciones, procesar los CVs utilizando algoritmos de IA predefinidos (en base a experiencia, habilidades y requisitos mínimos) y generar un listado ordenado de candidatos preseleccionados.

**Criterios de Aceptación:**
- Dado que un candidato ha aplicado
- Cuando el sistema procesa el CV
- Entonces se asigna una puntuación y el candidato se posiciona en un ranking junto a los demás

**Notas Adicionales:**
- Para el MVP se prioriza una IA básica; mejoras más avanzadas se podrán incluir en versiones futuras
- Los criterios de evaluación deben ser parametrizables

**Tareas:**
- Integrar un motor de análisis de CVs con reglas básicas
- Configurar y ajustar los criterios de evaluación iniciales
- Desarrollar el módulo de ranking y visualización de resultados

### 3. Evaluación Colaborativa de Candidatos

**Prioridad MOSCOW:** Must have

**User Story:**
> Como manager, quiero poder evaluar y comentar de forma colaborativa los candidatos preseleccionados para facilitar una decisión de contratación informada y consensuada.

**Descripción:**
El sistema debe disponer de un espacio compartido donde tanto reclutadores como managers puedan añadir evaluaciones, calificaciones y comentarios sobre cada candidato, visualizando de forma centralizada la retroalimentación del equipo.

**Criterios de Aceptación:**
- Dado que un candidato figura en la lista preseleccionada
- Cuando un usuario añade una evaluación o comentario
- Entonces dicha información se actualiza en tiempo real y es visible para todo el equipo involucrado

**Notas Adicionales:**
- Para el MVP, la funcionalidad puede limitarse a comentarios y una calificación numérica simple
- Se debe definir si la retroalimentación será visible para todos o con ciertos niveles de privacidad

**Tareas:**
- Diseño de la interfaz colaborativa de evaluación
- Desarrollo del módulo de comentarios y calificaciones
- Implementación de notificaciones internas

### 4. Portal de Seguimiento del Estado de Aplicación para Candidatos

**Prioridad MOSCOW:** Must have

**User Story:**
> Como candidato, quiero consultar el estado de mi aplicación en tiempo real para entender en qué fase se encuentra mi proceso de selección y recibir notificaciones de cambios relevantes.

**Descripción:**
El ATS debe ofrecer a los candidatos un portal personal en el que puedan ver su estado actual (por ejemplo: "En revisión", "Preseleccionado", "Rechazado") y recibir notificaciones automáticas sobre cualquier actualización en su candidatura.

**Criterios de Aceptación:**
- Dado que un candidato ha aplicado a una vacante
- Cuando accede a su panel personal
- Entonces se muestra el estado actualizado de su aplicación junto con cualquier notificación pertinente

**Notas Adicionales:**
- Para el MVP, el portal puede tener funcionalidades básicas y un sistema de notificación simple
- Se implementará vía correo electrónico o notificaciones en la app

**Tareas:**
- Diseño e implementación del portal de seguimiento para candidatos
- Integración del módulo de actualización de estado con el sistema de notificaciones
- Pruebas de usabilidad y de actualización en tiempo real

### 5. Gestión de Usuarios y Roles

**Prioridad MOSCOW:** Must have

**User Story:**
> Como administrador, quiero gestionar usuarios y asignarles roles (reclutadores, managers, candidatos) para asegurar que cada uno acceda únicamente a las funcionalidades pertinentes del ATS.

**Descripción:**
El sistema deberá incluir un módulo de administración en el que se puedan crear, modificar y eliminar usuarios, asignar roles específicos y configurar permisos de acceso, garantizando la seguridad y el correcto flujo de información.

**Criterios de Aceptación:**
- Dado que el administrador accede al módulo de gestión de usuarios
- Cuando crea o modifica un usuario asignándole un rol
- Entonces el usuario obtiene los permisos correspondientes y la información se actualiza en la base de datos

**Notas Adicionales:**
- Para el MVP, se implementa un sistema básico de roles
- Se podrá ampliar a permisos más granulados en iteraciones futuras

**Tareas:**
- Diseño de la interfaz de gestión de usuarios y roles
- Desarrollo del backend para la asignación de permisos
- Implementación del registro de auditoría de cambios
- Pruebas de control de acceso y seguridad 

## Backlogs

### Backlog 1: Historias de Usuario Prioritizadas
>DESECHADO

| ID | Historia de Usuario | Prioridad (MOSCOW) | Esfuerzo Estimado | Riesgo/Dependencias | Notas |
|----|-------------------|-------------------|------------------|-------------------|-------|
| HU-1 | Publicación Multi-Canal de Ofertas de Trabajo | Must have | Medio | Depende de conectores/API de canales externos | Para el MVP, usar integración básica con los portales más relevantes |
| HU-2 | Filtrado y Preselección de Candidatos con IA Básica | Must have | Alto | Depende de parametrización de criterios de evaluación | Se inicia con reglas fijas; mejoras en versiones futuras |
| HU-3 | Evaluación Colaborativa de Candidatos | Must have | Medio | Independiente; requiere integración en el módulo de notificaciones | Funcionalidad básica de comentarios para el MVP |
| HU-4 | Portal de Seguimiento del Estado de Aplicación | Must have | Bajo | Independiente; requiere sistema de notificaciones | Diseño sencillo con actualizaciones en tiempo real |
| HU-5 | Gestión de Usuarios y Roles | Must have | Bajo | Fundamental para seguridad; sistema de permisos básico | MVP con roles fijos; posible evolución a permisos más granulados |
| HU-6 | Programación y Gestión de Entrevistas | Should have | Medio | Depende del módulo de notificaciones y del calendario interno | Para el MVP se implementa con funcionalidades básicas |

### Backlog 2: Backlog del MVP del ATS
>DESECHADO

#### Épica 1: Configuración Básica del Sistema

| ID | Tarea | Prioridad | Esfuerzo | Notas |
|----|------|-----------|----------|-------|
| T-01 | Configurar arquitectura básica | Alta | Medio | Stack tecnológico definido, infraestructura mínima viable |
| T-02 | Implementar sistema de autenticación | Alta | Medio | Login, gestión de sesiones y roles iniciales |
| T-03 | Crear estructura de base de datos | Alta | Medio | Normalización y escalabilidad futura |
| T-04 | Implementar roles y permisos básicos | Alta | Bajo | Primer control de acceso |

#### Épica 2: Publicación y Gestión de Vacantes

| ID | Tarea | Prioridad | Esfuerzo | Notas |
|----|------|-----------|----------|-------|
| T-05 | Crear interfaz de gestión de vacantes | Alta | Bajo | Formulario con validaciones básicas |
| T-06 | Implementar API para vacantes | Alta | Medio | Endpoint REST, persistencia en base de datos |
| T-07 | Integrar con LinkedIn e Indeed | Media | Alto | Se inicia con exportación manual, luego automatización |
| T-08 | Crear vista de lista de vacantes | Alta | Bajo | Diseño simple con opciones de búsqueda y filtrado |

#### Épica 3: Filtrado y Preselección de Candidatos

| ID | Tarea | Prioridad | Esfuerzo | Notas |
|----|------|-----------|----------|-------|
| T-09 | Implementar sistema de carga de CVs | Alta | Bajo | Subida de archivo y almacenamiento básico |
| T-10 | Crear motor de filtrado | Alta | Medio | Reglas predefinidas antes de IA avanzada |
| T-11 | Mostrar lista de candidatos preseleccionados | Alta | Medio | Ordenación por criterios básicos |
| T-12 | Permitir ajustes de filtrado | Media | Bajo | Ajustes manuales de búsqueda |

#### Épica 4: Evaluación Colaborativa

| ID | Tarea | Prioridad | Esfuerzo | Notas |
|----|------|-----------|----------|-------|
| T-13 | Crear sistema de calificación | Alta | Bajo | Simple puntuación 1-5 y notas |
| T-14 | Implementar vista de evaluación | Alta | Medio | Acceso controlado a feedback y perfiles |
| T-15 | Agregar notificaciones | Media | Bajo | Notificación básica por email o sistema interno |

#### Épica 5: Seguimiento de Candidatos

| ID | Tarea | Prioridad | Esfuerzo | Notas |
|----|------|-----------|----------|-------|
| T-16 | Crear portal de candidatos | Alta | Medio | Acceso solo a información propia |
| T-17 | Implementar notificaciones automáticas | Media | Bajo | Enviar email en cambios de estado |
| T-18 | Crear sistema de mensajes | Baja | Medio | MVP con comunicación básica |

#### Épica 6: Programación y Gestión de Entrevistas

| ID | Tarea | Prioridad | Esfuerzo | Notas |
|----|------|-----------|----------|-------|
| T-19 | Crear módulo de programación | Media | Medio | Interfaz simple de fecha y hora |
| T-20 | Generar notificaciones de entrevistas | Media | Bajo | Email o push interno |
| T-21 | Integración con Google Calendar | Baja | Alto | Puede planearse en iteraciones futuras |

### Plan de Sprints

#### Sprint 1 (Infraestructura y Seguridad)
- T-01: Configurar arquitectura básica
- T-02: Implementar sistema de autenticación
- T-03: Crear estructura de base de datos
- T-04: Implementar roles y permisos básicos

#### Sprint 2 (Publicación de Vacantes)
- T-05: Crear interfaz de gestión de vacantes
- T-06: Implementar API para vacantes
- T-08: Crear vista de lista de vacantes

#### Sprint 3 (Filtrado y Preselección)
- T-09: Implementar sistema de carga de CVs
- T-10: Crear motor de filtrado
- T-11: Mostrar lista de candidatos preseleccionados

#### Sprint 4 (Evaluaciones y Feedback)
- T-13: Crear sistema de calificación
- T-14: Implementar vista de evaluación
- T-15: Agregar notificaciones

#### Sprint 5 (Seguimiento de Candidatos y Entrevistas)
- T-16: Crear portal de candidatos
- T-17: Implementar notificaciones automáticas
- T-19: Crear módulo de programación de entrevistas

### Backlog 3: Backlog de Historias de Usuario - ATS de LTI
>NOS QUEDAMOS CON ESTE BACKLOG

## Introducción
Este backlog define las historias de usuario necesarias para la construcción del MVP del Applicant Tracking System (ATS) de Leader Technology Innovation (LTI). Se ha priorizado en base a valor de negocio, impacto en el usuario, esfuerzo técnico y dependencias.

---

## **Épica 1: Configuración del Sistema y Seguridad**
### **HU-1: Configuración de Roles y Permisos**
**Como** administrador, **quiero** gestionar usuarios y asignar roles (reclutador, manager, candidato) **para** asegurar que cada usuario tenga los permisos adecuados en el sistema.

**Criterios de Aceptación:**
- Se puede crear, modificar y eliminar usuarios.
- Se asignan roles predefinidos con accesos específicos.
- Registro de auditoría de cambios en permisos.

**Tareas:**
- Implementar modelo de usuarios y roles en la base de datos.
- Desarrollar pantalla de gestión de usuarios.
- Configurar seguridad y permisos en la API.

#### **Tickets de Trabajo**
##### **T-01: Implementación del Modelo de Usuarios y Roles**
**Descripción:** Diseñar e implementar el esquema de base de datos para usuarios y roles en el ATS. Incluir relaciones y restricciones de seguridad.

**Criterios de Aceptación:**
- El sistema debe permitir la creación, modificación y eliminación de usuarios.
- Los usuarios deben tener roles específicos asignados (reclutador, manager, candidato).
- Se debe validar que los permisos coincidan con el rol asignado.

**Prioridad:** Alta  
**Estimación:** 5 puntos de historia  
**Asignado a:** Equipo de Backend  
**Etiquetas:** Seguridad, Backend, Base de Datos, Sprint 1  
**Comentarios:** Revisar si se requiere auditoría de cambios en permisos desde el inicio o en iteraciones futuras.  

##### **T-02: Desarrollo de Pantalla de Gestión de Usuarios**
**Descripción:** Crear la interfaz para la gestión de usuarios, incluyendo opciones de creación, edición y eliminación.

**Criterios de Aceptación:**
- La UI debe permitir a los administradores ver la lista de usuarios.
- Debe incluir un formulario para agregar nuevos usuarios y asignar roles.
- Se debe permitir la edición de roles y eliminación de usuarios.

**Prioridad:** Alta  
**Estimación:** 8 puntos de historia  
**Asignado a:** Equipo de Frontend  
**Etiquetas:** UI, Frontend, Seguridad, Sprint 1  
**Comentarios:** Asegurar que la UX sea clara y que los cambios en roles se reflejen en tiempo real.  

##### **T-03: Configuración de Seguridad y Permisos en la API**
**Descripción:** Implementar la lógica de control de acceso basada en roles en la API del ATS.

**Criterios de Aceptación:**
- La API debe validar que cada usuario solo pueda acceder a las funcionalidades permitidas por su rol.
- Se deben manejar respuestas adecuadas en caso de intentos de acceso no autorizado.
- Registro de intentos de acceso fallidos para auditoría.

**Prioridad:** Alta  
**Estimación:** 6 puntos de historia  
**Asignado a:** Equipo de Backend  
**Etiquetas:** Seguridad, Backend, API, Sprint 1  
**Comentarios:** Considerar implementación de middleware para control de accesos.  

---

## **Épica 2: Publicación y Gestión de Vacantes**
### **HU-2: Publicación Multi-Canal de Vacantes**
**Como** reclutador, **quiero** publicar una oferta de trabajo en múltiples plataformas desde un solo panel **para** reducir el tiempo y esfuerzo en la difusión de vacantes.

**Criterios de Aceptación:**
- Creación de una oferta con título, descripción, requisitos y salario.
- Selección de plataformas de publicación.
- Historial de publicaciones por vacante.

**Tareas:**
- Diseñar UI para creación de vacantes.
- Implementar API para publicar vacantes.
- Desarrollar integración con LinkedIn e Indeed.

---

## **Épica 3: Filtrado y Preselección de Candidatos**
### **HU-3: Filtrado y Preselección de Candidatos con IA**
**Como** reclutador, **quiero** que el sistema analice automáticamente los CVs y realice un ranking de candidatos **para** identificar rápidamente los perfiles más prometedores.

**Criterios de Aceptación:**
- Subida de CVs en formato PDF.
- Procesamiento y análisis con reglas predefinidas.
- Lista de candidatos ordenada por relevancia.

**Tareas:**
- Implementar módulo de carga de CVs.
- Desarrollar motor de filtrado basado en palabras clave.
- Crear vista de ranking de candidatos.

---

## **Épica 4: Evaluación y Colaboración en Selección**
### **HU-4: Evaluación Colaborativa de Candidatos**
**Como** manager, **quiero** poder evaluar y comentar de forma colaborativa a los candidatos preseleccionados **para** tomar decisiones informadas en equipo.

**Criterios de Aceptación:**
- Calificación numérica y comentarios.
- Evaluaciones visibles para el equipo de selección.
- Notificaciones de nuevos comentarios.

**Tareas:**
- Diseñar interfaz de evaluación.
- Implementar API para comentarios y calificaciones.
- Integrar notificaciones internas.

---

## **Épica 5: Seguimiento de Candidatos**
### **HU-5: Seguimiento del Estado de Aplicación**
**Como** candidato, **quiero** consultar el estado de mi aplicación en tiempo real **para** conocer en qué fase del proceso me encuentro.

**Criterios de Aceptación:**
- Vista de estado de aplicación.
- Notificaciones automáticas de cambios de estado.
- Acceso restringido solo a la información del candidato.

**Tareas:**
- Implementar portal de candidatos.
- Crear API de actualización de estado.
- Configurar notificaciones automáticas.

---

## **Épica 6: Programación y Gestión de Entrevistas**
### **HU-6: Programación y Gestión de Entrevistas**
**Como** reclutador, **quiero** programar y gestionar entrevistas desde el ATS **para** coordinar de forma eficiente con candidatos y managers.

**Criterios de Aceptación:**
- Agendamiento de entrevistas con fecha, hora y modalidad.
- Notificaciones automáticas a participantes.
- Registro de cambios y reprogramaciones.

**Tareas:**
- Implementar módulo de programación de entrevistas.
- Integrar notificaciones a candidatos y reclutadores.
- Desarrollar vista de calendario en el sistema.

---

## **Priorización y Plan de Desarrollo**

| **Sprint** | **Historias de Usuario** |
|------------|--------------------------|
| Sprint 1  | HU-1 (Roles y Permisos), HU-2 (Publicación de Vacantes) |
| Sprint 2  | HU-3 (Filtrado de Candidatos), HU-4 (Evaluación Colaborativa) |
| Sprint 3  | HU-5 (Seguimiento de Aplicaciones), HU-6 (Gestión de Entrevistas) |

Este backlog asegura que cada entrega incremente el valor del producto y que se construya de manera escalable y eficiente.



## Tickets de Trabajo

### Tickets para HU-1: Configuración de Roles y Permisos

#### T-01: Implementación del Modelo de Usuarios y Roles

**Descripción:**
Diseñar e implementar el esquema de base de datos para usuarios y roles en el ATS. Incluir relaciones entre usuarios, roles y permisos, garantizando seguridad y escalabilidad.

**Criterios de Aceptación:**
- La base de datos debe contener una tabla de usuarios con atributos clave
- Los roles deben estar predefinidos: Reclutador, Manager, Candidato, Administrador
- Los permisos deben estar estructurados por rol y ser fácilmente ampliables
- Se debe garantizar integridad referencial y evitar duplicación de datos

**Prioridad:** Alta  
**Estimación:** 5 puntos de historia  
**Asignado a:** Equipo de Backend  
**Etiquetas:** Seguridad, Backend, Base de Datos, Sprint 1  

**Comentarios:**
- Definir si los permisos serán estáticos en esta fase
- Evaluar la integración con autenticación externa en futuras versiones

#### T-02: Desarrollo de Pantalla de Gestión de Usuarios

**Descripción:**
Crear la interfaz de usuario para la gestión de usuarios, incluyendo opciones para la creación, edición, asignación de roles y eliminación de cuentas.

**Criterios de Aceptación:**
- La UI debe listar todos los usuarios registrados
- Debe permitir agregar nuevos usuarios mediante un formulario con validaciones
- Se debe poder modificar el rol y estado de un usuario existente
- Debe incluir un sistema de confirmación para eliminación de usuarios

**Prioridad:** Alta  
**Estimación:** 8 puntos de historia  
**Asignado a:** Equipo de Frontend  
**Etiquetas:** UI, Frontend, Seguridad, Sprint 1  

**Comentarios:**
- Asegurar que la interfaz sea intuitiva y accesible
- Considerar implementación futura de búsqueda y filtros avanzados

#### T-03: Configuración de Seguridad y Permisos en la API

**Descripción:**
Implementar la lógica de control de acceso en la API del ATS, garantizando que cada usuario solo pueda acceder a las funcionalidades permitidas por su rol.

**Criterios de Aceptación:**
- Se debe validar el acceso a cada endpoint basado en el rol del usuario
- Implementar middleware para verificar permisos en cada solicitud
- Manejo adecuado de respuestas en caso de intentos de acceso no autorizado
- Registro de intentos fallidos para auditoría y seguridad

**Prioridad:** Alta  
**Estimación:** 6 puntos de historia  
**Asignado a:** Equipo de Backend  
**Etiquetas:** Seguridad, Backend, API, Sprint 1  

**Comentarios:**
- Revisar si es necesario implementar un sistema de tokens JWT
- Evaluar logging y monitoreo de accesos

### Estimaciones y Planning Poker

La estimación está basada en Planning Poker y Puntos de Historia, siguiendo la secuencia de Fibonacci Modificada (1, 2, 3, 5, 8, 13, …).

#### Criterios de Estimación

1. **Complejidad Técnica**
   - Lógica de negocio avanzada
   - Integraciones o dependencias
   - Coordinación entre equipos

2. **Volumen de Trabajo**
   - Archivos/endpoints/componentes a crear/modificar
   - Estructuración de datos o cambios en BD

3. **Riesgos e Incertidumbre**
   - Partes del sistema no definidas
   - Pruebas adicionales necesarias

4. **Dependencias**
   - Dependencias de otras funcionalidades
   - Bloqueos potenciales

#### Estimaciones Asignadas

| Ticket | Estimación (Puntos) | Justificación |
|--------|-------------------|---------------|
| T-01 | 5 | Requiere modelado de datos y relaciones en BD, pero sin lógica avanzada |
| T-02 | 8 | Implementación de UI con CRUD y validaciones, mayor volumen de trabajo |
| T-03 | 6 | Implementación de middleware de permisos con validaciones y auditoría | 