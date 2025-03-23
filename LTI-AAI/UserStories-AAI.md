# User Stories para el Sistema LTI

## Resumen de Priorización (MoSCoW)

| ID | Título | Prioridad |
|----|--------|-----------|
| LTI-US-001 | Revisión automática de CVs con IA | Must have |
| LTI-US-002 | Comunicación en tiempo real para colaboración en reclutamiento | Must have |
| LTI-US-003 | Integración con sistemas HRM/ATS existentes | Should have |
| LTI-US-004 | Predicción de retención de candidatos mediante ML | Could have |
| LTI-US-005 | Dashboard analítico para métricas de contratación | Should have |

---

## LTI-US-001

### Título: Revisión automática de CVs con IA

**Rol del usuario:** Como reclutador  
**Objetivo:** Quiero que el sistema analice y clasifique automáticamente los CVs de los candidatos  
**Beneficio:** Para reducir el tiempo de revisión manual y obtener una preselección objetiva basada en la compatibilidad con la vacante

**Criterios de aceptación:**
* **Given** un CV en formato PDF, DOCX o TXT ha sido subido al sistema
* **When** el proceso de análisis automático se completa
* **Then** el sistema debe generar una puntuación de compatibilidad (0-100%) con la vacante
* **And** clasificar al candidato en categorías predefinidas (Altamente compatible, Compatible, Parcialmente compatible, No compatible)
* **And** extraer y estructurar la información clave del CV (educación, experiencia, habilidades) en la base de datos

* **Given** el sistema ha analizado varios CVs para una vacante
* **When** el reclutador accede a la sección de candidatos de dicha vacante
* **Then** debe visualizarse un listado ordenado por porcentaje de compatibilidad
* **And** poder filtrar por categorías y criterios específicos extraídos de los CVs

**Impacto en la experiencia del usuario:**
* Reduce significativamente el tiempo dedicado a la revisión manual de CVs (estimado en 70%)
* Proporciona una evaluación objetiva y consistente basada en criterios predefinidos
* La visualización clara de compatibilidad mediante porcentajes y categorías facilita la toma de decisiones

**Factores técnicos relevantes:**
* Requiere implementación del motor de IA en Python con scikit-learn/TensorFlow para procesamiento de lenguaje natural
* Necesita acceso a la API de Elasticsearch para indexación y búsqueda semántica
* Debe implementar parsers para diferentes formatos de documentos (PDF, DOCX, TXT)
* Requiere almacenamiento y procesamiento seguro de documentos en PostgreSQL

**Riesgos y limitaciones:**
* Precisión del modelo de IA: posibles falsos positivos/negativos en la clasificación
* Formato no estándar de CVs puede afectar la extracción precisa de información
* Riesgo de sesgo algorítmico si no se entrena y valida adecuadamente
* Cumplimiento con regulaciones de privacidad (GDPR, CCPA) para el procesamiento automatizado

**Prioridad MoSCoW:** Must have

---

## LTI-US-002

### Título: Comunicación en tiempo real para colaboración en reclutamiento

**Rol del usuario:** Como manager  
**Objetivo:** Quiero poder comunicarme en tiempo real con los reclutadores y dejar comentarios en perfiles de candidatos  
**Beneficio:** Para agilizar el proceso de toma de decisiones y mantener una comunicación fluida durante todo el proceso de contratación

**Criterios de aceptación:**
* **Given** un perfil de candidato está siendo visualizado
* **When** el manager añade un comentario
* **Then** el comentario debe guardarse asociado al perfil del candidato
* **And** notificar en tiempo real a todos los usuarios relevantes (reclutadores asignados a la vacante)
* **And** registrar la fecha, hora y autor del comentario

* **Given** un reclutador y un manager tienen acceso al sistema
* **When** cualquiera de ellos inicia una conversación de chat
* **Then** deben poder intercambiar mensajes en tiempo real
* **And** ver indicadores de estado (leído, escribiendo)
* **And** poder compartir enlaces directos a perfiles de candidatos

* **Given** un usuario está conectado al sistema
* **When** ocurre una acción relevante (nuevo comentario, mensaje, actualización de estado)
* **Then** debe recibir una notificación en tiempo real
* **And** poder acceder directamente al contenido relacionado desde la notificación

**Impacto en la experiencia del usuario:**
* Elimina demoras en la comunicación entre stakeholders del proceso
* Centraliza todas las conversaciones y comentarios relacionados con candidatos
* Reduce el uso de canales externos (email, mensajería) mejorando la trazabilidad

