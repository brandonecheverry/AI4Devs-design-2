# Diseño del Sistema ATS del Futuro

## 1. Descripción del Software

### TalentSphere: El ATS del Futuro

**TalentSphere** es un sistema de seguimiento de candidatos (ATS) de próxima generación que revoluciona el proceso de contratación mediante la integración de inteligencia artificial avanzada, automatización inteligente y colaboración en tiempo real. A diferencia de los ATS tradicionales, TalentSphere no solo gestiona el flujo de trabajo de contratación, sino que actúa como un asistente inteligente que optimiza cada etapa del proceso.

### Valor Añadido y Ventajas Competitivas

- **IA Predictiva**: Algoritmos que identifican a los mejores candidatos basándose no solo en palabras clave, sino en potencial, trayectoria y ajuste cultural.
- **Automatización Contextual**: Automatiza tareas según el contexto específico de cada proceso de contratación.
- **Colaboración Omnicanal**: Permite a reclutadores y gerentes colaborar en tiempo real desde cualquier dispositivo o plataforma.
- **Análisis Predictivo**: Proporciona insights sobre tendencias del mercado laboral y predice necesidades futuras de contratación.
- **Experiencia Candidato Personalizada**: Crea recorridos personalizados para cada candidato, mejorando la imagen de marca empleadora.

### Funciones Principales

1. **Creación y Publicación Inteligente**: Asistente de IA para redactar ofertas atractivas y publicación multicanal automatizada.
2. **Evaluación Cognitiva de Candidatos**: Análisis automático de CV con comprensión contextual y evaluación de soft skills.
3. **Entrevistas Asistidas por IA**: Preparación, programación y análisis post-entrevista con insights de IA.
4. **Onboarding Integrado**: Conexión fluida con sistemas internos para incorporación sin fricciones.
5. **Analytics Avanzados**: Métricas en tiempo real sobre eficiencia de contratación y calidad de fuentes de talento.

### Lean Canvas

```mermaid
graph TD
    subgraph "Lean Canvas - TalentSphere"
    
    style A fill:#f9f,stroke:#333,stroke-width:2px,color:#000
    style B fill:#bfb,stroke:#333,stroke-width:2px,color:#000
    style C fill:#9cf,stroke:#333,stroke-width:2px,color:#000
    style D fill:#fbb,stroke:#333,stroke-width:2px,color:#000
    style E fill:#ccc,stroke:#333,stroke-width:2px,color:#000
    style F fill:#ddd,stroke:#333,stroke-width:2px,color:#000
    style G fill:#bbf,stroke:#333,stroke-width:2px,color:#000
    style H fill:#ff9,stroke:#333,stroke-width:2px,color:#000
    style I fill:#f9f,stroke:#333,stroke-width:2px,color:#000
    
    A[<b>Problema</b><br/>- Procesos de contratación lentos<br/>- Dificultad para encontrar talento adecuado<br/>- Falta de colaboración entre equipos] --- B[<b>Solución</b><br/>- IA predictiva para selección<br/>- Automatización contextual<br/>- Colaboración en tiempo real]
    
    C[<b>Propuesta de Valor</b><br/>Reducción del 60% en tiempo de contratación<br/>Mejora del 40% en calidad de contrataciones<br/>Experiencia candidato superior] --- D[<b>Ventajas</b><br/>Algoritmos de IA propietarios<br/>Integración omnicanal<br/>Análisis predictivo de mercado]
    
    E[<b>Segmentos de Cliente</b><br/>- Empresas medianas y grandes<br/>- Departamentos de RRHH<br/>- Agencias de reclutamiento] --- F[<b>Métricas Clave</b><br/>- Tiempo de contratación<br/>- Calidad de contrataciones<br/>- Satisfacción candidatos<br/>- ROI de contratación]
    
    G[<b>Canales</b><br/>- Venta directa B2B<br/>- Partnerships con consultoras RRHH<br/>- Marketplace de integraciones] 
    
    H[<b>Estructura de Costes</b><br/>- Desarrollo y mantenimiento<br/>- Infraestructura cloud<br/>- Marketing y ventas<br/>- Soporte al cliente]
    
    I[<b>Fuentes de Ingresos</b><br/>- Suscripción base + módulos<br/>- Servicios de consultoría<br/>- API para integraciones<br/>- Análisis de datos premium]
    
    end
```

## 2. Casos de Uso Principales

### Caso de Uso 1: Creación y Publicación de Ofertas de Trabajo

**Descripción**: Un reclutador necesita crear una nueva oferta de trabajo para un puesto de desarrollador senior y publicarla en múltiples canales.

**Flujo Principal**:

1. El reclutador inicia la creación de una nueva oferta
2. El sistema proporciona una plantilla inteligente basada en ofertas similares exitosas
3. La IA sugiere mejoras en la redacción para maximizar la atracción de candidatos
4. El reclutador selecciona canales de publicación (web corporativa, LinkedIn, InfoJobs, etc.)
5. El sistema optimiza automáticamente el contenido para cada canal
6. La oferta se programa para publicación y se distribuye automáticamente
7. El sistema comienza a monitorear el rendimiento de la oferta en cada canal

**Actores**: Reclutador, Gerente de contratación, Sistema IA

```mermaid
sequenceDiagram
    actor Reclutador
    actor Gerente
    participant Sistema
    participant IA
    participant Canales
    
    Reclutador->>Sistema: Iniciar creación de oferta
    Sistema->>Reclutador: Mostrar plantilla inteligente
    Reclutador->>Sistema: Completar detalles de la oferta
    Sistema->>IA: Solicitar análisis y mejoras
    IA->>Sistema: Proporcionar sugerencias de mejora
    Sistema->>Reclutador: Mostrar sugerencias
    Reclutador->>Sistema: Aceptar/modificar sugerencias
    Reclutador->>Sistema: Seleccionar canales de publicación
    Sistema->>Gerente: Solicitar aprobación
    Gerente->>Sistema: Aprobar oferta
    Sistema->>IA: Optimizar contenido por canal
    IA->>Sistema: Devolver versiones optimizadas
    Sistema->>Canales: Publicar oferta en canales seleccionados
    Canales->>Sistema: Confirmar publicación
    Sistema->>Reclutador: Notificar publicación exitosa
    Sistema->>Sistema: Iniciar monitoreo de rendimiento
```

### Caso de Uso 2: Evaluación Automática de Candidatos

**Descripción**: El sistema recibe múltiples aplicaciones para una oferta y debe evaluarlas automáticamente, clasificarlas y presentar un análisis al reclutador.

**Flujo Principal**:

1. El candidato envía su aplicación (CV, carta, perfil)
2. El sistema extrae y estructura la información relevante
3. La IA analiza la idoneidad del candidato basándose en requisitos técnicos y soft skills
4. El sistema asigna una puntuación y clasifica al candidato
5. Se generan preguntas personalizadas para una posible entrevista
6. El reclutador recibe un dashboard con candidatos clasificados
7. El reclutador revisa y toma decisiones sobre los candidatos

**Actores**: Candidato, Sistema IA, Reclutador

```mermaid
stateDiagram-v2
    [*] --> Recepción_CV
    
    Recepción_CV --> Extracción_Datos
    Extracción_Datos --> Análisis_IA
    
    state Análisis_IA {
        [*] --> Evaluación_Técnica
        Evaluación_Técnica --> Evaluación_Soft_Skills
        Evaluación_Soft_Skills --> Puntuación_Global
        Puntuación_Global --> [*]
    }
    
    Análisis_IA --> Clasificación
    
    state Clasificación {
        [*] --> Alta_Prioridad
        [*] --> Media_Prioridad
        [*] --> Baja_Prioridad
        [*] --> No_Adecuado
    }
    
    Clasificación --> Generación_Preguntas
    Generación_Preguntas --> Dashboard_Reclutador
    
    Dashboard_Reclutador --> Revisión_Humana
    
    state Revisión_Humana {
        [*] --> Aprobar_Candidato
        [*] --> Rechazar_Candidato
        [*] --> Solicitar_Más_Info
    }
    
    Revisión_Humana --> [*]
```

### Caso de Uso 3: Planificación y Gestión de Entrevistas

**Descripción**: Un reclutador necesita programar entrevistas con múltiples candidatos, involucrando a diferentes miembros del equipo y gestionando todo el proceso.

**Flujo Principal**:

1. El reclutador selecciona candidatos para entrevista
2. El sistema sugiere entrevistadores basándose en el perfil y disponibilidad
3. El sistema propone slots de tiempo óptimos
4. El reclutador confirma la planificación
5. El sistema envía invitaciones y gestiona confirmaciones
6. La IA proporciona guías de entrevista personalizadas
7. Tras la entrevista, el sistema recopila feedback estructurado
8. El sistema analiza el feedback y actualiza el perfil del candidato

**Actores**: Reclutador, Entrevistadores, Candidato, Sistema IA

