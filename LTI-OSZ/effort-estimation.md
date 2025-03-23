# Estimación de Esfuerzo - US-001

## Metodología de Estimación

Para la estimación de esfuerzo utilizamos la secuencia de Fibonacci (1, 2, 3, 5, 8, 13, 21) para los puntos de historia, siguiendo prácticas estándar de Scrum. Esta escala no lineal refleja la incertidumbre inherente a tareas más grandes.

### Significado de los puntos de historia:

| Puntos | Complejidad  | Estimación aproximada (para un desarrollador senior) |
| ------ | ------------ | ---------------------------------------------------- |
| 1      | Trivial      | Menos de medio día                                   |
| 2      | Simple       | Medio día a 1 día                                    |
| 3      | Pequeña      | 1-2 días                                             |
| 5      | Media        | 2-3 días                                             |
| 8      | Compleja     | 3-5 días                                             |
| 13     | Muy compleja | 1-2 semanas                                          |
| 21     | Extrema      | Más de 2 semanas (considerar dividir)                |

## Estimaciones por Ticket

### TICKET-001: Diseño de modelo de datos para requisiciones

- **Estimación**: 8 puntos
- **Justificación**: Requiere un análisis detallado para diseñar un modelo de datos que soporte todos los campos y relaciones necesarios. Incluye implementación de migraciones y tests, lo que aumenta su complejidad.
- **Riesgos**: Cambios en los requisitos podrían requerir migraciones adicionales.
- **Desarrollador recomendado**: Backend developer con experiencia en diseño de bases de datos.

### TICKET-002: API backend para gestión de requisiciones

- **Estimación**: 13 puntos
- **Justificación**: Implementación completa de CRUD con validaciones, permisos, tests y documentación. La cantidad de endpoints y la complejidad de las validaciones hacen que sea una tarea extensa.
- **Riesgos**: Manejo de permisos puede ser más complejo de lo previsto.
- **Desarrollador recomendado**: Backend developer con experiencia en APIs RESTful.

### TICKET-003: Componente de frontend para formulario de requisición

- **Estimación**: 13 puntos
- **Justificación**: Incluye múltiples subcomponentes, integración con formularios, validaciones y tests. La interfaz para añadir habilidades técnicas y etapas personalizadas añade complejidad.
- **Riesgos**: La UX podría requerir iteraciones adicionales para lograr la intuitividad deseada.
- **Desarrollador recomendado**: Frontend developer con experiencia en React y manejo de formularios complejos.

### TICKET-004: Implementación de funcionalidad de plantillas de requisición

- **Estimación**: 8 puntos
- **Justificación**: Requiere cambios tanto en backend como frontend, pero se basa en componentes ya desarrollados. La lógica para cargar datos de plantilla añade complejidad.
- **Riesgos**: Asegurar que todos los campos complejos se guarden y carguen correctamente.
- **Desarrollador recomendado**: Desarrollador full-stack.

### TICKET-005: Integración con sistema de notificaciones

- **Estimación**: 5 puntos
- **Justificación**: La implementación de eventos y su manejo es relativamente sencilla, pero la integración con servicios de email y WebSockets añade complejidad.
- **Riesgos**: Configuración de servicios externos podría llevar más tiempo del esperado.
- **Desarrollador recomendado**: Backend developer con experiencia en sistemas de eventos.

### TICKET-006: Implementación de permisos y flujo de aprobación

- **Estimación**: 8 puntos
- **Justificación**: Implementar sistema de permisos y flujo de aprobación requiere cambios significativos en backend y frontend, incluyendo historial de cambios.
- **Riesgos**: La lógica de permisos puede ser más compleja de lo anticipado.
- **Desarrollador recomendado**: Desarrollador con experiencia en sistemas de autorización.

## Resumen de Estimaciones

| Ticket     | Descripción                    | Puntos |
| ---------- | ------------------------------ | ------ |
| TICKET-001 | Diseño de modelo de datos      | 8      |
| TICKET-002 | API backend para requisiciones | 13     |
| TICKET-003 | Componente de frontend         | 13     |
| TICKET-004 | Funcionalidad de plantillas    | 8      |
| TICKET-005 | Integración con notificaciones | 5      |
| TICKET-006 | Permisos y flujo de aprobación | 8      |
| **TOTAL**  |                                | **55** |

## Capacidad del Equipo y Planificación

Asumiendo un equipo de desarrollo con la siguiente composición y capacidad:

- 2 desarrolladores backend: ~15 puntos por sprint por desarrollador
- 2 desarrolladores frontend: ~15 puntos por sprint por desarrollador
- 1 desarrollador full-stack: ~12 puntos por sprint

**Capacidad total del equipo**: ~72 puntos por sprint

Basándonos en estas estimaciones, la implementación completa de la US-001 (55 puntos) podría completarse en un sprint de 2 semanas, con algo de capacidad restante para resolver problemas inesperados o iniciar otra user story de menor tamaño.

## Notas sobre la Estimación

1. **Paralelización**: TICKET-001 y TICKET-003 podrían iniciarse en paralelo, con algunas dependencias que resolver durante la implementación.

2. **Factor de corrección**: Las estimaciones incluyen tiempo para code reviews, resolución de feedback y corrección de bugs.

3. **Incertidumbre**: Tickets con alta estimación (13 puntos) deberían ser monitoreados cuidadosamente y posiblemente divididos si se descubre mayor complejidad durante el desarrollo.

4. **Velocidad del equipo**: Esta es una estimación inicial. Las estimaciones deberían ajustarse basándose en la velocidad real del equipo después de varios sprints.

5. **Deuda técnica**: No se ha incluido tiempo específico para refactoring o pago de deuda técnica, que podría ser necesario en iteraciones futuras.