**Factores técnicos relevantes:**
* Implementación de WebSockets para comunicación bidireccional en tiempo real
* Servicio de notificaciones con Celery para procesamiento asíncrono
* Diseño de base de datos para almacenamiento eficiente de mensajes y comentarios
* Sistema de control de acceso basado en roles para proteger información sensible

**Riesgos y limitaciones:**
* Posibles problemas de rendimiento con alto volumen de usuarios concurrentes
* Compatibilidad con diferentes navegadores y clientes móviles
* Gestión adecuada de la persistencia y sincronización de mensajes
* Necesidad de implementar políticas de retención de datos para mensajes y notificaciones

**Prioridad MoSCoW:** Must have

---

## LTI-US-003

### Título: Integración con sistemas HRM/ATS existentes

**Rol del usuario:** Como administrador del sistema  
**Objetivo:** Quiero integrar LTI con nuestros sistemas HRM/ATS existentes  
**Beneficio:** Para mantener la consistencia de datos, evitar duplicidad de información y aprovechar la infraestructura tecnológica ya implementada

**Criterios de aceptación:**
* **Given** las credenciales de acceso al sistema externo han sido configuradas
* **When** se completa el proceso de integración
* **Then** el sistema debe sincronizar automáticamente la información de vacantes desde el HRM/ATS
* **And** mantener bidireccionalidad en la actualización de datos (cambios en LTI se reflejan en el sistema externo y viceversa)

* **Given** un candidato es seleccionado en LTI
* **When** avanza a una etapa específica del proceso de contratación
* **Then** esta información debe reflejarse automáticamente en el sistema HRM/ATS
* **And** cualquier documentación generada debe ser accesible desde ambos sistemas

* **Given** la configuración de integración está activa
* **When** se ejecuta el proceso de sincronización programada
* **Then** debe generarse un registro detallado de las operaciones realizadas
* **And** notificar sobre posibles inconsistencias o errores de sincronización

**Impacto en la experiencia del usuario:**
* Elimina la necesidad de duplicar entradas de datos en múltiples sistemas
* Proporciona una visión unificada del proceso de contratación
* Reduce errores humanos en la transferencia manual de información

**Factores técnicos relevantes:**
* Desarrollo de conectores API específicos para sistemas populares (Workday, SAP SuccessFactors, Oracle HCM)
* Implementación de patrones de integración robustos (API REST, webhooks, servicios web)
* Manejo de autenticación y autorización segura (OAuth 2.0, tokens JWT)
* Transformación y mapeo de datos entre diferentes estructuras y formatos (JSON, XML)

**Riesgos y limitaciones:**
* Variabilidad en la calidad y disponibilidad de APIs de sistemas externos
* Manejo de conflictos de datos en actualizaciones simultáneas
* Dependencia de la disponibilidad y rendimiento de sistemas externos
* Complejidad en la gestión de versiones de APIs externas y cambios estructurales

**Prioridad MoSCoW:** Should have

---

## LTI-US-004

### Título: Predicción de retención de candidatos mediante ML

**Rol del usuario:** Como manager  
**Objetivo:** Quiero obtener predicciones sobre la probable retención de candidatos preseleccionados  
**Beneficio:** Para tomar decisiones de contratación más informadas que reduzcan la rotación y los costos asociados a largo plazo

**Criterios de aceptación:**
* **Given** un candidato ha completado el proceso de evaluación inicial
* **When** el manager solicita el análisis predictivo
* **Then** el sistema debe generar una puntuación de probabilidad de retención (expresada en porcentaje)
* **And** identificar factores específicos que influyen positiva o negativamente en esta predicción
* **And** comparar el resultado con promedios históricos para posiciones similares

* **Given** existen datos históricos suficientes en el sistema
* **When** el modelo predictivo es entrenado
* **Then** debe alcanzar un nivel mínimo de precisión del 75% en la validación cruzada
* **And** actualizar automáticamente el modelo cuando nuevos datos significativos estén disponibles

* **Given** una predicción de retención ha sido generada
* **When** el manager visualiza el perfil del candidato
* **Then** debe mostrar recomendaciones accionables para mejorar la retención potencial
* **And** permitir simulaciones de diferentes escenarios (ajustes salariales, roles, ubicación)

**Impacto en la experiencia del usuario:**
* Proporciona información crítica para la toma de decisiones que normalmente no está disponible
* Reduce la incertidumbre asociada con nuevas contrataciones
* Permite intervenciones preventivas personalizadas para mejorar retención

**Factores técnicos relevantes:**
* Implementación de modelos de Machine Learning (regresión, árboles de decisión, redes neuronales)
* Acceso a datos históricos de empleados para entrenamiento (con anonimización adecuada)
* Integración con el módulo de análisis para visualización de resultados
* Capacidad de actualización y reentrenamiento automático del modelo

