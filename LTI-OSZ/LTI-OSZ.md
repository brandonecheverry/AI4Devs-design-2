# Descripción breve del software LTI ATS

LTI ATS es una plataforma inteligente de seguimiento de candidatos diseñada específicamente para empresas tecnológicas y de servicios profesionales. A diferencia de los ATS tradicionales, nuestro sistema se centra en la evaluación cualitativa de habilidades técnicas y competencias blandas, permitiendo una selección más precisa y eficiente de talentos.

## Valor añadido y ventajas competitivas

- **Evaluación técnica integrada**: Incorpora herramientas de evaluación de código y pruebas técnicas dentro del mismo flujo de trabajo.

- **IA para matching de habilidades**: Utiliza inteligencia artificial para analizar CVs y emparejarlos con requisitos específicos de proyectos.

- **Personalización por roles**: Adapta automáticamente los flujos de selección según el perfil técnico requerido.

- **Interfaz intuitiva**: Diseñada para ser utilizada tanto por reclutadores como por líderes técnicos sin formación especial.

- **Escalabilidad**: Capacidad para gestionar desde pequeñas startups hasta grandes corporaciones con miles de procesos simultáneos.

## Funciones principales

1. **Gestión de requisiciones**: Permite crear y gestionar solicitudes de personal con especificaciones técnicas detalladas.

2. **Evaluación técnica**: Integra pruebas de habilidades específicas y revisión de código.

3. **Workflow personalizable**: Adapta los flujos de trabajo según el tipo de posición.

4. **Analytics avanzados**: Proporciona métricas detalladas sobre eficiencia del proceso y calidad de contrataciones.

5. **Experiencia del candidato**: Portal personalizado para candidatos con retroalimentación automática.

[Lean Canvas del LTI ATS](./lti-lean-canvas.mermaid)

## Casos de uso principales

### Caso de uso 1: Gestión del proceso de reclutamiento

**Actores principales**: Reclutador, Gerente de contratación, Candidato

**Descripción**: Este caso de uso abarca el proceso completo desde la creación de una vacante hasta la contratación del candidato, incluyendo todas las etapas de evaluación y comunicación.

[Diagrama de caso de uso: Gestión del proceso de reclutamiento](./recruitment-process-diagram.mermaid)

### Caso de uso 2: Evaluación técnica de candidatos

**Actores principales**: Candidato, Evaluador técnico, Sistema LTI ATS

**Descripción**: Este caso de uso detalla el proceso de evaluación técnica integrada, incluyendo pruebas automáticas, revisión de código y evaluación de habilidades específicas.

[Diagrama de caso de uso: Evaluación técnica de candidatos](./technical-evaluation-diagram.mermaid)

### Caso de uso 3: Análisis y reportes de reclutamiento

**Actores principales**: Gerente de RRHH, Analista de reclutamiento, Sistema LTI ATS

**Descripción**: Este caso de uso abarca la generación y análisis de métricas e informes relacionados con el proceso de reclutamiento para la toma de decisiones estratégicas.

[Diagrama de caso de uso: Análisis y reportes de reclutamiento](./analytics-diagram.mermaid)

## Modelo de datos

[Modelo de datos del LTI ATS](./data-model-diagram.mermaid)

## Diseño del sistema a alto nivel

El sistema LTI ATS está diseñado como una aplicación web moderna, utilizando una arquitectura de microservicios para garantizar escalabilidad, mantenibilidad y flexibilidad. A continuación, se describen los componentes principales:

### Componentes principales

1. **Frontend**:

- Aplicación SPA (Single Page Application) desarrollada con React

- Interfaces específicas para distintos roles (reclutadores, gerentes, candidatos)

- Diseño responsive para acceso desde cualquier dispositivo

2. **Backend API**:

- Servicios RESTful implementados con Node.js/Express

- Autenticación y autorización mediante JWT

- Documentación OpenAPI/Swagger para facilitar integraciones

3. **Microservicios especializados**:

- Servicio de gestión de candidatos

- Servicio de evaluación técnica

- Servicio de workflow y procesos

- Servicio de comunicaciones

- Servicio de análisis y reportes

4. **Base de datos**:

- PostgreSQL para datos relacionales principales

- MongoDB para almacenamiento de documentos (CVs, evaluaciones)

- Redis para caché y manejo de sesiones

  5.**Integración y mensajería**:

- Apache Kafka para comunicación entre microservicios

- API Gateway para gestión de acceso

- Webhooks para integraciones con sistemas externos

6. **Infraestructura**:

- Contenedores Docker para todos los servicios

- Orquestación con Kubernetes

- Despliegue en AWS con múltiples zonas de disponibilidad

7. **Inteligencia Artificial**:

- Motor de matching de habilidades basado en NLP
- Sistema de recomendación de candidatos
- Análisis predictivo de éxito en la contratación

[Arquitectura del sistema LTI ATS](./system-architecture.mermaid)

## Diagrama C4 del sistema

### Nivel 1: Diagrama de Contexto

[Diagrama C4 Nivel 1: Contexto del sistema LTI ATS](./c4-context.mermaid)

### Nivel 2: Diagrama de Contenedores

[Diagrama C4 Nivel 2: Contenedores del sistema LTI ATS](./c4-containers.mermaid)

### Nivel 3: Diagrama de Componentes

[Diagrama C4 Nivel 3: Componentes del sistema LTI ATS](./c4-components.mermaid)

### Nivel 4: Diagrama de Código (Modelo de Datos)

[Diagrama C4 Nivel 4: Código/Modelo de datos del sistema LTI ATS](./c4-code.mermaid)

Este diseño completo del sistema LTI ATS proporciona una visión integral de la arquitectura, funcionalidades y modelo de datos. Las principales ventajas de este diseño son:

1. **Arquitectura escalable**: El enfoque de microservicios permite escalar componentes individuales según la demanda.

2. **Especialización en perfiles técnicos**: A diferencia de otros ATS genéricos, este sistema está optimizado para la evaluación de habilidades técnicas.

3. **Flexibilidad de workflows**: Permite configurar procesos de reclutamiento totalmente personalizados según el tipo de posición.

4. **Enfoque en experiencia del candidato**: Portal dedicado con retroalimentación automática y comunicación efectiva.

5. **Inteligencia integrada**: Utiliza IA para matching de perfiles y evaluación preliminar de candidatos.

6. **Analytics avanzados**: Permite analizar la efectividad del proceso de reclutamiento con métricas detalladas.

7. **Experiencia multirol**: Interfaces optimizadas para diferentes stakeholders en el proceso de contratación.

Esta primera versión sienta las bases para un sistema robusto que puede evolucionar con nuevas funcionalidades a medida que se recopile feedback de los usuarios y se identifiquen nuevas necesidades en el mercado.
