# User Stories para LTI - Sistema Avanzado de Seguimiento de Candidatos (ATS)
## Descripción del proyecto
# 🚀 LTI - Sistema Avanzado de Seguimiento de Candidatos (ATS)

## 📌 Descripción Breve

LTI es un **Sistema Avanzado de Seguimiento de Candidatos (ATS)** de nueva generación que revoluciona el proceso de reclutamiento y selección mediante la potencia de la inteligencia artificial y la automatización. Diseñado para maximizar la eficiencia del departamento de recursos humanos, LTI ofrece una plataforma integral que gestiona todo el ciclo de vida del proceso de contratación, desde la publicación de vacantes hasta la incorporación del candidato seleccionado.

## 🎯 Valor Añadido

- **Reducción del tiempo de contratación hasta en un 50%** mediante filtros inteligentes y matching automatizado basado en IA.
- **Mejora significativa en la calidad de los candidatos seleccionados**, gracias a algoritmos predictivos basados en NLP (Procesamiento de Lenguaje Natural).
- **Optimización de recursos de RRHH**, minimizando tareas manuales repetitivas y permitiendo que los profesionales se enfoquen en actividades de mayor valor.
- **Decisiones basadas en datos** a través de análisis avanzados y reportes personalizables sobre el proceso de reclutamiento.
- **Colaboración en tiempo real** entre reclutadores, gerentes y stakeholders, facilitando evaluaciones conjuntas y toma de decisiones ágiles.

## 🔥 Ventajas Competitivas

- 🧠 **Matching Inteligente:** IA que aprende y mejora constantemente la selección de talento con cada contratación realizada.
- ⚡ **Parsing avanzado de CVs:** Extracción y organización automática de información clave de currículos en segundos, con reconocimiento de patrones y contextualización.
- 🤖 **Automatización de comunicación:** Respuestas personalizadas a candidatos mediante chatbots inteligentes y correos automáticos que mantienen el proceso fluido.
- 🔗 **Integraciones completas:** Conexión fluida con LinkedIn, Indeed, portales de empleo, CRMs y sistemas internos de la empresa.
- 📊 **Analytics avanzados:** Métricas de rendimiento del proceso de selección con KPIs personalizables según las necesidades de la empresa.
- 🔍 **Búsqueda semántica:** Capacidad para encontrar candidatos basada en conceptos y habilidades relacionadas, no solo en palabras clave exactas.

## 💼 Funciones Principales

### 1. Gestión Integral de Vacantes
- Creación y edición intuitiva de ofertas de empleo
- Optimización de descripciones con IA para maximizar la atracción de talento
- Publicación automatizada en múltiples plataformas (multiposting)
- Seguimiento del rendimiento de cada vacante publicada

### 2. Captura y Procesamiento Inteligente de Candidatos
- Recepción centralizada de CVs desde diversas fuentes
- Parsing automático con extracción estructurada de datos relevantes
- Enriquecimiento de perfiles mediante fuentes externas (LinkedIn, GitHub, etc.)
- Organización automática en la base de datos con etiquetado inteligente

### 3. Filtrado y Priorización Predictiva
- Algoritmos de matching avanzados entre vacantes y candidatos
- Búsqueda avanzada con filtros dinámicos y personalizables
- Scoring automatizado de candidatos basado en requisitos clave
- Recomendaciones inteligentes de candidatos para cada posición

### 4. Colaboración en Tiempo Real
- Espacios de trabajo compartidos para equipos de selección
- Comentarios y evaluaciones en tiempo real sobre candidatos
- Herramientas de comunicación integradas para discusiones internas
- Notificaciones personalizadas sobre actualizaciones importantes

### 5. Automatización del Proceso de Entrevistas
- Programación inteligente con sincronización de calendarios
- Videollamadas integradas con grabación y transcripción automática
- Formularios de evaluación personalizados para cada etapa
- Seguimiento automático de feedbacks post-entrevista