**Riesgos y limitaciones:**
* Calidad y cantidad de datos históricos puede limitar la precisión del modelo
* Consideraciones éticas sobre el uso de ciertos factores predictivos
* Riesgo de sobreajuste o sesgos en el modelado
* Percepción potencialmente negativa por parte de los candidatos si conocen el uso de predicciones automatizadas

**Prioridad MoSCoW:** Could have

---

## LTI-US-005

### Título: Dashboard analítico para métricas de contratación

**Rol del usuario:** Como reclutador y manager  
**Objetivo:** Quiero acceder a un dashboard analítico con métricas clave del proceso de contratación  
**Beneficio:** Para identificar cuellos de botella, evaluar la eficacia de las estrategias de contratación y tomar decisiones basadas en datos

**Criterios de aceptación:**
* **Given** un usuario con permisos adecuados accede al dashboard
* **When** selecciona un período de tiempo específico
* **Then** debe visualizar indicadores clave de rendimiento (tiempo medio de contratación, tasa de conversión por etapa, costo por contratación)
* **And** poder filtrar por departamento, posición, ubicación y origen del candidato

* **Given** existen datos históricos de procesos de contratación
* **When** se visualiza el dashboard
* **Then** debe mostrar tendencias temporales para cada métrica
* **And** comparativas contra objetivos predefinidos o benchmarks del sector
* **And** alertas visuales cuando los indicadores se desvían significativamente de lo esperado

* **Given** un usuario está analizando datos específicos
* **When** desea profundizar en una métrica concreta
* **Then** debe poder hacer drill-down para ver detalles granulares
* **And** exportar informes personalizados en formatos estándar (PDF, Excel, CSV)

**Impacto en la experiencia del usuario:**
* Proporciona visibilidad inmediata sobre el rendimiento del proceso de contratación
* Facilita la identificación de áreas de mejora mediante visualizaciones intuitivas
* Democratiza el acceso a datos analíticos sin necesidad de conocimientos técnicos avanzados

**Factores técnicos relevantes:**
* Implementación de visualizaciones interactivas con bibliotecas modernas (D3.js, Recharts)
* Diseño de modelo de datos optimizado para consultas analíticas
* Capa de caching para mejorar rendimiento con grandes volúmenes de datos
* Implementación de cálculos complejos para métricas derivadas y predictivas

**Riesgos y limitaciones:**
* Rendimiento con grandes volúmenes de datos históricos
* Garantía de precisión en cálculos estadísticos complejos
* Mantenimiento de la coherencia visual en diferentes dispositivos y tamaños de pantalla
* Definición adecuada de métricas que realmente aporten valor al negocio

**Prioridad MoSCoW:** Should have

---

# Backlog de Producto para el Sistema LTI

## Resumen de la Priorización

| ID | Título | MoSCoW | WSJF Score | Ranking Final |
|----|--------|--------|------------|---------------|
| LTI-BG-001 | Revisión automática de CVs con IA | Must | 5.71 | 1 |
| LTI-BG-002 | Comunicación en tiempo real para colaboración | Must | 4.00 | 2 |
| LTI-BG-005 | Dashboard analítico para métricas de contratación | Should | 3.71 | 3 |
| LTI-BG-003 | Integración con sistemas HRM/ATS existentes | Should | 3.29 | 4 |
| LTI-BG-004 | Predicción de retención de candidatos mediante ML | Could | 2.67 | 5 |

## Detalle del Backlog

### LTI-BG-001
**Título:** Revisión automática de CVs con IA  
**Descripción breve:** Sistema de análisis automatizado de CVs que extrae información relevante, clasifica candidatos y genera puntuaciones de compatibilidad con las vacantes mediante algoritmos de IA.  
**Prioridad MoSCoW:** Must  
**Puntaje WSJF:**
- Valor para el negocio: 10
- Urgencia temporal: 8
- Reducción de riesgo/oportunidad de negocio: 7
- Esfuerzo estimado: 7
- **WSJF Score: (10 + 8 + 7) / 7 = 3.57**
- **WSJF Score ajustado: 5.71** *(aplicando multiplicador de Must = 1.6)*

**Dependencias:** Ninguna, puede desarrollarse como primer componente del sistema.

---

### LTI-BG-002
**Título:** Comunicación en tiempo real para colaboración en reclutamiento  
**Descripción breve:** Funcionalidad que permite a reclutadores y managers intercambiar mensajes, comentarios en perfiles de candidatos y recibir notificaciones en tiempo real durante el proceso de contratación.  
**Prioridad MoSCoW:** Must  
**Puntaje WSJF:**
- Valor para el negocio: 8
- Urgencia temporal: 7
- Reducción de riesgo/oportunidad de negocio: 5
- Esfuerzo estimado: 5
- **WSJF Score: (8 + 7 + 5) / 5 = 4.00**
- **WSJF Score ajustado: 4.00** *(aplicando multiplicador de Must = 1.6)*

