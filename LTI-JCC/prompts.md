# Prompts Utilizados en LTI-JCC

## 1. Generación de User Stories
**Prompt para PRD:**
```
Basado en este proyecto: https://github.com/jchara/AI4Devs-design-1  y como exporto en producto con conocimiento en RRHH creame el PRD correspondiente
```

**Prompt para User Stories:**
```
Actúa ahora como Product Manager y Business Analyst y generar las User Stories correspondiente al PRD que se tiene como contexto.
```

## 2. Estructura de Documentación
**Prompt para Formato de User Stories:**
```
Toma esta estructura para las historias de usuario como contexto, y ajusta las historias con el formato indicado:

Título de la Historia de Usuario:
Como [rol del usuario],
quiero [acción que desea realizar el usuario],
para que [beneficio que espera obtener el usuario].
Criterios de Aceptación:

Criterio 1: "Dado que [contexto inicial], cuando [acción realizada], entonces [resultado esperado]"
Criterio 2: "Dado que [contexto inicial], cuando [acción realizada], entonces [resultado esperado]"
Criterio 3: "Dado que [contexto inicial], cuando [acción realizada], entonces [resultado esperado]"

Notas adicionales:
[Cualquier consideración adicional que pueda ayudar al desarrollo de la historia]
Tareas:

[Lista de tareas y subtareas necesarias para completar esta historia]

Historias de Usuario Relacionadas:

[Relaciones con otras historias de usuario]
```

## 3. Priorización del Product Backlog
**Prompt para Priorización:**
```
Basado en las user stories existentes, por favor:
1. Evalúa cada historia considerando:
   - Valor de negocio (Alto/Medio/Bajo)
   - Complejidad técnica (Fibonacci)
   - Dependencias (Críticas/Moderadas/Bajas)
   - Riesgos asociados

2. Organiza las historias en releases lógicos:
   - MVP y funcionalidades core
   - Features de alto valor
   - Mejoras y optimizaciones

3. Para cada historia, incluye:
   - Cálculo de prioridad (Valor/Complejidad)
   - Justificación de la priorización
   - Riesgos identificados
   - Métricas de éxito

4. Identifica:
   - Dependencias críticas entre historias
   - Riesgos técnicos y de negocio
   - Métricas de éxito del proyecto
   - Notas de implementación

5. Estructura la salida en:
   - Métricas de priorización
   - MVP y releases planificados
   - Dependencias críticas
   - Riesgos identificados
   - Métricas de éxito
   - Notas de implementación
```

## 4. Estimación y Planificación de Esfuerzo
**Prompt para Estimación y Planificación:**
```
Basado en las historias de usuario priorizadas, por favor:

1. Define la metodología de estimación:
   - Story Points usando serie Fibonacci (1,2,3,5,8,13)
   - Velocidad de referencia por sprint
   - Duración de sprint
   - Criterios de estimación con equivalencias en días de trabajo

2. Para cada historia, especifica:
   - Story Points asignados
   - Justificación de la estimación
   - Riesgos técnicos asociados
   - Dependencias con otras historias

3. Organiza las historias en sprints:
   - Mantener velocidad constante
   - Respetar dependencias críticas
   - Incluir historias de deuda técnica
   - Considerar balance de complejidad

4. Estructura la salida en:
   - Metodología de estimación
   - Criterios de estimación
   - Estimaciones por historia
   - Planificación de sprints
   - Notas de implementación
```

## Prompt de Priorización, Estimación y Depuración de Historias


**Contexto:**
Como Product Owner / Scrum Master / Tech Lead, evalúa y prioriza las historias de usuario, estima su esfuerzo y asegura la coherencia y unicidad de las historias en el backlog.

**Elementos Requeridos:**
1. **Evaluación de Historias**
   - Valor de negocio (Alto/Medio/Bajo)
   - Complejidad técnica (Serie Fibonacci: 1,2,3,5,8,13)
   - Dependencias (Críticas/Moderadas/Bajas)
   - Riesgos asociados

2. **Estimación de Esfuerzo**
   - Story Points basados en complejidad
   - Velocidad de referencia (20 puntos/sprint)
   - Duración de sprint (2 semanas)
   - Consideración de dependencias

3. **Depuración de Historias**
   - Identificación de duplicados
   - Consolidación de funcionalidades similares
   - Reorganización por epics
   - Mantenimiento de formato consistente

**Criterios de Evaluación:**
1. **Priorización**
   - Valor para el usuario
   - Alineación estratégica
   - Dependencias técnicas
   - Riesgos asociados
   - Recursos disponibles
   - Time-to-market

2. **Estimación**
   - Complejidad de implementación
   - Riesgos técnicos
   - Dependencias
   - Experiencia del equipo
   - Incertidumbre

3. **Depuración**
   - Unicidad de funcionalidad
   - Coherencia con epics
   - Formato completo
   - Trazabilidad