### 6. Análisis y Reportes Avanzados
- Dashboards personalizables con métricas clave
- Análisis predictivo sobre tendencias de contratación
- Reportes de rendimiento del proceso de selección
- Insights sobre fuentes de candidatos más efectivas

## 📋 Modelo de Negocio (Lean Canvas)

| **Problema** | **Segmento de Clientes** | **Propuesta de Valor** |
|--------------|--------------------------|------------------------|
| • Procesos manuales de selección lentos y costosos<br>• Filtrado ineficiente de candidatos<br>• Pérdida de talento por demoras en respuestas<br>• Decisiones subjetivas sin respaldo de datos | • Empresas medianas y grandes<br>• Agencias de reclutamiento<br>• Startups en crecimiento<br>• Equipos de RRHH con alto volumen de contratación | • ATS potenciado con IA que reduce el tiempo de contratación hasta en 50%<br>• Automatización end-to-end del proceso<br>• Mejora significativa en calidad de candidatos<br>• Colaboración en tiempo real |

| **Solución** | **Canales** | **Ingresos** |
|--------------|-------------|--------------|
| • Publicación automatizada con IA<br>• Parsing inteligente de CVs<br>• Matching predictivo<br>• Colaboración en tiempo real<br>• Análisis avanzado | • Venta directa B2B<br>• Integraciones con LinkedIn, Indeed<br>• Partnerships con consultoras<br>• Eventos y webinars de RRHH<br>• Marketing digital especializado | • Suscripción mensual SaaS<br>• Planes según volumen de vacantes/usuarios<br>• Módulos premium (IA avanzada, Reportes)<br>• Integraciones personalizadas<br>• Consultoría de implementación |

| **Costes** | **Métricas Clave** | **Ventaja Injusta** |
|------------|-------------------|---------------------|
| • Desarrollo y mantenimiento de IA<br>• Infraestructura cloud<br>• Marketing y adquisición<br>• Soporte técnico<br>• Integraciones con plataformas | • Reducción del tiempo de contratación<br>• Retención de clientes<br>• Vacantes cerradas con éxito<br>• Net Promoter Score<br>• Crecimiento MRR | • IA especializada en reclutamiento<br>• Algoritmos de matching propietarios<br>• Automatización end-to-end<br>• Capacidad de aprendizaje continuo<br>• Integraciones fluidas con herramientas existentes |

### Entidades Principales

**Vacante:**
- ID (UUID)
- Título (String)
- Descripción (Text)
- Requisitos (Text)
- Departamento (String)
- Ubicación (String)
- Tipo de contrato (Enum)
- Fecha publicación (Date)
- Estado (Enum: Abierta, En proceso, Cerrada)
- Canales publicación (Array)

**Candidato:**
- ID (UUID)
- Nombre (String)
- Email (String)
- Teléfono (String)
- Ubicación (String)
- CV (File)
- Experiencia (Array)
- Educación (Array)
- Habilidades (Array)
- Origen (String)
- Fecha aplicación (Date)
- Estado (Enum: Nuevo, En proceso, Finalista, Contratado, Rechazado)
- Puntuación IA (Float)

**Aplicación:**
- ID (UUID)
- Candidato_ID (FK)
- Vacante_ID (FK)
- Fecha (Date)
- Estado (Enum)
- Etapa actual (String)
- Puntuación match (Float)
- Notas (Text)

**Usuario:**
- ID (UUID)
- Nombre (String)
- Email (String)
- Rol (Enum: Admin, Reclutador, Manager)
- Departamento (String)
- Preferencias (JSON)

**Evaluación:**
- ID (UUID)
- Aplicación_ID (FK)
- Usuario_ID (FK)
- Etapa (String)
- Puntuación (Float)
- Comentarios (Text)
- Fecha (Timestamp)

**Entrevista:**
- ID (UUID)
- Aplicación_ID (FK)
- Tipo (Enum: Telefónica, Videollamada, Presencial)
- Fecha (Timestamp)
- Duración (Integer)
- Participantes (Array)
- Estado (Enum: Programada, Completada, Cancelada)
- Notas (Text)

### Relaciones:

- Vacante ↔ Candidato (muchos a muchos a través de Aplicación)
- Usuario → Evaluación (uno a muchos)
- Aplicación → Evaluación (uno a muchos)
- Aplicación → Entrevista (uno a muchos)
- Usuario → Vacante (muchos a muchos)

## 🚀 Conclusión

LTI representa la próxima generación de sistemas de seguimiento de candidatos, combinando la potencia de la inteligencia artificial con una experiencia de usuario excepcional para transformar radicalmente el proceso de reclutamiento. Al automatizar tareas repetitivas, facilitar la colaboración en tiempo real y proporcionar insights accionables, LTI no solo ahorra tiempo y recursos a las empresas, sino que también mejora significativamente la calidad de las contrataciones.


## User Stories

### prompt:
Actua como product Owner, tu mision es Genera Los User Story Para completar el desarrollo de la platafoma LTI, Tomate tu tiempo para crearlos
Para redactarlos quiate con el siguiente formato:

Estructura basica de una User Story
Formato estándar: "Como [tipo de usuario], quiero [realizar una acción] para [obtener un beneficio]".
Descripción: Una descripción concisa y en lenguaje natural de la funcionalidad que el usuario desea.
Criterios de Aceptación: Condiciones específicas que deben cumplirse para considerar la User Story como "terminada", éstos deberian de seguir un formato similar a “Dado que” [contexto inicial], "cuando” [acción realizada], “entonces” [resultado esperado].
Notas adicionales:  Notas que puedan ayudar al desarrollo de la historia
Tareas: Lista de tareas y subtareas para que esta historia pueda ser completada

### User Story 1: Creación de Vacantes

**Formato estándar:** Como Reclutador, quiero crear nuevas vacantes con facilidad para publicar ofertas de trabajo de manera rápida y precisa.

**Descripción:** Los reclutadores deben poder crear, editar y publicar ofertas de trabajo desde una interfaz amigable.

**Criterios de Aceptación:**
- Dado que estoy en el módulo de "Gestión de Vacantes", cuando presiono el botón "Crear Vacante", entonces se despliega un formulario para ingresar detalles de la vacante.
- Cuando ingreso los detalles requeridos (título, descripción, requisitos, departamento, ubicación, tipo de contrato, fecha de publicación, estado), la vacante se guarda correctamente.
- Cuando la vacante es publicada, se muestra en la lista de vacantes activas.

**Notas adicionales:** Se debe permitir guardar una vacante como borrador.

**Observaciones Técnicas:**
- Implementar Backend API RESTful para la gestión de Vacantes.
- Desarrollar Interfaz Web amigable con React para la creación y edición de vacantes.
- Utilizar PostgreSQL para almacenar las vacantes creadas.

**Tareas:**
- Crear formulario para creación de vacantes.
- Implementar funcionalidad para guardar y editar vacantes.
- Integrar API para publicación automática.
- Crear pruebas unitarias para la creación, edición y publicación de vacantes.

---

### User Story 2: Parsing de CVs

**Formato estándar:** Como Reclutador, quiero que el sistema procese automáticamente los CVs para obtener información relevante de manera rápida.

**Descripción:** El sistema debe analizar y extraer datos estructurados de los CVs recibidos.

**Criterios de Aceptación:**
- Dado que se recibe un CV, cuando el sistema lo analiza, entonces se extrae información relevante como nombre, experiencia, educación, habilidades, y se guarda en la base de datos.
- Cuando el procesamiento falla, se genera un mensaje de error claro.

**Notas adicionales:** La extracción debe permitir múltiples formatos (PDF, DOCX, etc.).

**Observaciones Técnicas:**
- Implementar servicio de procesamiento de CVs con técnicas de NLP.
- Integrar librerías especializadas para reconocimiento de texto (Tika, PyPDF2, etc.).
- Utilizar PostgreSQL para almacenar los datos extraídos.
- Añadir soporte para procesamiento de imágenes escaneadas (OCR).
- Implementar un sistema de feedback para ajustar resultados de parsing.