**Dependencias:** Requiere implementación básica del modelo de usuarios y perfiles de candidatos.

---

### LTI-BG-003
**Título:** Integración con sistemas HRM/ATS existentes  
**Descripción breve:** Conectores y APIs que permiten la sincronización bidireccional de datos entre LTI y sistemas externos de gestión de recursos humanos para mantener consistencia de información.  
**Prioridad MoSCoW:** Should  
**Puntaje WSJF:**
- Valor para el negocio: 7
- Urgencia temporal: 5
- Reducción de riesgo/oportunidad de negocio: 8
- Esfuerzo estimado: 7
- **WSJF Score: (7 + 5 + 8) / 7 = 2.86**
- **WSJF Score ajustado: 3.29** *(aplicando multiplicador de Should = 1.15)*

**Dependencias:** Requiere estructura de datos base del sistema y definición de modelos de datos para mapeo.

---

### LTI-BG-004
**Título:** Predicción de retención de candidatos mediante ML  
**Descripción breve:** Sistema predictivo que analiza datos históricos y perfil de candidatos para estimar probabilidad de retención y proporcionar recomendaciones para mejorarla.  
**Prioridad MoSCoW:** Could  
**Puntaje WSJF:**
- Valor para el negocio: 7
- Urgencia temporal: 4
- Reducción de riesgo/oportunidad de negocio: 5
- Esfuerzo estimado: 6
- **WSJF Score: (7 + 4 + 5) / 6 = 2.67**
- **WSJF Score ajustado: 2.67** *(aplicando multiplicador de Could = 1.0)*

**Dependencias:** Requiere datos históricos significativos, integración con sistemas externos y funcionalidad de análisis de CVs.

---

### LTI-BG-005
**Título:** Dashboard analítico para métricas de contratación  
**Descripción breve:** Panel interactivo que visualiza KPIs del proceso de contratación, permite filtrado por diversos criterios y exportación de informes personalizados.  
**Prioridad MoSCoW:** Should  
**Puntaje WSJF:**
- Valor para el negocio: 8
- Urgencia temporal: 6
- Reducción de riesgo/oportunidad de negocio: 5
- Esfuerzo estimado: 6
- **WSJF Score: (8 + 6 + 5) / 6 = 3.17**
- **WSJF Score ajustado: 3.71** *(aplicando multiplicador de Should = 1.15)*

**Dependencias:** Requiere implementación de las funcionalidades básicas y generación de datos operativos.

## Análisis de Metodologías de Priorización

### MoSCoW vs WSJF: Comparativa y Justificación

En este backlog he aplicado una estrategia híbrida que combina dos metodologías complementarias:

#### 1. MoSCoW (Must, Should, Could, Won't)
**Fortalezas en este proyecto:**
- Proporciona una categorización clara y simple para comunicar prioridades a stakeholders
- Establece un marco inicial para separar funcionalidades esenciales (MVP) de mejoras posteriores
- Facilita la planificación por fases de lanzamiento (Must = Fase 1, Should = Fase 2, etc.)

**Limitaciones observadas:**
- No captura adecuadamente la compleja interacción entre valor, urgencia y esfuerzo
- Las categorías son amplias y pueden contener elementos con diferente importancia real
- No considera factores como dependencias técnicas o riesgos específicos

#### 2. WSJF (Weighted Shortest Job First)
**Fortalezas en este proyecto:**
- Incorpora múltiples factores críticos en la decisión (valor, tiempo, riesgo, esfuerzo)
- Proporciona una puntuación numérica que permite ordenamiento preciso
- Favorece el "Cost of Delay divided by Job Size", optimizando el retorno sobre inversión

**Limitaciones observadas:**
- La puntuación puede ser subjetiva sin métricas claras para cada factor
- No captura categóricamente la esencialidad de ciertas funciones para el MVP
- Requiere experiencia del equipo para estimar correctamente cada factor

#### Enfoque híbrido implementado

Para este backlog, he implementado un enfoque híbrido que:

1. Utiliza MoSCoW como primer filtro para identificar componentes esenciales del MVP (Must)
2. Aplica WSJF para ordenar elementos dentro de cada categoría MoSCoW
3. Implementa multiplicadores basados en categoría MoSCoW (Must = 1.6, Should = 1.15, Could = 1.0) para ajustar el WSJF final y mantener la integridad de las categorías principales