```mermaid
flowchart TD
    A[Selección de candidatos] --> B[Sugerencia de entrevistadores]
    B --> C[Propuesta de slots temporales]
    C --> D{¿Planificación aceptada?}
    
    D -->|No| E[Ajustar planificación]
    E --> C
    
    D -->|Sí| F[Envío de invitaciones]
    F --> G[Gestión de confirmaciones]
    G --> H{¿Todos confirmados?}
    
    H -->|No| I[Reprogramar si necesario]
    I --> C
    
    H -->|Sí| J[Generación de guías de entrevista]
    J --> K[Realización de entrevistas]
    K --> L[Recopilación de feedback]
    L --> M[Análisis de feedback por IA]
    M --> N[Actualización de perfil candidato]
    N --> O{¿Avanza a siguiente fase?}
    
    O -->|Sí| P[Programar siguiente ronda]
    O -->|No| Q[Notificar rechazo]
    
    P --> R[Continuar proceso]
    Q --> S[Archivar candidatura]
```

## 3. Modelo de Datos

El modelo de datos de TalentSphere está diseñado para capturar todas las entidades relevantes del proceso de contratación, sus atributos y las relaciones entre ellas.

```mermaid
erDiagram
    EMPRESA ||--o{ DEPARTAMENTO : tiene
    DEPARTAMENTO ||--o{ VACANTE : solicita
    VACANTE ||--o{ OFERTA_TRABAJO : genera
    OFERTA_TRABAJO ||--o{ PUBLICACION : distribuida_en
    PUBLICACION }|--|| CANAL : publicada_en
    OFERTA_TRABAJO ||--o{ CANDIDATURA : recibe
    CANDIDATO ||--o{ CANDIDATURA : aplica
    CANDIDATURA ||--o{ EVALUACION : sometida_a
    CANDIDATURA ||--o{ ENTREVISTA : participa_en
    ENTREVISTA }o--|| TIPO_ENTREVISTA : categorizada_como
    ENTREVISTA }o--o{ USUARIO : participada_por
    USUARIO }|--|| ROL : tiene
    CANDIDATURA ||--o{ DOCUMENTO : contiene
    CANDIDATURA ||--o{ PRUEBA : realiza
    PRUEBA }|--|| TIPO_PRUEBA : categorizada_como
    CANDIDATURA ||--o{ ETAPA_PROCESO : atraviesa
    ETAPA_PROCESO }|--|| PROCESO_SELECCION : pertenece_a
    CANDIDATURA }o--o{ FEEDBACK : recibe
    FEEDBACK }o--|| USUARIO : proporcionado_por
    CANDIDATURA }o--o| CONTRATACION : resulta_en
    CONTRATACION }o--o{ SISTEMA_EMPRESA : integrada_con
    
    EMPRESA {
        uuid id PK
        string nombre
        string industria
        string tamano
        json configuracion
        timestamp creado_en
        timestamp actualizado_en
    }
    
    DEPARTAMENTO {
        uuid id PK
        uuid empresa_id FK
        string nombre
        string descripcion
        uuid manager_id FK
        timestamp creado_en
        timestamp actualizado_en
    }
    
    VACANTE {
        uuid id PK
        uuid departamento_id FK
        string titulo
        string descripcion
        int num_posiciones
        date fecha_necesidad
        string nivel_experiencia
        string ubicacion
        boolean remoto
        decimal salario_min
        decimal salario_max
        string moneda
        string estado
        uuid creador_id FK
        timestamp creado_en
        timestamp actualizado_en
    }
    
    OFERTA_TRABAJO {
        uuid id PK
        uuid vacante_id FK
        string titulo
        text descripcion
        text requisitos
        text beneficios
        date fecha_publicacion
        date fecha_cierre
        string estado
        json metadata
        uuid creador_id FK
        timestamp creado_en
        timestamp actualizado_en
    }
    
    CANAL {
        uuid id PK
        string nombre
        string tipo
        json configuracion
        boolean activo
        timestamp creado_en
        timestamp actualizado_en
    }
    
    PUBLICACION {
        uuid id PK
        uuid oferta_id FK
        uuid canal_id FK
        string url_publicacion
        string estado
        int visualizaciones
        int aplicaciones
        timestamp fecha_publicacion
        timestamp fecha_cierre
        timestamp creado_en
        timestamp actualizado_en
    }
    
    CANDIDATO {
        uuid id PK
        string nombre
        string apellidos
        string email
        string telefono
        string ubicacion
        boolean disponibilidad_inmediata
        json redes_sociales
        text notas
        decimal puntuacion_global
        timestamp creado_en
        timestamp actualizado_en
    }
    
    CANDIDATURA {
        uuid id PK
        uuid candidato_id FK
        uuid oferta_id FK
        string estado
        date fecha_aplicacion
        decimal puntuacion
        json evaluacion_ia
        uuid reclutador_id FK
        timestamp creado_en
        timestamp actualizado_en
    }
    
    DOCUMENTO {
        uuid id PK
        uuid candidatura_id FK
        string tipo
        string nombre
        string url
        string formato
        int tamano
        timestamp subido_en
        timestamp actualizado_en
    }
    
    EVALUACION {
        uuid id PK
        uuid candidatura_id FK
        string tipo
        json resultados
        decimal puntuacion
        text comentarios
        uuid evaluador_id FK
        timestamp creado_en
        timestamp actualizado_en
    }
    
    PRUEBA {
        uuid id PK
        uuid candidatura_id FK
        uuid tipo_prueba_id FK
        string estado
        decimal puntuacion
        json resultados
        timestamp fecha_envio
        timestamp fecha_completado
        timestamp creado_en
        timestamp actualizado_en
    }
    
    TIPO_PRUEBA {
        uuid id PK
        string nombre
        string descripcion
        int duracion_minutos
        json configuracion
        boolean activo
        timestamp creado_en
        timestamp actualizado_en
    }
    
    ENTREVISTA {
        uuid id PK
        uuid candidatura_id FK
        uuid tipo_entrevista_id FK
        timestamp fecha_hora
        int duracion_minutos
        string ubicacion
        string enlace_virtual
        string estado
        text notas_preparacion
        timestamp creado_en
        timestamp actualizado_en
    }
    
    TIPO_ENTREVISTA {
        uuid id PK
        string nombre
        string descripcion
        json plantilla_preguntas
        timestamp creado_en
        timestamp actualizado_en
    }
    
    USUARIO {
        uuid id PK
        uuid empresa_id FK
        uuid rol_id FK
        string nombre
        string apellidos
        string email
        string departamento
        string cargo
        boolean activo
        timestamp ultimo_acceso
        timestamp creado_en
        timestamp actualizado_en
    }
    
    ROL {
        uuid id PK
        string nombre
        json permisos
        timestamp creado_en
        timestamp actualizado_en
    }
    
    ETAPA_PROCESO {
        uuid id PK
        uuid proceso_id FK
        uuid candidatura_id FK
        string nombre
        string estado
        timestamp fecha_inicio
        timestamp fecha_fin
        uuid responsable_id FK
        timestamp creado_en
        timestamp actualizado_en
    }
    
    PROCESO_SELECCION {
        uuid id PK
        string nombre
        json etapas
        boolean activo
        uuid creador_id FK
        timestamp creado_en
        timestamp actualizado_en
    }
    
    FEEDBACK {
        uuid id PK
        uuid candidatura_id FK
        uuid usuario_id FK
        string tipo
        text contenido
        int puntuacion
        timestamp creado_en
        timestamp actualizado_en
    }
    
    CONTRATACION {
        uuid id PK
        uuid candidatura_id FK
        date fecha_oferta
        date fecha_aceptacion
        date fecha_incorporacion
        string estado
        json detalles_contrato
        uuid responsable_id FK
        timestamp creado_en
        timestamp actualizado_en
    }
    
    SISTEMA_EMPRESA {
        uuid id PK
        string nombre
        string tipo
        json configuracion_integracion
        boolean activo
        timestamp creado_en
        timestamp actualizado_en
    }
```

