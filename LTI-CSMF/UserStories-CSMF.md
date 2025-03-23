# LTI ATS: Inicio de implementación

## Tabla de Contenidos - LTI ATS: Inicio de Implementación

1. [Historias de Usuario](#historias-de-usuario)
   - [Historia de Usuario 1: Publicación de Vacantes en Múltiples Plataformas](#historia-de-usuario-1-publicación-de-vacantes-en-múltiples-plataformas)
   - [Historia de Usuario 2: Filtrado Inteligente de Candidatos con IA](#historia-de-usuario-2-filtrado-inteligente-de-candidatos-con-ia)
   - [Historia de Usuario 3: Gestión del Pipeline de Contratación con Kanban](#historia-de-usuario-3-gestión-del-pipeline-de-contratación-con-kanban)
   - [Historia de Usuario 4: Programación Automática de Entrevistas](#historia-de-usuario-4-programación-automática-de-entrevistas)
   - [Historia de Usuario 5: Envío Automático de Ofertas de Empleo](#historia-de-usuario-5-envío-automático-de-ofertas-de-empleo)

2. [Backlog Priorizado](#backlog-priorizado)
   - [Introducción](#introducción)
   - [Tabla de Priorización](#tabla-de-priorización)
   - [Explicación de la Priorización](#explicación-de-la-priorización)

3. [Tickets de Trabajo - Historia de Usuario 3: Programación Automática de Entrevistas](#tickets-de-trabajo---historia-de-usuario-3-programación-automática-de-entrevistas)
   - [Feature: Creación de Entidades de Entrevistas en la Base de Datos](#feature-creación-de-entidades-de-entrevistas-en-la-base-de-datos)
   - [Feature: Integración con Google Calendar y Outlook](#feature-integración-con-google-calendar-y-outlook)
   - [Tarea Técnica: Implementación del Backend para Gestión de Entrevistas](#tarea-técnica-implementación-del-backend-para-gestión-de-entrevistas)
   - [Feature: UI para Visualización y Gestión de Entrevistas](#feature-ui-para-visualización-y-gestión-de-entrevistas)
   - [Spike: Evaluación de APIs de Terceros para la Gestión de Entrevistas](#spike-evaluación-de-apis-de-terceros-para-la-gestión-de-entrevistas)
   - [Bug: Solución de Errores en la Reprogramación de Entrevistas](#bug-solución-de-errores-en-la-reprogramación-de-entrevistas)

4. [Estimación del Esfuerzo - Historia de Usuario 3: Programación Automática de Entrevistas](#estimación-del-esfuerzo---historia-de-usuario-3-programación-automática-de-entrevistas)
   - [Introducción](#introducción)
   - [Explicación de la Estimación](#explicación-de-la-estimación)
   - [Conclusión](#conclusión)


## Historias de usuario

### Historia de Usuario 1: Publicación de Vacantes en Múltiples Plataformas

#### Título: Publicación automática de vacantes  
- **Como** reclutador,  
- **quiero** publicar una oferta de trabajo en múltiples plataformas con un solo clic,  
- **para que** pueda ahorrar tiempo y ampliar el alcance de mis vacantes.  

#### Criterios de Aceptación:
- El sistema debe permitir seleccionar en qué plataformas (LinkedIn, Indeed, etc.) se publicará la vacante.
- La publicación debe ser instantánea y reflejarse en todas las plataformas seleccionadas.
- Se debe recibir una confirmación de éxito o notificación de error en caso de fallo.

#### Notas Adicionales:
- Se puede permitir la edición de una vacante ya publicada y reflejar cambios en todas las plataformas.

#### Historias de Usuario Relacionadas:
- Gestión de vacantes en el sistema ATS.
- Integración con LinkedIn y otras plataformas de empleo.

---

### Historia de Usuario 2: Filtrado Inteligente de Candidatos con IA

#### Título: Filtro automático de CVs con IA  
- **Como** reclutador,  
- **quiero** que el sistema analice automáticamente los CVs y me recomiende los candidatos más adecuados,  
- **para que** pueda enfocarme en los perfiles más relevantes y reducir el tiempo de selección.  

#### Criterios de Aceptación:
- El sistema debe analizar los CVs con NLP y asignar un puntaje de compatibilidad con la vacante.
- Debe permitir ver una lista priorizada de candidatos recomendados.
- Se debe poder ajustar los criterios de filtrado según necesidades específicas.

#### Notas Adicionales:
- Se debe ofrecer transparencia en la puntuación y permitir la validación manual.

#### Historias de Usuario Relacionadas:
- Evaluación de candidatos.
- Matching de candidatos con IA.

---

### Historia de Usuario 3: Gestión del Pipeline de Contratación con Kanban

#### Título: Seguimiento visual del proceso de contratación  
- **Como** reclutador,  
- **quiero** gestionar a los candidatos en un pipeline visual tipo Kanban,  
- **para que** pueda hacer seguimiento del estado de cada candidato en el proceso de selección.  

#### Criterios de Aceptación:
- El sistema debe mostrar un tablero visual con las etapas del proceso de contratación.
- Se debe permitir arrastrar y soltar candidatos entre etapas.
- Se deben registrar automáticamente los cambios de estado.

#### Notas Adicionales:
- Las etapas deben ser configurables por la empresa.

#### Historias de Usuario Relacionadas:
- Filtrado de candidatos.
- Gestión de entrevistas.

---

### Historia de Usuario 4: Programación Automática de Entrevistas

#### Título: Coordinación eficiente de entrevistas  
- **Como** reclutador,  
- **quiero** que el sistema programe automáticamente entrevistas según la disponibilidad de los candidatos y entrevistadores,  
- **para que** pueda evitar conflictos de horarios y agilizar el proceso de selección.  

#### Criterios de Aceptación:
- El sistema debe integrarse con Google Calendar y Outlook.
- Debe sugerir horarios óptimos basados en disponibilidad.
- Debe enviar notificaciones automáticas a los involucrados.

#### Notas Adicionales:
- Se debe permitir la reprogramación en caso de cambios de última hora.

#### Historias de Usuario Relacionadas:
- Gestión del pipeline de candidatos.
- Filtrado de candidatos.

---

### Historia de Usuario 5: Envío Automático de Ofertas de Empleo

#### Título: Notificación de oferta de trabajo a candidatos seleccionados  
- **Como** reclutador,  
- **quiero** enviar automáticamente ofertas de empleo a los candidatos seleccionados,  
- **para que** pueda agilizar el cierre del proceso de contratación.  

#### Criterios de Aceptación:
- El sistema debe permitir generar una oferta con detalles personalizados.
- El candidato debe recibir una notificación con la oferta y la opción de aceptarla o rechazarla.
- Se debe notificar al reclutador cuando el candidato responda.

#### Notas Adicionales:
- Se pueden incluir plantillas personalizables de ofertas de empleo.

#### Historias de Usuario Relacionadas:
- Gestión del pipeline de candidatos.
- Notificaciones automáticas.

## Backlog priorizado

### Introducción
Este backlog priorizado se ha creado considerando los siguientes factores:
1. **Impacto en el usuario y valor del negocio**: Beneficio directo para los usuarios y alineación con los objetivos estratégicos.
2. **Urgencia basada en tendencias del mercado y feedback de usuarios**: Importancia según la demanda del mercado y necesidades inmediatas de los clientes.
3. **Complejidad y esfuerzo estimado de implementación**: Evaluación de la dificultad técnica y tiempo necesario para la implementación.
4. **Riesgos y dependencias entre tareas**: Identificación de bloqueos y relaciones entre historias de usuario.

### Tabla de Priorización

| # | Historia de Usuario | Impacto | Urgencia | Complejidad | Riesgo | Prioridad |
|---|--------------------|---------|----------|-------------|--------|----------|
| 1 | Filtrado Inteligente de Candidatos con IA | Alto (5) | Alto (5) | Alto (5) | Medio (3) | ⭐⭐⭐⭐⭐ |
| 2 | Gestión del Pipeline de Contratación con Kanban | Alto (5) | Alto (5) | Medio (3) | Bajo (2) | ⭐⭐⭐⭐⭐ |
| 3 | Programación Automática de Entrevistas | Alto (5) | Medio (3) | Medio (3) | Medio (3) | ⭐⭐⭐⭐ |
| 4 | Publicación de Vacantes en Múltiples Plataformas | Medio (3) | Medio (3) | Bajo (2) | Bajo (2) | ⭐⭐⭐ |
| 5 | Envío Automático de Ofertas de Empleo | Medio (3) | Bajo (2) | Bajo (2) | Bajo (2) | ⭐⭐ |

**Leyenda:**
- Impacto, urgencia, complejidad y riesgo se puntúan de 1 a 5 (siendo 5 el mayor valor posible).
- La prioridad final se representa con estrellas (⭐⭐⭐⭐⭐ es la máxima prioridad).

### Explicación de la Priorización

#### 1. Filtrado Inteligente de Candidatos con IA ⭐⭐⭐⭐⭐
- **Razón**: Esta funcionalidad es clave para diferenciar a LTI ATS en el mercado, reduciendo el tiempo de contratación de manera significativa.
- **Dependencias**: Requiere una base de datos estructurada de candidatos y un motor de IA funcional.
- **Riesgo**: Medio, debido a la complejidad del algoritmo de NLP y la precisión del matching.

#### 2. Gestión del Pipeline de Contratación con Kanban ⭐⭐⭐⭐⭐
- **Razón**: Permite una mejor visualización y gestión del proceso de contratación, mejorando la experiencia del reclutador.
- **Dependencias**: Requiere la existencia de candidatos y vacantes en el sistema.
- **Riesgo**: Bajo, ya que su implementación es principalmente a nivel de UI y flujo de datos.

#### 3. Programación Automática de Entrevistas ⭐⭐⭐⭐
- **Razón**: Agiliza la organización de entrevistas y reduce errores de agendamiento.
- **Dependencias**: Requiere integración con Google Calendar y Outlook.
- **Riesgo**: Medio, ya que depende de APIs externas.

#### 4. Publicación de Vacantes en Múltiples Plataformas ⭐⭐⭐
- **Razón**: Mejora la eficiencia en la publicación de vacantes, pero es menos prioritaria que las funcionalidades centrales del ATS.
- **Dependencias**: Integración con plataformas externas como LinkedIn, Indeed, etc.
- **Riesgo**: Bajo, ya que la mayoría de estas plataformas ofrecen APIs bien documentadas.

#### 5. Envío Automático de Ofertas de Empleo ⭐⭐
- **Razón**: Aunque útil, su impacto inicial es menor comparado con otras funcionalidades clave.
- **Dependencias**: Depende de la selección de candidatos dentro del pipeline.
- **Riesgo**: Bajo, ya que es una funcionalidad sencilla de automatización.

### Conclusión
Este backlog priorizado refleja las funcionalidades clave para garantizar una implementación efectiva de LTI ATS. La prioridad más alta se ha dado a aquellas historias que maximizan el impacto en la experiencia del usuario y el valor del negocio, considerando al mismo tiempo la complejidad y los riesgos involucrados.

## Tickets de Trabajo - Historia de Usuario 3: Programación Automática de Entrevistas

### **1. Feature: Creación de Entidades de Entrevistas en la Base de Datos**

#### **Descripción**
Se debe diseñar y crear la estructura de la base de datos para almacenar la información de las entrevistas, incluyendo la relación con candidatos, reclutadores y vacantes.

#### **Criterios de Aceptación**
- Debe existir una tabla `entrevistas` con los campos: `id`, `candidato_id`, `reclutador_id`, `vacante_id`, `fecha_hora`, `estado`, `link_reunion`, `notas`.
- La base de datos debe soportar integridad referencial con claves foráneas.
- Se debe crear una migración inicial con la estructura definida.

#### **Prioridad**
Alta

#### **Etiquetas**
- Backend
- Base de Datos
- Feature

#### **Referencias**
- Historia de Usuario 3: Programación Automática de Entrevistas

---

### **2. Feature: Integración con Google Calendar y Outlook**

#### **Descripción**
Implementar la integración con las APIs de Google Calendar y Microsoft Outlook para la creación automática de eventos de entrevistas.

#### **Criterios de Aceptación**
- Los usuarios deben poder conectar sus cuentas de Google Calendar y Outlook.
- Al programar una entrevista, se debe crear automáticamente un evento en el calendario del reclutador y del candidato.
- Debe generarse un enlace de reunión si la entrevista es remota.
- Las cancelaciones o reprogramaciones deben reflejarse en el calendario automáticamente.

#### **Prioridad**
Alta

#### **Etiquetas**
- Backend
- Integración API
- Feature

#### **Referencias**
- Historia de Usuario 3: Programación Automática de Entrevistas

---

### **3. Tarea Técnica: Implementación del Backend para Gestión de Entrevistas**

#### **Descripción**
Desarrollar los endpoints en la API backend que permitan la creación, actualización y cancelación de entrevistas.

#### **Criterios de Aceptación**
- Endpoint `POST /entrevistas` para programar una entrevista.
- Endpoint `GET /entrevistas/{id}` para obtener detalles de una entrevista.
- Endpoint `PUT /entrevistas/{id}` para reprogramar una entrevista.
- Endpoint `DELETE /entrevistas/{id}` para cancelar una entrevista.

#### **Prioridad**
Alta

#### **Etiquetas**
- Backend
- API REST
- Tarea Técnica

#### **Referencias**
- Historia de Usuario 3: Programación Automática de Entrevistas
- Feature: Creación de Entidades de Entrevistas en la Base de Datos

---

### **4. Feature: UI para Visualización y Gestión de Entrevistas**

#### **Descripción**
Diseñar y desarrollar la interfaz de usuario para la visualización y gestión de entrevistas dentro del ATS.

#### **Criterios de Aceptación**
- Debe existir una vista donde se muestren las entrevistas programadas.
- Se debe permitir la edición y cancelación de entrevistas desde la UI.
- Debe haber integración con el calendario del usuario para mostrar disponibilidad.

#### **Prioridad**
Media

#### **Etiquetas**
- Frontend
- UI/UX
- Feature

#### **Referencias**
- Historia de Usuario 3: Programación Automática de Entrevistas
- Feature: Integración con Google Calendar y Outlook

---

### **5. Spike: Evaluación de APIs de Terceros para la Gestión de Entrevistas**

#### **Descripción**
Investigar las mejores opciones para la integración de videollamadas y coordinación de horarios en entrevistas.

#### **Criterios de Aceptación**
- Evaluar opciones como Google Meet, Zoom y Microsoft Teams para la creación de enlaces de reuniones.
- Comparar funcionalidades y costos de cada API.
- Documentar pros y contras de cada alternativa y hacer una recomendación final.

#### **Prioridad**
Media

#### **Etiquetas**
- Investigación
- Integraciones
- Spike

#### **Referencias**
- Historia de Usuario 3: Programación Automática de Entrevistas
- Feature: Integración con Google Calendar y Outlook

---

### **6. Bug: Solución de Errores en la Reprogramación de Entrevistas**

#### **Descripción**
Los eventos reprogramados en el calendario de Google no se actualizan correctamente en la base de datos del ATS.

#### **Criterios de Aceptación**
- Las entrevistas reprogramadas deben actualizarse correctamente en la base de datos.
- La notificación de reprogramación debe enviarse tanto a reclutadores como a candidatos.
- Se debe reflejar el cambio en el calendario correspondiente.

#### **Prioridad**
Alta

#### **Etiquetas**
- Bug
- Backend
- Integraciones

#### **Referencias**
- Historia de Usuario 3: Programación Automática de Entrevistas
- Feature: Integración con Google Calendar y Outlook

## Estimación del Esfuerzo - Historia de Usuario 3: Programación Automática de Entrevistas

### Introducción
Para estimar el esfuerzo de los tickets de trabajo, se ha utilizado la **serie de Fibonacci** (1, 2, 3, 5, 8, 13, etc.), asignando valores relativos en función de la complejidad, el tiempo requerido y los riesgos asociados.

| # | Ticket de Trabajo | Tipo | Estimación (Puntos Historia) |
|---|-------------------|------|----------------------------|
| 1 | Creación de Entidades de Entrevistas en la Base de Datos | Feature | **3** |
| 2 | Integración con Google Calendar y Outlook | Feature | **8** |
| 3 | Implementación del Backend para Gestión de Entrevistas | Tarea Técnica | **5** |
| 4 | UI para Visualización y Gestión de Entrevistas | Feature | **5** |
| 5 | Evaluación de APIs de Terceros para la Gestión de Entrevistas | Spike | **3** |
| 6 | Solución de Errores en la Reprogramación de Entrevistas | Bug | **5** |

### Explicación de la Estimación

#### **1. Creación de Entidades de Entrevistas en la Base de Datos (3 Puntos Historia)**
- Relativamente sencilla, pero requiere un diseño sólido.
- Baja incertidumbre, ya que se trata de una estructura de datos bien definida.

#### **2. Integración con Google Calendar y Outlook (8 Puntos Historia)**
- Complejidad alta debido a la integración con APIs de terceros.
- Posibles problemas con autenticación, permisos y sincronización de datos.

#### **3. Implementación del Backend para Gestión de Entrevistas (5 Puntos Historia)**
- Moderada dificultad, ya que implica la creación de endpoints y lógica de negocio.
- Depende de la estructura de la base de datos.

#### **4. UI para Visualización y Gestión de Entrevistas (5 Puntos Historia)**
- Requiere diseño y desarrollo de una interfaz interactiva.
- Necesita integración con el backend y el calendario del usuario.

#### **5. Evaluación de APIs de Terceros para la Gestión de Entrevistas (3 Puntos Historia)**
- Investigación con documentación existente.
- No requiere desarrollo inmediato, pero puede afectar decisiones futuras.

#### **6. Solución de Errores en la Reprogramación de Entrevistas (5 Puntos Historia)**
- Moderada dificultad, ya que implica correcciones en la integración con Google Calendar y Outlook.
- Depende de la solución adoptada en la integración inicial.

### Conclusión
Esta estimación servirá como base para planificar los sprints de desarrollo. La integración con Google Calendar y Outlook es la tarea más compleja, mientras que la creación de entidades en la base de datos y la investigación de APIs tienen un esfuerzo menor.