**Justificación del enfoque:**
- Garantiza que los componentes esenciales del MVP (Must) se prioricen correctamente
- Proporciona granularidad dentro de cada categoría para secuenciar el desarrollo
- Balancea consideraciones estratégicas (MoSCoW) con optimización de recursos (WSJF)
- Facilita la comunicación con stakeholders no técnicos (MoSCoW) mientras proporciona guía detallada al equipo de desarrollo (WSJF)

La combinación de ambas metodologías proporciona un marco de priorización más robusto que cualquiera de las dos por separado, particularmente valioso en un producto nuevo con múltiples funcionalidades interconectadas como el sistema LTI.

---

# Tickets de Trabajo: LTI-US-001 - Revisión automática de CVs con IA

## Resumen de Tickets

| ID | Título | Responsable | Dependencias |
|----|--------|-------------|--------------|
| LTI-TK-001 | Implementar parser de documentos (CV) | Backend | Ninguna |
| LTI-TK-002 | Desarrollar modelo NLP para extracción de información | Data Science | LTI-TK-001 |
| LTI-TK-003 | Crear API de análisis y clasificación de CVs | Backend | LTI-TK-002 |
| LTI-TK-004 | Implementar sistema de indexación en Elasticsearch | Backend | LTI-TK-001 |
| LTI-TK-005 | Desarrollar interfaz de carga y gestión de CVs | Frontend | LTI-TK-003 |
| LTI-TK-006 | Crear visualización de resultados y compatibilidad | Frontend | LTI-TK-003, LTI-TK-004 |
| LTI-TK-007 | Implementar sistema de filtros y búsqueda avanzada | Full Stack | LTI-TK-004, LTI-TK-006 |
| LTI-TK-008 | Configurar almacenamiento seguro y políticas de privacidad | DevOps | LTI-TK-001 |

## Detalle de Tickets

### LTI-TK-001
**Título:** Implementar parser de documentos (CV)

**Descripción técnica:**  
Desarrollar un servicio capaz de procesar y extraer texto de documentos en formatos PDF, DOCX y TXT. El servicio debe manejar codificaciones de caracteres UTF-8 y estar optimizado para documentos de tipo currículum. Debe mantener la estructura semántica básica del documento (secciones, párrafos, listas) para facilitar el procesamiento posterior.

**Criterios de aceptación:**
* **Given** un archivo en formato PDF, DOCX o TXT
* **When** se envía al servicio de parsing
* **Then** debe extraer el contenido textual completo
* **And** identificar las principales secciones del documento (educación, experiencia, habilidades)
* **And** preservar la estructura jerárquica básica

* **Given** un documento con múltiples páginas y elementos complejos (tablas, imágenes)
* **When** se procesa mediante el parser
* **Then** debe manejar correctamente los elementos ignorando las imágenes
* **And** extraer el texto de las tablas de manera coherente

* **Given** un documento con caracteres especiales o en múltiples idiomas
* **When** se analiza con el parser
* **Then** debe preservar correctamente todos los caracteres especiales y diacríticos

**Requisitos previos:**
* Sistema de almacenamiento de archivos configurado
* Definición de modelo de datos para documentos procesados

**Responsable:** Backend

**Dependencias:**
* Ninguna (ticket inicial)

**Pregunta clave para planificación:**
¿Debemos implementar nuestro propio parser o utilizar servicios externos como Apache Tika o bibliotecas especializadas como PyPDF2, python-docx? ¿Cuáles son las implicaciones de rendimiento y precisión?

---

### LTI-TK-002
**Título:** Desarrollar modelo NLP para extracción de información

**Descripción técnica:**  
Crear un modelo de procesamiento de lenguaje natural (NLP) capaz de extraer información estructurada de los CVs procesados. El modelo debe identificar y clasificar entidades relevantes como: datos personales, historial educativo, experiencia laboral, habilidades técnicas y blandas, idiomas, certificaciones y referencias. Implementar técnicas de Named Entity Recognition (NER) combinadas con reglas específicas del dominio.

**Criterios de aceptación:**
* **Given** el texto extraído de un CV
* **When** se procesa con el modelo NLP
* **Then** debe identificar y estructurar correctamente al menos el 85% de las entidades clave
* **And** categorizar adecuadamente la información por secciones

* **Given** un conjunto de CVs con formatos y estructuras diversas
* **When** se analizan con el modelo
* **Then** debe mantener una precisión consistente independientemente del formato original

* **Given** información ambigua o poco estructurada en un CV
* **When** el modelo no puede determinar con alta confianza la categoría
* **Then** debe marcar la información como "requiere verificación" y no descartar el contenido