**Tareas:**
- Implementar servicio de parsing para CVs.
- Integrar librerías para reconocimiento de texto y OCR.
- Crear pruebas para procesamiento exitoso y fallido.

---

### User Story 3: Matching Inteligente

**Formato estándar:** Como Reclutador, quiero que el sistema me muestre los candidatos más relevantes para una vacante para agilizar el proceso de selección.

**Descripción:** El sistema debe realizar un matching predictivo basado en los requisitos de la vacante y el perfil del candidato.

**Criterios de Aceptación:**
- Dado que se selecciona una vacante, cuando se realiza una búsqueda de candidatos, entonces el sistema muestra un listado ordenado por relevancia.
- Cuando se aplican filtros personalizados, se actualiza el listado de resultados.

**Notas adicionales:** Los algoritmos de matching deben mejorarse continuamente.

**Observaciones Técnicas:**
- Desarrollar un motor de matching predictivo con IA y algoritmos de clasificación.
- Implementar un sistema de entrenamiento para mejorar el matching con cada contratación realizada.
- Añadir soporte para búsqueda semántica (Embeddings).
- Crear sistema de feedback que permita mejorar la clasificación continuamente.

**Tareas:**
- Implementar motor de búsqueda con IA.
- Crear interfaz para visualización de resultados.
- Integrar métricas de relevancia.
- Crear pruebas de rendimiento y calidad de resultados.

---

### User Story 4: Gestión de Aplicaciones

**Formato estándar:** Como Reclutador, quiero gestionar las aplicaciones de candidatos para llevar un control adecuado del proceso de selección.

**Descripción:** El sistema debe permitir ver, editar y actualizar aplicaciones individuales de candidatos.

**Criterios de Aceptación:**
- Dado que se selecciona un candidato, cuando se actualiza su estado (nuevo, en proceso, finalista, contratado, rechazado), entonces se guarda correctamente en la base de datos.
- Cuando se añaden comentarios o notas, estos se guardan y son visibles para otros usuarios autorizados.

**Notas adicionales:** Las aplicaciones deben poder ser filtradas por estado y vacante.

**Observaciones Técnicas:**
- Implementar sistema de gestión de aplicaciones en el Backend API RESTful.
- Desarrollar una interfaz gráfica para la visualización y edición de aplicaciones.
- Crear roles y permisos para asegurar que solo usuarios autorizados puedan editar aplicaciones.

**Tareas:**
- Crear vista para gestión de aplicaciones.
- Implementar funcionalidad para actualizar estado y agregar notas.
- Crear pruebas de actualización y visualización.

---

# Tabla casos de uso

