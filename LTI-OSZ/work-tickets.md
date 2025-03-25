# Tickets de Trabajo - US-001

## User Story Seleccionada

**US-001**: Como reclutador, quiero crear requisiciones de personal con especificaciones técnicas detalladas para iniciar procesos de contratación efectivos.

## Tickets de Trabajo

### TICKET-001: Diseño de modelo de datos para requisiciones

**Descripción**: Diseñar e implementar el modelo de datos para las requisiciones de personal, incluyendo todas las entidades relacionadas y sus relaciones.

**Tareas Técnicas**:

1. Definir esquema de la entidad `Requisition` con todos sus campos
2. Definir esquema para `TechnicalSkill` y su relación con niveles de competencia
3. Diseñar la relación entre `Requisition` y `User` (roles: creador, aprobador, evaluadores)
4. Implementar la relación entre `Requisition` y `RecruitmentStage`
5. Crear esquema para `RequisitionTemplate`
6. Implementar migraciones de base de datos en PostgreSQL
7. Crear modelos ORM correspondientes
8. Escribir tests unitarios para los modelos

**Criterios de Aceptación**:

- El modelo debe soportar todos los campos mencionados en los criterios de la US-001
- Las relaciones entre entidades deben estar correctamente definidas
- Las migraciones deben ejecutarse sin errores
- Los tests unitarios deben pasar

**Dependencias**: Ninguna

**Estimación**: 8 puntos de historia

---

### TICKET-002: API backend para gestión de requisiciones

**Descripción**: Implementar los endpoints RESTful necesarios para la creación, lectura, actualización y eliminación (CRUD) de requisiciones de personal.

**Tareas Técnicas**:

1. Crear controlador `RequisitionController` en el backend
2. Implementar endpoint POST `/api/requisitions` para crear requisiciones
3. Implementar endpoint GET `/api/requisitions/:id` para obtener una requisición específica
4. Implementar endpoint GET `/api/requisitions` con filtros para listar requisiciones
5. Implementar endpoint PUT `/api/requisitions/:id` para actualizar requisiciones
6. Implementar endpoint DELETE `/api/requisitions/:id` para eliminar requisiciones
7. Implementar validaciones de datos de entrada
8. Implementar manejo de permisos según rol de usuario
9. Documentar API con OpenAPI/Swagger
10. Escribir tests de integración para cada endpoint

**Criterios de Aceptación**:

- Todos los endpoints deben funcionar correctamente según la documentación
- Las validaciones deben rechazar datos inválidos con mensajes de error apropiados
- Solo usuarios con permisos adecuados pueden crear/editar requisiciones
- Los tests de integración deben pasar

**Dependencias**: TICKET-001

**Estimación**: 13 puntos de historia

---

### TICKET-003: Componente de frontend para formulario de requisición

**Descripción**: Implementar el formulario de creación/edición de requisiciones en el frontend con React.

**Tareas Técnicas**:

1. Crear componente `RequisitionForm` con todos los campos necesarios
2. Implementar subcomponente `TechnicalSkillSelector` para añadir habilidades técnicas
3. Implementar subcomponente `RecruitmentStageEditor` para personalizar etapas
4. Implementar subcomponente `UserSelector` para asignar evaluadores
5. Integrar librería de formularios (Formik/React Hook Form) con validaciones
6. Implementar lógica para guardar como plantilla
7. Conectar con endpoints de API mediante servicios
8. Implementar manejo de errores y feedback visual
9. Añadir tests unitarios para componentes
10. Implementar tests end-to-end con Cypress

**Criterios de Aceptación**:

- El formulario debe permitir especificar todos los campos requeridos
- La validación debe funcionar correctamente, mostrando mensajes de error apropiados
- La interacción debe ser intuitiva, especialmente al añadir múltiples habilidades técnicas
- El guardado como plantilla debe funcionar correctamente
- Los tests deben pasar

**Dependencias**: TICKET-002

**Estimación**: 13 puntos de historia