**Requisitos previos:**
* Disponibilidad de conjuntos de datos de entrenamiento/testing
* Definición del esquema de datos estructurados para la información extraída

**Responsable:** Data Science

**Dependencias:**
* LTI-TK-001 (Parser de documentos)

**Pregunta clave para planificación:**
¿Deberíamos utilizar modelos preentrenados como BERT, GPT o similares y hacer fine-tuning, o desarrollar modelos más específicos basados en reglas para mayor precisión en este dominio? ¿Cómo balanceamos precisión vs. tiempo de desarrollo?

---

### LTI-TK-003
**Título:** Crear API de análisis y clasificación de CVs

**Descripción técnica:**  
Desarrollar una API RESTful que integre el parser de documentos y el modelo NLP para proporcionar un servicio completo de análisis y clasificación de CVs. La API debe recibir documentos, procesarlos, extraer información estructurada y generar puntuaciones de compatibilidad con vacantes específicas basadas en requisitos predefinidos. Implementar endpoints para subida de documentos, análisis, consulta de resultados y retroalimentación para mejora continua del modelo.

**Criterios de aceptación:**
* **Given** un archivo de CV y un ID de vacante
* **When** se realiza una petición POST al endpoint /api/cv/analyze
* **Then** debe retornar un JSON con la información estructurada
* **And** incluir una puntuación de compatibilidad (0-100%)
* **And** categorizar al candidato según compatibilidad
* **And** completar el proceso en menos de 30 segundos

* **Given** múltiples solicitudes concurrentes
* **When** el sistema está bajo carga
* **Then** debe manejar al menos 10 análisis simultáneos sin degradación significativa de rendimiento

* **Given** la API ha procesado un CV
* **When** se solicita una explicación de la puntuación vía GET /api/cv/{id}/explanation
* **Then** debe proporcionar factores específicos que influyeron positiva y negativamente en la puntuación

**Requisitos previos:**
* Definición de estructura de vacantes y requisitos
* Sistema de autenticación y autorización configurado

**Responsable:** Backend

**Dependencias:**
* LTI-TK-002 (Modelo NLP)

**Pregunta clave para planificación:**
¿Deberíamos implementar un procesamiento síncrono o asíncrono para el análisis de CVs? Un enfoque asíncrono con colas de tareas podría mejorar la escalabilidad, pero añade complejidad en la experiencia de usuario.

---

### LTI-TK-004
**Título:** Implementar sistema de indexación en Elasticsearch

**Descripción técnica:**  
Configurar y optimizar un sistema de indexación basado en Elasticsearch para almacenar y consultar eficientemente la información estructurada extraída de los CVs. Diseñar esquemas de índices apropiados que faciliten búsquedas avanzadas por habilidades, experiencia, educación y otros criterios relevantes. Implementar análisis semántico para mejorar la relevancia de las búsquedas y permitir consultas en lenguaje natural.

**Criterios de aceptación:**
* **Given** la información estructurada de un CV procesado
* **When** se indexa en Elasticsearch
* **Then** debe crear un documento correctamente estructurado
* **And** aplicar analizadores de texto apropiados para optimizar búsquedas

* **Given** una búsqueda por término específico (ej: "machine learning")
* **When** se consulta el índice
* **Then** debe retornar resultados relevantes incluyendo términos semánticamente relacionados (ej: "deep learning", "neural networks")

* **Given** un conjunto de filtros complejos (experiencia > 5 años, sector financiero, conocimientos de Python)
* **When** se realiza una búsqueda con estos filtros
* **Then** debe generar resultados precisos en menos de 2 segundos
* **And** ordenar por relevancia según la consulta

**Requisitos previos:**
* Cluster de Elasticsearch configurado en el entorno apropiado
* Definición de mapping y esquemas de índices

**Responsable:** Backend

**Dependencias:**
* LTI-TK-001 (Parser de documentos)

**Pregunta clave para planificación:**
¿Qué estrategia de actualización de índices implementaremos para mantener la información sincronizada cuando se modifiquen o eliminen CVs? ¿Indexación en tiempo real o mediante procesos batch?

---

### LTI-TK-005
**Título:** Desarrollar interfaz de carga y gestión de CVs

**Descripción técnica:**  
Crear componentes frontend para la carga, visualización y gestión de CVs en el sistema. La interfaz debe permitir la carga individual y masiva de documentos, mostrar el estado del procesamiento, permitir la edición manual de información extraída incorrectamente y facilitar la organización de CVs en carpetas o colecciones. Implementar validación de formatos y tamaños de archivo en el cliente para mejorar la experiencia de usuario.