| Ítem del Backlog                | Impacto en el Usuario / Valor del Negocio | Urgencia (Tendencias / Feedback) | Complejidad / Esfuerzo Estimado | Riesgos y Dependencias                |
|---------------------------------|-----------------------------------------|---------------------------------|--------------------------------|-------------------------------------|
| Creación de Vacantes             | Alto. Permite a los usuarios crear vacantes de manera eficiente. Facilita la gestión inicial del proceso de contratación. | Alta. Fundamental para iniciar el uso de la plataforma. | Medio. Desarrollar formularios interactivos y backend RESTful. | Riesgo medio si no se implementa la edición o borrador. Depende del Backend API RESTful. |
| Parsing de CVs                   | Alto. Permite automatizar el proceso de análisis de CVs, mejorando la eficiencia. | Alta. Los usuarios esperan que esta funcionalidad funcione sin errores. | Alto. Integración de NLP y OCR requiere esfuerzo considerable. | Riesgo alto si los CVs son muy variados. Depende del sistema de almacenamiento en PostgreSQL. |
| Matching Inteligente             | Muy Alto. Facilita la identificación rápida de candidatos relevantes. | Muy Alta. Diferenciador principal frente a la competencia. | Muy Alto. IA y búsqueda semántica son complejas de implementar. | Riesgo alto si la IA no es precisa. Depende de datos bien procesados y almacenados. |
| Gestión de Aplicaciones          | Alto. Permite a los reclutadores dar seguimiento al estado de cada candidato. | Media. Fundamental para la organización del proceso. | Medio. Gestión CRUD típica pero requiere permisos detallados. | Riesgo medio si no se implementan correctamente los permisos. Depende del Backend API RESTful. |
| Colaboración en Tiempo Real      | Alto. Mejora la productividad del equipo al permitir comunicación instantánea. | Alta. Necesaria para una experiencia colaborativa fluida. | Alto. WebSockets u otros métodos requieren un esfuerzo adicional. | Riesgo alto si la sincronización falla. Dependencias con la gestión de aplicaciones. |
| Programación de Entrevistas      | Medio. Simplifica la coordinación entre reclutadores y candidatos. | Alta. Integración con servicios como Calendly es muy solicitada. | Medio. Requiere integración con APIs externas y manejo de errores. | Riesgo medio si la sincronización de horarios falla. Dependencias con API de Calendly o Google Calendar. |
| Generación de Reportes           | Medio. Proporciona insights importantes para la toma de decisiones. | Media. Deseable pero no esencial al inicio. | Medio. Requiere implementación de gráficos y exportación de datos. | Riesgo bajo si los datos no se presentan adecuadamente. Depende de la base de datos. |
| Base de Datos Relacional         | Muy Alto. Es el núcleo de la persistencia de datos del sistema. | Alta. Sin un sistema de almacenamiento adecuado nada funciona. | Medio. Diseño de esquemas relacionales estándar. | Riesgo medio si no se diseñan adecuadamente las relaciones. Dependencias con todos los servicios del backend. |
| Sistema de Permisos y Roles      | Alto. Controla el acceso seguro a las funcionalidades del sistema. | Media. Necesario para ambientes colaborativos y jerárquicos. | Medio. Implementación de autenticación y autorización. | Riesgo medio si las reglas no se implementan correctamente. Dependencias con todas las funcionalidades. |
| Testing Automatizado             | Alto. Garantiza la calidad del sistema y reduce errores en producción. | Alta. Indispensable para escalar adecuadamente. | Medio. Desarrollo de pruebas unitarias e integraciones. | Riesgo bajo si no se cubren adecuadamente todos los casos. Depende de todas las funcionalidades implementadas. |
| Infraestructura en la Nube       | Alto. Garantiza escalabilidad y disponibilidad. | Media. Fundamental para el despliegue y mantenimiento. | Medio. Configuración de AWS o similar. | Riesgo medio si no se configuran adecuadamente los servicios. Dependencias con la API RESTful y bases de datos. |

# Casos de uso priorizados

## Casos de uso priorizados