## 4. Diseño del Sistema a Alto Nivel

TalentSphere está diseñado como una arquitectura de microservicios orientada a eventos, con un enfoque cloud-native que permite escalabilidad, resiliencia y flexibilidad.

### Componentes Principales

1. **Frontend Layer**
   - Portal de Reclutadores/Managers
   - Portal de Candidatos
   - Aplicación Móvil
   - Widgets Embebibles

2. **API Gateway**
   - Gestión de autenticación y autorización
   - Enrutamiento de solicitudes
   - Rate limiting y seguridad

3. **Microservicios Core**
   - Servicio de Gestión de Ofertas
   - Servicio de Gestión de Candidatos
   - Servicio de Evaluación y Pruebas
   - Servicio de Entrevistas
   - Servicio de Análisis y Reportes
   - Servicio de Notificaciones
   - Servicio de Integraciones

4. **Servicios de IA**
   - Motor de Análisis de CV
   - Asistente de Redacción
   - Evaluador de Entrevistas
   - Recomendador de Candidatos
   - Predictor de Éxito de Contratación

5. **Event Bus**
   - Comunicación asíncrona entre servicios
   - Procesamiento de eventos en tiempo real

6. **Data Layer**
   - Base de datos principal (PostgreSQL)
   - Almacenamiento de documentos (MongoDB)
   - Cache distribuido (Redis)
   - Data Warehouse para analytics

7. **Infrastructure Services**
   - Servicio de Autenticación
   - Servicio de Logging
   - Servicio de Monitoreo
   - Servicio de Configuración

### Diagrama de Arquitectura