**Criterios de aceptación:**
* **Given** un usuario autenticado con permisos adecuados
* **When** accede a la sección de gestión de CVs
* **Then** debe visualizar una interfaz de carga con arrastrar y soltar (drag & drop)
* **And** ver una lista de documentos previamente cargados con su estado de procesamiento

* **Given** un usuario selecciona un archivo no compatible (ej: .exe, .zip)
* **When** intenta subirlo al sistema
* **Then** debe mostrar un mensaje de error explicativo
* **And** prevenir la carga del archivo

* **Given** un CV ha sido procesado con información extraída
* **When** el usuario revisa los detalles
* **Then** debe poder editar manualmente cualquier campo incorrecto
* **And** guardar los cambios para futuros análisis

**Requisitos previos:**
* Diseño UX/UI finalizado para esta sección
* API de gestión de documentos implementada

**Responsable:** Frontend

**Dependencias:**
* LTI-TK-003 (API de análisis y clasificación)

**Pregunta clave para planificación:**
¿Qué nivel de feedback visual proporcionaremos durante el procesamiento de documentos? Considerando que el análisis puede tomar hasta 30 segundos, ¿implementamos un sistema de notificaciones en tiempo real o un enfoque de polling?

---

### LTI-TK-006
**Título:** Crear visualización de resultados y compatibilidad

**Descripción técnica:**  
Desarrollar componentes de interfaz para visualizar los resultados del análisis de CVs y la compatibilidad con vacantes. Implementar gráficos y visualizaciones interactivas que muestren claramente los porcentajes de compatibilidad, factores influyentes, habilidades destacadas y áreas de mejora. Crear una vista comparativa para analizar múltiples candidatos simultáneamente frente a una vacante específica.

**Criterios de aceptación:**
* **Given** un CV analizado para una vacante específica
* **When** un usuario accede a la vista de resultados
* **Then** debe visualizar un dashboard con puntuación global de compatibilidad
* **And** desglose por categorías (habilidades técnicas, experiencia, educación)
* **And** recomendaciones específicas basadas en el análisis

* **Given** una lista de candidatos preseleccionados
* **When** un usuario selecciona la vista comparativa
* **Then** debe mostrar una tabla/gráfico que permita comparar puntuaciones por categorías
* **And** destacar visualmente fortalezas y debilidades de cada candidato

* **Given** un usuario interactúa con los gráficos de resultados
* **When** hace clic en un elemento específico
* **Then** debe mostrar información detallada sobre ese elemento
* **And** proporcionar contexto relevante de la vacante y el CV

**Requisitos previos:**
* Definición de estructura estándar de resultados de análisis
* Biblioteca de visualización seleccionada (D3.js, Recharts, etc.)

**Responsable:** Frontend

**Dependencias:**
* LTI-TK-003 (API de análisis y clasificación)
* LTI-TK-004 (Sistema de indexación en Elasticsearch)

**Pregunta clave para planificación:**
¿Qué nivel de personalización debemos permitir en las visualizaciones? ¿Deberíamos implementar preferencias guardadas para diferentes perfiles de usuario (reclutadores vs managers) con diferentes necesidades de información?

---

### LTI-TK-007
**Título:** Implementar sistema de filtros y búsqueda avanzada

**Descripción técnica:**  
Desarrollar un sistema integral de filtros y búsqueda avanzada que permita a los usuarios encontrar candidatos basándose en múltiples criterios. Construir una interfaz intuitiva para la creación de consultas complejas que combine filtros exactos (años de experiencia, ubicación) con búsqueda semántica (habilidades similares, perfiles compatibles). Implementar guardado de búsquedas frecuentes y alertas para nuevos candidatos que cumplan criterios específicos.

**Criterios de aceptación:**
* **Given** un usuario en la sección de búsqueda de candidatos
* **When** configura múltiples filtros (experiencia, habilidades, educación, ubicación)
* **Then** debe generarse una consulta combinada
* **And** mostrar resultados precisos ordenados por relevancia
* **And** actualizar los resultados en tiempo real al modificar filtros

* **Given** un usuario introduce términos de búsqueda en lenguaje natural
* **When** ejecuta la búsqueda
* **Then** debe interpretar correctamente la intención
* **And** traducirla a parámetros estructurados de búsqueda

* **Given** un usuario ha realizado una búsqueda compleja
* **When** selecciona "Guardar búsqueda"
* **Then** debe almacenarse con un nombre personalizable
* **And** estar disponible para ejecución rápida en futuras sesiones

**Requisitos previos:**
* Capacidades de búsqueda de Elasticsearch configuradas
* Componentes de interfaz para construcción de consultas

**Responsable:** Full Stack

**Dependencias:**
* LTI-TK-004 (Sistema de indexación en Elasticsearch)
* LTI-TK-006 (Visualización de resultados)