| Prioridad | Ítem del Backlog                | Impacto en el Usuario / Valor del Negocio | Urgencia (Tendencias / Feedback) | Complejidad / Esfuerzo Estimado | Riesgos y Dependencias                |
|-----------|---------------------------------|-----------------------------------------|---------------------------------|--------------------------------|-------------------------------------|
| 1         | Base de Datos Relacional        | Muy Alto. Es el núcleo de la persistencia de datos del sistema. | Alta. Sin un sistema de almacenamiento adecuado nada funciona. | Medio. Diseño de esquemas relacionales estándar. | Riesgo medio si no se diseñan adecuadamente las relaciones. Dependencias con todos los servicios del backend. |
| 2         | Backend API RESTful             | Muy Alto. Facilita la comunicación entre frontend y backend. | Alta. Necesario para todas las funcionalidades principales. | Alto. Desarrollo de endpoints y lógica de negocio. | Riesgo alto si la arquitectura no es escalable. Dependencias con Base de Datos Relacional. |
| 3         | Sistema de Permisos y Roles     | Alto. Controla el acceso seguro a las funcionalidades del sistema. | Media. Necesario para ambientes colaborativos y jerárquicos. | Medio. Implementación de autenticación y autorización. | Riesgo medio si las reglas no se implementan correctamente. Dependencias con Backend API RESTful. |
| 4         | Creación de Vacantes            | Alto. Permite iniciar el uso de la plataforma. | Alta. Fundamental para gestionar vacantes. | Medio. Formularios interactivos y backend RESTful. | Riesgo medio si no se implementa la edición o borrador. Dependencias con Backend API RESTful y Base de Datos. |
| 5         | Parsing de CVs                  | Alto. Automatiza la captura de información de candidatos. | Alta. Esperado por los usuarios para ahorro de tiempo. | Alto. NLP y OCR requieren esfuerzo considerable. | Riesgo alto si los CVs son variados. Dependencias con Backend API RESTful y Base de Datos. |
| 6         | Gestión de Aplicaciones         | Alto. Facilita el seguimiento de candidatos. | Media. Clave para organizar el proceso de selección. | Medio. Gestión CRUD con permisos detallados. | Riesgo medio si los permisos fallan. Dependencias con Backend API RESTful y Sistema de Permisos. |
| 7         | Matching Inteligente            | Muy Alto. Diferenciador principal frente a la competencia. | Muy Alta. Facilita la identificación rápida de candidatos relevantes. | Muy Alto. IA y búsqueda semántica son complejas de implementar. | Riesgo alto si la IA no es precisa. Depende de Parsing de CVs y Base de Datos. |
| 8         | Programación de Entrevistas     | Medio. Facilita la coordinación entre reclutadores y candidatos. | Alta. Necesario para sincronizar horarios. | Medio. APIs externas y manejo de errores. | Riesgo medio si la sincronización falla. Dependencias con Backend API RESTful. |
| 9        | Colaboración en Tiempo Real     | Alto. Mejora la productividad en la evaluación de candidatos. | Alta. Crítico para equipos colaborativos. | Alto. WebSockets o tecnologías similares. | Riesgo alto si la sincronización falla. Dependencias con Gestión de Aplicaciones. |
| 10        | Generación de Reportes          | Medio. Ayuda a tomar decisiones basadas en datos. | Media. Deseable pero no esencial al inicio. | Medio. Gráficos interactivos y exportación. | Riesgo bajo si los datos no se presentan adecuadamente. Dependencias con Backend API RESTful y Base de Datos. |
| 11        | Testing Automatizado            | Alto. Garantiza calidad y reduce errores. | Alta. Necesario para escalar adecuadamente. | Medio. Pruebas unitarias e integración. | Riesgo bajo si no se cubren adecuadamente todos los casos. Dependencias con todas las funcionalidades implementadas. |
| 12        | Infraestructura en la Nube      | Alto. Garantiza escalabilidad y disponibilidad. | Media. Fundamental para el despliegue y mantenimiento. | Medio. Configuración de AWS o similar. | Riesgo medio si no se configuran adecuadamente los servicios. Dependencias con Backend API RESTful y Base de Datos. |

# Casos de uso priorizados 2

## Resultados