```mermaid
flowchart TB
    subgraph "A" ["Frontend Layer"]
        A1[Portal Reclutadores]
        A2[Portal Candidatos]
        A3[App Móvil]
        A4[Widgets Embebibles]
    end

    subgraph "B" ["API Layer"]
        B1[API Gateway]
    end
    
    subgraph "C" ["Microservicios Core"]
        C1[Servicio Ofertas]
        C2[Servicio Candidatos]
        C3[Servicio Evaluación]
        C4[Servicio Entrevistas]
        C5[Servicio Analytics]
        C6[Servicio Notificaciones]
        C7[Servicio Integraciones]
    end
    
    subgraph "D" ["Servicios IA"]
        D1[Análisis CV]
        D2[Asistente Redacción]
        D3[Evaluador Entrevistas]
        D4[Recomendador Candidatos]
        D5[Predictor Éxito]
    end
    
    subgraph "E" ["Event Bus"]
        E1[Kafka]
    end
    
    subgraph "F" ["Data Layer"]
        F1[(PostgreSQL)]
        F2[(MongoDB)]
        F3[(Redis)]
        F4[(Data Warehouse)]
    end
    
    subgraph "G" ["Infrastructure Services"]
        G1[Auth Service]
        G2[Logging]
        G3[Monitoring]
        G4[Configuration]
    end
    
    subgraph "H" ["External Systems"]
        H1[Job Boards]
        H2[Social Networks]
        H3[HR Systems]
        H4[Calendar Systems]
    end
    
    A --> B
    B --> C
    
    C <--> E
    
    C <--> D
    
    C --> F
    
    C --> G
    
    C <--> H
    
    style A1 fill:#f9f,stroke:#000,stroke-width:2px,color:#000
    style A2 fill:#f9f,stroke:#000,stroke-width:2px,color:#000
    style A3 fill:#f9f,stroke:#000,stroke-width:2px,color:#000
    style A4 fill:#f9f,stroke:#000,stroke-width:2px,color:#000
    
    style B1 fill:#bbf,stroke:#000,stroke-width:2px,color:#000
    
    style C1 fill:#bfb,stroke:#000,stroke-width:2px,color:#000
    style C2 fill:#bfb,stroke:#000,stroke-width:2px,color:#000
    style C3 fill:#bfb,stroke:#000,stroke-width:2px,color:#000
    style C4 fill:#bfb,stroke:#000,stroke-width:2px,color:#000
    style C5 fill:#bfb,stroke:#000,stroke-width:2px,color:#000
    style C6 fill:#bfb,stroke:#000,stroke-width:2px,color:#000
    style C7 fill:#bfb,stroke:#000,stroke-width:2px,color:#000
    
    style D1 fill:#fbb,stroke:#000,stroke-width:2px,color:#000
    style D2 fill:#fbb,stroke:#000,stroke-width:2px,color:#000
    style D3 fill:#fbb,stroke:#000,stroke-width:2px,color:#000
    style D4 fill:#fbb,stroke:#000,stroke-width:2px,color:#000
    style D5 fill:#fbb,stroke:#000,stroke-width:2px,color:#000
    
    style E1 fill:#ff9,stroke:#000,stroke-width:2px,color:#000
    
    style F1 fill:#9cf,stroke:#000,stroke-width:2px,color:#000
    style F2 fill:#9cf,stroke:#000,stroke-width:2px,color:#000
    style F3 fill:#9cf,stroke:#000,stroke-width:2px,color:#000
    style F4 fill:#9cf,stroke:#000,stroke-width:2px,color:#000
    
    style G1 fill:#ccc,stroke:#000,stroke-width:2px,color:#000
    style G2 fill:#ccc,stroke:#000,stroke-width:2px,color:#000
    style G3 fill:#ccc,stroke:#000,stroke-width:2px,color:#000
    style G4 fill:#ccc,stroke:#000,stroke-width:2px,color:#000
    
    style H1 fill:#ddd,stroke:#000,stroke-width:2px,color:#000
    style H2 fill:#ddd,stroke:#000,stroke-width:2px,color:#000
    style H3 fill:#ddd,stroke:#000,stroke-width:2px,color:#000
    style H4 fill:#ddd,stroke:#000,stroke-width:2px,color:#000
```

### Principios de Diseño

1. **Desacoplamiento**: Cada microservicio tiene su propia base de datos y lógica de negocio.
2. **Comunicación Asíncrona**: Uso de eventos para comunicación entre servicios, reduciendo dependencias.
3. **Stateless**: Los servicios no mantienen estado, facilitando la escalabilidad horizontal.
4. **API-First**: Todas las funcionalidades están expuestas a través de APIs bien documentadas.
5. **Seguridad por Diseño**: Implementación de seguridad en cada capa del sistema.
6. **Observabilidad**: Monitoreo y logging integrados en todos los componentes.
7. **Resiliencia**: Diseño para fallos parciales sin afectar todo el sistema.

