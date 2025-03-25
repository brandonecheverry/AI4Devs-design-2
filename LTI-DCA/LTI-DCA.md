# LTI - Sistema de Seguimiento de Candidatos (ATS)

## Descripción del Software
LTI es un ATS innovador que busca revolucionar el proceso de reclutamiento mediante:
- Automatización inteligente de tareas repetitivas
- Colaboración en tiempo real entre reclutadores y managers
- Asistencia de IA para selección y evaluación de candidatos
- Integración con múltiples plataformas de búsqueda de talento

**Ventajas Competitivas:**
1. Mayor eficiencia en procesos de HR
2. Reducción de tiempo en ciclos de contratación
3. Mejora en la calidad de las contrataciones
4. Experiencia de usuario intuitiva y moderna

## Funciones Principales
1. Gestión centralizada de candidatos
2. Automatización de flujos de trabajo
3. Análisis predictivo de candidatos
4. Herramientas de colaboración en equipo
5. Integración con redes profesionales

## Lean Canvas
```mermaid
graph TD
    A[Problema] --> B[Solución]
    B --> C[Métrica Clave]
    C --> D[Propuesta de Valor]
    D --> E[Ventaja Injusta]
    E --> F[Canales]
    F --> G[Segmentos de Clientes]
    G --> H[Estructura de Costos]
    H --> I[Flujos de Ingresos]
```

## Casos de Uso Principales

### 1. Registro de Nuevo Candidato
```mermaid
sequenceDiagram
    Reclutador->>Sistema: Ingresa datos del candidato
    Sistema->>Base de Datos: Almacena información
    Base de Datos-->>Sistema: Confirma almacenamiento
    Sistema-->>Reclutador: Muestra confirmación
```

### 2. Evaluación Automatizada de Candidatos
```mermaid
sequenceDiagram
    Sistema->>IA: Envía perfil del candidato
    IA->>Sistema: Devuelve puntuación y análisis
    Sistema->>Reclutador: Muestra resultados
```

### 3. Colaboración en Proceso de Selección
```mermaid
sequenceDiagram
    Reclutador->>Sistema: Comparte candidato con manager
    Sistema->>Manager: Notifica nuevo candidato
    Manager->>Sistema: Proporciona feedback
    Sistema->>Reclutador: Muestra feedback
```

## Modelo de Datos
```mermaid
erDiagram
    CANDIDATO ||--o{ EXPERIENCIA : tiene
    CANDIDATO ||--o{ EDUCACION : tiene
    CANDIDATO ||--o{ HABILIDAD : tiene
    CANDIDATO {
        string nombre
        string email
        string telefono
        date fecha_nacimiento
    }
    EXPERIENCIA {
        string empresa
        string puesto
        date inicio
        date fin
    }
    EDUCACION {
        string institucion
        string titulo
        date inicio
        date fin
    }
    HABILIDAD {
        string nombre
        string nivel
    }
```

## Diseño de Alto Nivel
```mermaid
graph TD
    A[Interfaz de Usuario] --> B[Controladores]
    B --> C[Servicios]
    C --> D[Base de Datos]
    C --> E[Integraciones Externas]
    C --> F[Módulo de IA]
```

## Diagrama C4 - Componente de Gestión de Candidatos
```mermaid
C4Context
    title Diagrama de Componentes - Gestión de Candidatos
    System_Ext(Interfaz_Usuario, "Interfaz Web")
    System_Boundary(sistema, "Sistema LTI") {
        Component(Controlador, "Controlador de Candidatos")
        Component(Servicio, "Servicio de Candidatos")
        Component(BaseDatos, "Base de Datos")
        Component(ModuloIA, "Módulo de IA")
    }

    Rel(Interfaz_Usuario, Controlador, "Envía datos")
    Rel(Controlador, Servicio, "Procesa solicitud")
    Rel(Servicio, BaseDatos, "Almacena/Consulta datos")
    Rel(Servicio, ModuloIA, "Solicita análisis")
```