| Prioridad | User Story                     | Impacto / Valor del Negocio             | Urgencia (Mercado / Feedback) | Complejidad / Esfuerzo (Fibonacci) | Riesgos y Dependencias                                    |
|-----------|--------------------------------|----------------------------------------|------------------------------|-----------------------------------|---------------------------------------------------------|
| 1         | Base de Datos Relacional       | Muy Alto. Núcleo de persistencia.       | Alta. Esencial para cualquier funcionalidad. | 5                                 | Riesgo medio si no se diseñan adecuadamente las relaciones. Depende de todas las funcionalidades. |
| 2         | Backend API RESTful            | Muy Alto. Comunicación frontend-backend. | Alta. Necesario para todas las funcionalidades. | 8                                 | Riesgo alto si no es escalable. Depende de Base de Datos Relacional. |
| 3         | Sistema de Permisos y Roles    | Alto. Seguridad de acceso y colaboración. | Media. Necesario para ambientes colaborativos. | 5                                 | Riesgo medio si no se implementan correctamente las reglas. Depende del Backend API RESTful. |
| 4         | Creación de Vacantes           | Alto. Inicio del uso de la plataforma. | Alta. Funcionalidad principal para reclutadores. | 5                                 | Riesgo medio si no se permite edición o borrador. Depende del Backend API RESTful y Base de Datos. |
| 5         | Parsing de CVs                 | Alto. Automatiza análisis de candidatos. | Alta. Ahorra tiempo a los reclutadores. | 13                                | Riesgo alto si los CVs son variados. Depende de Backend API RESTful y Base de Datos. |
| 6         | Gestión de Aplicaciones        | Alto. Seguimiento de candidatos.       | Media. Clave para el proceso de selección. | 8                                 | Riesgo medio si los permisos fallan. Depende de Backend API RESTful y Sistema de Permisos. |
| 7         | Matching Inteligente           | Muy Alto. Diferenciador competitivo.   | Muy Alta. Facilita la selección de candidatos. | 13                                | Riesgo alto si la IA no es precisa. Depende de Parsing de CVs y Base de Datos. |
| 8         | Programación de Entrevistas    | Medio. Facilita la coordinación.       | Alta. Esperado por usuarios para agendar entrevistas. | 5                                 | Riesgo medio si falla la sincronización. Depende del Backend API RESTful. |
| 9        | Colaboración en Tiempo Real    | Alto. Mejora la eficiencia del equipo. | Alta. Esencial para equipos colaborativos. | 13                                | Riesgo alto si la sincronización falla. Depende de Gestión de Aplicaciones. |
| 10        | Generación de Reportes         | Medio. Toma de decisiones basada en datos. | Media. Deseable pero no esencial al inicio. | 8                                 | Riesgo bajo si los datos no se presentan adecuadamente. Depende del Backend API RESTful y Base de Datos. |
| 11        | Testing Automatizado           | Alto. Garantiza calidad del sistema.  | Alta. Necesario para un despliegue seguro. | 8                                 | Riesgo bajo si no se cubren todos los casos. Depende de todas las funcionalidades implementadas. |
| 12        | Infraestructura en la Nube     | Alto. Escalabilidad y disponibilidad.  | Media. Necesario para despliegue. | 5                                 | Riesgo medio si no se configura adecuadamente. Depende del Backend API RESTful y Base de Datos. |

## 1) 🎫 Ticket de Trabajo: Creación de Vacantes

1. **Título Claro y Conciso:**
   Implementar Módulo de Creación de Vacantes

2. **Descripción Detallada:**
   - **Propósito:** Permitir a los reclutadores crear, editar y publicar vacantes de manera eficiente a través de una interfaz amigable. Este módulo es fundamental para iniciar el uso de la plataforma, ya que permite la creación de ofertas de trabajo que se almacenarán en la base de datos y serán utilizadas por otros módulos como Matching Inteligente y Gestión de Aplicaciones.
   - **Detalles Específicos:**
     - Crear un formulario interactivo en la interfaz web (React) que permita ingresar detalles de una vacante.
     - Conectar el formulario con el Backend API RESTful para la creación, edición y guardado de vacantes.
     - Permitir guardar la vacante como borrador o publicarla inmediatamente.
     - Implementar validaciones en el frontend para asegurar que todos los campos requeridos se completen adecuadamente.
     - Almacenar la vacante en la base de datos PostgreSQL.
     - Proporcionar un endpoint en el backend para la gestión de vacantes.