## 5. Diagrama C4 - Profundización en el Servicio de Evaluación de Candidatos

El Servicio de Evaluación de Candidatos es uno de los componentes más críticos y diferenciadores de TalentSphere, ya que implementa la inteligencia artificial para analizar y evaluar candidatos de manera objetiva y eficiente.

### Explicación del Diagrama C4

El Diagrama C4 es un enfoque para visualizar la arquitectura de software que consta de cuatro niveles de detalle, cada uno proporcionando una perspectiva diferente del sistema. Vamos a explicar cada nivel y cómo se aplica en nuestro diseño de TalentSphere:

### Nivel 1: Contexto del Sistema

Este nivel muestra el sistema completo (TalentSphere) y cómo interactúa con usuarios y sistemas externos.

**Lo que muestra:**

- **Personas**: Reclutadores y candidatos que interactúan con el sistema.
- **Sistema principal**: TalentSphere como una caja negra.
- **Sistemas externos**: Job boards, redes sociales, sistemas HR y calendarios.
- **Relaciones**: Cómo estos elementos se conectan entre sí.

**Propósito**: Dar una visión general de alto nivel para entender el ecosistema completo donde opera TalentSphere.

```mermaid
C4Context
    title Diagrama de Contexto del Sistema TalentSphere
    
    Person(reclutador, "Reclutador", "Profesional de RRHH que gestiona el proceso de contratación")
    Person(candidato, "Candidato", "Persona que aplica a una oferta de trabajo")
    
    System(talentSphere, "TalentSphere ATS", "Sistema de seguimiento de candidatos con IA integrada")
    
    System_Ext(jobBoards, "Job Boards", "Portales de empleo externos")
    System_Ext(socialNetworks, "Redes Sociales", "LinkedIn, Twitter, etc.")
    System_Ext(hrSystems, "Sistemas HR", "Sistemas internos de recursos humanos")
    System_Ext(calendarSystems, "Sistemas de Calendario", "Google Calendar, Outlook, etc.")
    
    Rel(reclutador, talentSphere, "")
    Rel(candidato, talentSphere, "")
    
    Rel(talentSphere, jobBoards, "")
    Rel(talentSphere, socialNetworks, "")
    Rel(talentSphere, hrSystems, "")
    Rel(talentSphere, calendarSystems, "")
```

### Nivel 2: Contenedores

Este nivel "abre" la caja negra del sistema TalentSphere y muestra sus principales componentes o "contenedores".

**Lo que muestra:**

- **Aplicaciones frontend**: Portal web, portal de candidatos, app móvil.
- **API Gateway**: Punto de entrada para todas las comunicaciones.
- **Microservicios**: Ofertas, candidatos, evaluación, entrevistas, notificaciones.
- **Infraestructura de datos**: Bases de datos, caché, bus de eventos.

**Propósito**: Mostrar la arquitectura de alto nivel del sistema, cómo se divide en componentes y cómo estos se comunican entre sí.

```mermaid
C4Container
    title Diagrama de Contenedores de TalentSphere
    
    Person(reclutador, "Reclutador", "Profesional de RRHH que gestiona el proceso de contratación")
    Person(candidato, "Candidato", "Persona que aplica a una oferta de trabajo")
    
    System_Boundary(talentSphere, "TalentSphere ATS") {
        Container(webApp, "Portal Web", "React, Next.js", "Interfaz principal para reclutadores y managers")
        Container(candidatePortal, "Portal Candidatos", "React, Next.js", "Portal para candidatos")
        Container(mobileApp, "App Móvil", "React Native", "Aplicación móvil para reclutadores")
        
        Container(apiGateway, "API Gateway", "Node.js, Express", "Punto de entrada único para todas las APIs")
        
        Container(ofertasService, "Servicio de Ofertas", "Java, Spring Boot", "Gestión de ofertas de trabajo")
        Container(candidatosService, "Servicio de Candidatos", "Java, Spring Boot", "Gestión de candidatos")
        Container(evaluacionService, "Servicio de Evaluación", "Python, FastAPI", "Evaluación de candidatos con IA")
        Container(entrevistasService, "Servicio de Entrevistas", "Java, Spring Boot", "Gestión de entrevistas")
        Container(notificacionesService, "Servicio de Notificaciones", "Node.js", "Envío de notificaciones")
        
        Container(eventBus, "Event Bus", "Kafka", "Bus de eventos para comunicación asíncrona")
        
        ContainerDb(mainDB, "Base de Datos Principal", "PostgreSQL", "Almacena datos estructurados del sistema")
        ContainerDb(documentDB, "Base de Datos Documentos", "MongoDB", "Almacena CVs y documentos")
        ContainerDb(cacheDB, "Cache", "Redis", "Caché distribuida")
    }
    
    System_Ext(externalSystems, "Sistemas Externos", "Job Boards, RRSS, HR Systems")
    
    Rel(reclutador, webApp, "", "")
    Rel(reclutador, mobileApp, "", "")
    Rel(candidato, candidatePortal, "", "")
    
    Rel(webApp, apiGateway, "", "")
    Rel(candidatePortal, apiGateway, "", "")
    Rel(mobileApp, apiGateway, "", "")
    
    Rel(apiGateway, ofertasService, "", "")
    Rel(apiGateway, candidatosService, "", "")
    Rel(apiGateway, evaluacionService, "", "")
    Rel(apiGateway, entrevistasService, "", "")
    
    Rel(ofertasService, eventBus, "", "")
    Rel(candidatosService, eventBus, "", "")
    Rel(evaluacionService, eventBus, "", "")
    Rel(entrevistasService, eventBus, "", "")
    Rel(notificacionesService, eventBus, "", "")
    
    Rel(ofertasService, mainDB, "", "")
    Rel(candidatosService, mainDB, "", "")
    Rel(evaluacionService, mainDB, "", "")
    Rel(entrevistasService, mainDB, "", "")
    
    Rel(candidatosService, documentDB, "", "")
    Rel(evaluacionService, documentDB, "", "")
    
    Rel(apiGateway, cacheDB, "", "")
    
    Rel(ofertasService, externalSystems, "", "")
    Rel(candidatosService, externalSystems, "", "")
```