**Pregunta clave para planificación:**
¿Cómo balanceamos la complejidad de las opciones de búsqueda con la usabilidad? ¿Debemos implementar un sistema en dos niveles con búsqueda simple y avanzada, o un enfoque unificado con complejidad progresiva?

---

### LTI-TK-008
**Título:** Configurar almacenamiento seguro y políticas de privacidad

**Descripción técnica:**  
Implementar un sistema seguro para almacenamiento de documentos sensibles (CVs) que cumpla con regulaciones de privacidad (GDPR, CCPA). Configurar encriptación tanto en tránsito como en reposo, control de acceso granular basado en roles, políticas de retención y eliminación automática de datos, y registro de auditoría para todas las operaciones. Desarrollar procesos de anonimización para datos utilizados en entrenamientos de modelos.

**Criterios de aceptación:**
* **Given** un documento CV subido al sistema
* **When** se almacena en la base de datos o sistema de archivos
* **Then** debe estar encriptado con AES-256 o equivalente
* **And** tener controles de acceso apropiados basados en roles

* **Given** un usuario sin permisos específicos para un documento
* **When** intenta acceder al CV
* **Then** debe recibir un error de autorización
* **And** registrarse el intento en los logs de auditoría

* **Given** un período de retención configurado (ej: 1 año)
* **When** un documento alcanza ese límite sin actividad
* **Then** debe ejecutarse el proceso de anonimización o eliminación
* **And** notificar a los administradores

**Requisitos previos:**
* Definición de políticas de privacidad y seguridad
* Configuración de infraestructura de almacenamiento

**Responsable:** DevOps

**Dependencias:**
* LTI-TK-001 (Parser de documentos)

**Pregunta clave para planificación:**
¿Deberíamos implementar un sistema de consentimiento explícito para cada uso específico de los datos de CV, o un modelo de consentimiento general con opciones de exclusión (opt-out) para usos específicos?

---

# Estimación de Esfuerzo para Tickets de Trabajo

## Estimación de esfuerzo por ticket

| ID del ticket | Estimación en Puntos de Historia | Estimación en Talla de Camiseta | Justificación |
|--------------|---------------------------------|--------------------------------|--------------|
| **LTI-TK-001** | 8 | M | Implementar el parser de CVs requiere manejar distintos formatos de archivo, procesamiento de texto y preservación de estructura. No es trivial, pero hay librerías que pueden facilitarlo. |
| **LTI-TK-002** | 13 | L | Desarrollar un modelo NLP implica entrenamiento, validación y optimización, además de la integración con el parser. Puede ser complejo dependiendo de los datos disponibles. |
| **LTI-TK-003** | 8 | M | Crear una API de análisis y clasificación implica integrar parser y modelo NLP, definir endpoints y manejar concurrencia. No es tan difícil como entrenar el modelo, pero sí requiere planificación. |
| **LTI-TK-004** | 8 | M | La indexación en Elasticsearch es un reto, pero su configuración y ajuste de búsquedas semánticas pueden hacerlo más complejo. Requiere pruebas de optimización. |
| **LTI-TK-005** | 5 | S | La interfaz de carga de CVs es un componente esencial, pero tiene dependencias en la API. Técnicamente, no es un reto mayor, aunque hay que cuidar la UX. |
| **LTI-TK-006** | 5 | S | La visualización de resultados implica diseño UI/UX y gráficos interactivos, lo que requiere trabajo, pero es manejable con librerías especializadas. |
| **LTI-TK-007** | 8 | M | Implementar un sistema de filtros y búsqueda avanzada en Elasticsearch con una UI intuitiva tiene complejidad técnica y de diseño, aunque es alcanzable. |
| **LTI-TK-008** | 13 | L | Asegurar almacenamiento seguro y cumplir con GDPR/CCPA implica encriptación, políticas de acceso y retención de datos, lo que es crítico y laborioso. |

---

## Comparación de Metodologías

### **Puntos de Historia (Fibonacci)**
✅ Más granular y adecuado para equipos ágiles.  
✅ Permite medir progreso y velocidad en sprints.  
❌ Puede ser difícil estimar tickets grandes con precisión.  

### **Tallas de Camiseta (XS, S, M, L, XL)**
✅ Fácil de entender para todos los stakeholders.  
✅ Útil para planificación de alto nivel.  
❌ Menos preciso para medir el esfuerzo dentro de un sprint.  

### **Conclusión**
Para planificación inicial, **Tallas de Camiseta** es más intuitiva. Sin embargo, para gestión de sprints y seguimiento, **Puntos de Historia** permite un desglose más preciso del esfuerzo.