3. **Criterios de Aceptación:**
   - **Expectativas Claras:**
     - ✅ El usuario puede ingresar detalles de la vacante como título, descripción, requisitos, departamento, ubicación, tipo de contrato, fecha de publicación y estado (Abierta, En proceso, Cerrada).
     - ✅ El usuario puede guardar la vacante como borrador o publicarla directamente.
     - ✅ La vacante publicada aparece en la lista de vacantes activas.
     - ✅ La vacante guardada como borrador se almacena correctamente y se puede editar posteriormente.
     - ✅ Se realiza la validación de todos los campos requeridos antes de guardar o publicar la vacante.
     - ✅ El sistema devuelve mensajes de éxito o error claros al usuario.
     - ✅ La vacante se guarda correctamente en la base de datos PostgreSQL.
     - ✅ El Backend API RESTful proporciona un endpoint funcional para la gestión de vacantes (Creación, Edición, Publicación, Eliminación).
   - **Pruebas de Validación:**
     - 🔍 Probar la creación de vacantes con todos los campos completados.
     - 🔍 Probar la creación de vacantes dejando algunos campos requeridos vacíos y verificar que se muestran los mensajes de error adecuados.
     - 🔍 Probar la funcionalidad de guardar como borrador y verificar que se pueda editar y publicar posteriormente.
     - 🔍 Verificar que la vacante se almacena correctamente en la base de datos.
     - 🔍 Verificar que la vacante publicada aparece en la lista de vacantes activas.
     - 🔍 Probar el endpoint del Backend API RESTful para asegurarse de que devuelve respuestas adecuadas.
     - 🔍 Verificar que la interfaz web (React) se comunica correctamente con el backend.

4. **Prioridad:**
   Alta: Este módulo es esencial para iniciar el uso de la plataforma y desbloquear otras funcionalidades críticas como Matching Inteligente y Gestión de Aplicaciones.

5. **Estimación de Esfuerzo:**
   Puntos de Historia: 5 (Fibonacci) - Complejidad Media.

## 2) 🎫 Ticket de Trabajo: Programación de Entrevistas

1. **Título Claro y Conciso:**
   Implementar Módulo de Programación de Entrevistas

2. **Descripción Detallada:**
   - **Propósito:** Facilitar la coordinación entre reclutadores y candidatos permitiendo la programación automática de entrevistas de manera eficiente. Este módulo debe integrarse con servicios externos como Google Calendar o Calendly para sincronizar agendas y proporcionar confirmaciones automáticas a ambas partes.
   - **Detalles Específicos:**
     - Crear un formulario de programación de entrevistas en la interfaz web (React) que permita seleccionar fecha y hora.
     - Proporcionar opciones para diferentes tipos de entrevistas (Telefónica, Videollamada, Presencial).
     - Integrar APIs externas (Google Calendar, Calendly) para sincronización de calendarios.
     - Notificar al candidato y al reclutador mediante correo electrónico cuando se programe la entrevista.
     - Almacenar los detalles de la entrevista en la base de datos PostgreSQL.
     - Proporcionar un endpoint en el backend para la gestión de entrevistas.
     - Permitir la modificación o cancelación de entrevistas programadas.

3. **Criterios de Aceptación:**
   - **Expectativas Claras:**
     - ✅ El usuario puede seleccionar fecha y hora para la entrevista desde un calendario interactivo.
     - ✅ El usuario puede especificar el tipo de entrevista (Telefónica, Videollamada, Presencial).
     - ✅ Las entrevistas programadas se sincronizan automáticamente con servicios externos como Google Calendar o Calendly.
     - ✅ Se envían notificaciones por correo electrónico a los participantes involucrados.
     - ✅ El usuario puede editar o cancelar entrevistas previamente programadas.
     - ✅ Los detalles de la entrevista se almacenan correctamente en la base de datos PostgreSQL.
     - ✅ El Backend API RESTful proporciona un endpoint funcional para la gestión de entrevistas (Creación, Modificación, Cancelación).

   - **Pruebas de Validación:**
     - 🔍 Probar la creación de entrevistas con diferentes tipos (Telefónica, Videollamada, Presencial).
     - 🔍 Probar la sincronización de calendarios con Google Calendar y Calendly.
     - 🔍 Probar la modificación y cancelación de entrevistas programadas.
     - 🔍 Probar que las notificaciones se envían correctamente a todas las partes involucradas.
     - 🔍 Verificar que las entrevistas se almacenan y se pueden recuperar desde la base de datos.
     - 🔍 Probar el endpoint del Backend API RESTful para la gestión de entrevistas.
     - 🔍 Asegurar que la interfaz web (React) se comunica correctamente con el backend.

4. **Prioridad:**
   Alta: Este módulo mejora significativamente la experiencia del usuario al automatizar la programación de entrevistas, algo esencial para un sistema avanzado de reclutamiento.