### Nivel 3: Componentes del Servicio de Evaluación

Este nivel profundiza en un contenedor específico (en nuestro caso, el Servicio de Evaluación de Candidatos) para mostrar sus componentes internos.

**Lo que muestra:**

- **Componentes internos**: API Controller, Evaluation Manager, CV Parser, etc.
- **Relaciones internas**: Cómo estos componentes trabajan juntos.
- **Conexiones externas**: Cómo este servicio se conecta con otros servicios y bases de datos.

**Propósito**: Entender la estructura interna de un servicio específico y cómo implementa su funcionalidad.

```mermaid
C4Component
    title Componentes del Servicio de Evaluación de Candidatos
    
    Container_Boundary(evaluacionService, "Servicio de Evaluación de Candidatos") {
        Component(apiController, "API Controller", "Python, FastAPI", "Expone endpoints REST para evaluación de candidatos")
        Component(evaluacionManager, "Evaluation Manager", "Python", "Coordina el proceso de evaluación de candidatos")
        Component(cvParser, "CV Parser", "Python, SpaCy", "Extrae información estructurada de CVs")
        Component(skillMatcher, "Skill Matcher", "Python, ML", "Identifica y evalúa habilidades técnicas")
        Component(softSkillAnalyzer, "Soft Skill Analyzer", "Python, NLP", "Analiza habilidades blandas del candidato")
        Component(fitPredictor, "Fit Predictor", "Python, ML", "Predice el ajuste del candidato a la posición y cultura")
        Component(testEvaluator, "Test Evaluator", "Python", "Evalúa resultados de pruebas técnicas y psicométricas")
        Component(interviewAssistant, "Interview Assistant", "Python, NLP", "Genera preguntas personalizadas para entrevistas")
        Component(eventHandler, "Event Handler", "Python", "Gestiona eventos entrantes y salientes")
        Component(dataAccess, "Data Access Layer", "Python, SQLAlchemy", "Acceso a datos persistentes")
    }
    
    System(candidatosService, "Servicio de Candidatos", "Gestiona información de candidatos")
    System(ofertasService, "Servicio de Ofertas", "Gestiona ofertas de trabajo")
    System(entrevistasService, "Servicio de Entrevistas", "Gestiona entrevistas")
    
    ContainerDb(mainDB, "Base de Datos Principal", "PostgreSQL", "Datos estructurados")
    ContainerDb(documentDB, "Base de Datos Documentos", "MongoDB", "CVs y documentos")
    Container(eventBus, "Event Bus", "Kafka", "Comunicación asíncrona")
    
    Rel(apiController, evaluacionManager, "")
    Rel(evaluacionManager, cvParser, "")
    Rel(evaluacionManager, skillMatcher, "")
    Rel(evaluacionManager, softSkillAnalyzer, "")
    Rel(evaluacionManager, fitPredictor, "")
    Rel(evaluacionManager, testEvaluator, "")
    Rel(evaluacionManager, interviewAssistant, "")
    
    Rel(evaluacionManager, dataAccess, "")
    Rel(eventHandler, evaluacionManager, "")
    
    Rel(apiController, candidatosService, "", "")
    Rel(apiController, ofertasService, "", "")
    
    Rel(eventHandler, eventBus, "", "")
    Rel(dataAccess, mainDB, "", "")
    Rel(cvParser, documentDB, "", "")
    
    Rel(evaluacionManager, entrevistasService, "", "")
```