---

### TICKET-004: Implementación de funcionalidad de plantillas de requisición

**Descripción**: Desarrollar la funcionalidad para guardar y reutilizar plantillas de requisiciones.

**Tareas Técnicas**:

1. Extender el modelo de datos para soportar plantillas
2. Implementar endpoint POST `/api/requisition-templates` para guardar plantillas
3. Implementar endpoint GET `/api/requisition-templates` para listar plantillas
4. Implementar endpoint GET `/api/requisition-templates/:id` para cargar una plantilla
5. Implementar componente `TemplateSelector` en el frontend
6. Implementar lógica para cargar datos de plantilla en el formulario
7. Añadir tests unitarios para la funcionalidad
8. Añadir tests de integración para los endpoints

**Criterios de Aceptación**:

- Los usuarios pueden guardar requisiciones como plantillas
- Los usuarios pueden ver una lista de plantillas disponibles
- Los usuarios pueden cargar una plantilla para crear una nueva requisición
- Todos los campos de la plantilla deben cargarse correctamente
- Los tests deben pasar

**Dependencias**: TICKET-003

**Estimación**: 8 puntos de historia

---

### TICKET-005: Integración con sistema de notificaciones

**Descripción**: Integrar la creación de requisiciones con el sistema de notificaciones para alertar a los aprobadores.

**Tareas Técnicas**:

1. Implementar evento `RequisitionCreated` en el backend
2. Configurar manejador de eventos para enviar notificaciones
3. Integrar con servicio de email para notificaciones por correo
4. Implementar notificaciones en tiempo real con WebSockets
5. Añadir preferencias de notificación en el perfil de usuario
6. Implementar tests unitarios para el sistema de notificaciones
7. Implementar tests de integración para el flujo completo

**Criterios de Aceptación**:

- Los aprobadores reciben notificaciones cuando se crea una requisición
- Las notificaciones incluyen un enlace directo para revisar la requisición
- Los usuarios pueden configurar sus preferencias de notificación
- Los tests deben pasar

**Dependencias**: TICKET-002

**Estimación**: 5 puntos de historia

---

### TICKET-006: Implementación de permisos y flujo de aprobación

**Descripción**: Implementar el sistema de permisos y el flujo de aprobación para las requisiciones.

**Tareas Técnicas**:

1. Diseñar e implementar el modelo de permisos para requisiciones
2. Implementar estado `pendingApproval` para requisiciones
3. Crear endpoint PUT `/api/requisitions/:id/approve` para aprobar requisiciones
4. Crear endpoint PUT `/api/requisitions/:id/reject` para rechazar requisiciones
5. Implementar componente `ApprovalActions` en el frontend
6. Implementar vista de requisiciones pendientes de aprobación
7. Añadir registro de historial de cambios con `RequisitionHistory`
8. Implementar tests unitarios para el flujo de aprobación
9. Implementar tests de integración para el flujo completo

**Criterios de Aceptación**:

- Solo los usuarios con rol de aprobador pueden aprobar/rechazar requisiciones
- El historial de cambios registra todas las acciones realizadas
- La interfaz muestra claramente el estado de aprobación actual
- Los tests deben pasar

**Dependencias**: TICKET-002, TICKET-003

**Estimación**: 8 puntos de historia

## Criterios de Aceptación Globales para US-001

La implementación completa de la US-001 debe cumplir con los siguientes criterios:

1. Los reclutadores pueden crear requisiciones de personal con todos los campos necesarios
2. Las requisiciones incluyen especificaciones técnicas detalladas con niveles de competencia
3. Es posible establecer rangos salariales y beneficios
4. Se pueden asignar evaluadores técnicos al proceso
5. Es posible definir etapas personalizadas del proceso de selección
6. Las requisiciones pueden guardarse como plantillas para uso futuro
7. El flujo de aprobación funciona correctamente
8. Las notificaciones se envían a los aprobadores
9. La interfaz es intuitiva y fácil de usar