### Nivel 4: Código del Componente CV Parser

Este nivel muestra la estructura interna de un componente específico (en nuestro caso, el CV Parser) a nivel de clases y código.

**Lo que muestra:**

- **Clases principales**: CVParserService, DocumentExtractor, EntityRecognizer, etc.
- **Relaciones entre clases**: Cómo estas clases colaboran.
- **Dependencias externas**: Bibliotecas y servicios que utiliza.

**Propósito**: Proporcionar detalles de implementación para desarrolladores que trabajarán en este componente.

```mermaid
classDiagram
    class CVParserService {
        +parse(document)
        -extractText()
        -identifyEntities()
        -classifySections()
        -extractSkills()
        -analyzeExperience()
        -analyzeEducation()
        -detectLanguages()
    }
    
    class DocumentExtractor {
        +extractFromPDF(file)
        +extractFromDOCX(file)
        +extractFromTXT(file)
        -cleanText(text)
    }
    
    class EntityRecognizer {
        +recognizeEntities(text)
        +extractContactInfo(text)
        -trainModel()
    }
    
    class SectionClassifier {
        +classifySections(text)
        +identifyHeadings(text)
        -preprocessText(text)
    }
    
    class SkillExtractor {
        +extractSkills(text)
        +matchWithDatabase(skills)
        -updateSkillConfidence()
    }
    
    class ExperienceAnalyzer {
        +analyzeExperience(sections)
        +extractJobTitles(text)
        +extractCompanies(text)
        +extractDates(text)
    }
    
    class EducationAnalyzer {
        +analyzeEducation(sections)
        +extractDegrees(text)
        +extractInstitutions(text)
        +extractGrades(text)
    }
    
    class LanguageDetector {
        +detectDocumentLanguage(text)
        +extractSpokenLanguages(text)
        +determineLanguageProficiency(text)
    }
    
    class CVDataModel {
        +personalInfo
        +contactInfo
        +skills
        +experience
        +education
        +languages
        +toJSON()
        +toDict()
    }
    
    class BibliotecasExternas {
    }
    
    class ModelosNLP {
    }
    
    class ModelosML {
    }
    
    class BaseDatosHabilidades {
    }
    
    class AlgoritmosExtraccionTemporal {
    }
    
    class BaseDatosInstituciones {
    }
    
    CVParserService --> DocumentExtractor : utiliza
    CVParserService --> EntityRecognizer : utiliza
    CVParserService --> SectionClassifier : utiliza
    CVParserService --> SkillExtractor : utiliza
    CVParserService --> ExperienceAnalyzer : utiliza
    CVParserService --> EducationAnalyzer : utiliza
    CVParserService --> LanguageDetector : utiliza
    CVParserService --> CVDataModel : crea y popula
    
    DocumentExtractor --> BibliotecasExternas : utiliza
    EntityRecognizer --> ModelosNLP : utiliza
    SectionClassifier --> ModelosML : utiliza
    SkillExtractor --> BaseDatosHabilidades : consulta
    ExperienceAnalyzer --> AlgoritmosExtraccionTemporal : implementa
    EducationAnalyzer --> BaseDatosInstituciones : consulta
```

## Características Clave del Servicio de Evaluación

1. **Procesamiento Inteligente de CV**
   - Extracción de información estructurada de documentos en múltiples formatos
   - Identificación de habilidades técnicas y experiencia relevante
   - Análisis semántico para comprender el contexto y relevancia

2. **Evaluación Holística**
   - Análisis de habilidades técnicas mediante matching con requisitos
   - Evaluación de soft skills a través de análisis de lenguaje
   - Predicción de ajuste cultural y potencial de rendimiento

3. **Asistencia para Entrevistas**
   - Generación de preguntas personalizadas basadas en el perfil
   - Identificación de áreas a profundizar durante la entrevista
   - Sugerencias para validar habilidades específicas

4. **Análisis Predictivo**
   - Predicción de éxito del candidato basado en datos históricos
   - Identificación de patrones de éxito en contrataciones previas
   - Recomendaciones para mejorar el proceso de selección

5. **Integración con el Ecosistema**
   - Comunicación bidireccional con otros servicios mediante eventos
   - Actualización en tiempo real del perfil del candidato
   - Alimentación de datos para el sistema de analytics

Este servicio representa el corazón de la inteligencia artificial de TalentSphere, proporcionando evaluaciones objetivas y consistentes que ayudan a los reclutadores a tomar mejores decisiones de contratación, reduciendo sesgos y mejorando la eficiencia del proceso.
