# Historias de usuario del VMP de ATS

## Título de la Historia de Usuario: Crear Vacantes

Como reclutador,  
quiero crear vacantes de empleo,  
para que pueda publicarlas y atraer candidatos calificados.  

### Criterios de Aceptación:
- El reclutador puede acceder a un formulario para crear vacantes.
- El formulario valida todos los campos obligatorios (título, descripción, habilidades, ubicación, salario).
- Al guardar, la vacante queda disponible en la lista pública de vacantes.  

### Notas Adicionales:
- Las vacantes creadas deberán poder publicarse en plataformas externas en futuras versiones.  

### Historias de Usuario Relacionadas:
- Visualizar vacantes (candidatos)
- Postularse a vacantes (candidatos)
- Ver postulaciones recibidas (reclutadores)  


---

## Título de la Historia de Usuario: Explorar Vacantes

Como candidato,  
quiero explorar las vacantes disponibles,  
para que pueda encontrar oportunidades que coincidan con mi perfil.  

### Criterios de Aceptación:
- Los candidatos pueden ver una lista de vacantes activas.
- El sistema debe permitir filtrar por palabras clave, ubicación y tipo de empleo.
- Cada vacante mostrará un resumen y permitirá ver los detalles completos.  

### Notas Adicionales:
- La experiencia debe ser responsiva y fácil de usar en dispositivos móviles.  

### Historias de Usuario Relacionadas:
- Postularse a vacantes (candidatos)
- Crear vacantes (reclutadores)  


---

## Título de la Historia de Usuario: Postularse a Vacantes

Como candidato,  
quiero postularme a una vacante,  
para que pueda ser considerado para un puesto de trabajo.  

### Criterios de Aceptación:
- El candidato puede postularse desde la página de detalle de la vacante.
- Se permite adjuntar el CV y agregar un mensaje opcional.
- El sistema confirma el envío exitoso y notifica al reclutador.  

### Notas Adicionales:
- A futuro, el sistema podría integrar un asistente de IA que sugiera mejoras en el CV.  

### Historias de Usuario Relacionadas:
- Explorar vacantes (candidatos)
- Ver postulaciones recibidas (reclutadores)  


---

## Título de la Historia de Usuario: Visualizar Postulaciones

Como reclutador,  
quiero ver las postulaciones recibidas en mis vacantes,  
para que pueda evaluar y preseleccionar a los candidatos más adecuados.  

### Criterios de Aceptación:
- El reclutador puede acceder a una lista de postulaciones por vacante.
- Cada postulación muestra los datos del candidato, su CV y la fecha de postulación.
- El reclutador puede marcar postulaciones como preseleccionadas o rechazadas.  

### Notas Adicionales:
- En el futuro, un módulo de IA podría resaltar las postulaciones más relevantes según análisis de compatibilidad.  

### Historias de Usuario Relacionadas:
- Crear vacantes (reclutadores)
- Postularse a vacantes (candidatos)


---

## Título de la Historia de Usuario: Evaluar Postulaciones

Como reclutador,  
quiero evaluar las postulaciones recibidas,  
para que pueda identificar a los candidatos más aptos y agilizar el proceso de selección.  

### Criterios de Aceptación:
- El reclutador puede ver detalles completos de cada candidato postulado.
- Puede agregar comentarios y calificaciones a cada postulación.
- Puede filtrar postulaciones por estado (nueva, preseleccionada, rechazada).  

### Notas Adicionales:
- La calificación podrá ser utilizada más adelante para generar reportes o estadísticas.  

### Historias de Usuario Relacionadas:
- Visualizar postulaciones (reclutadores)
- Agendar entrevistas (reclutadores)  


---

## Título de la Historia de Usuario: Agendar Entrevistas

Como reclutador,  
quiero agendar entrevistas con los candidatos preseleccionados,  
para que pueda organizar el proceso de entrevistas de manera estructurada.  

### Criterios de Aceptación:
- El reclutador puede seleccionar un candidato y agendar fecha, hora y modalidad (presencial/virtual).
- El sistema envía notificaciones automáticas al candidato y al reclutador.
- Las entrevistas agendadas quedan visibles en un calendario o lista de eventos.  

### Notas Adicionales:
- En futuras versiones, se podrá integrar con plataformas como Google Calendar o Zoom.  

### Historias de Usuario Relacionadas:
- Evaluar postulaciones (reclutadores)
- Postularse a vacantes (candidatos)  


---

## Título de la Historia de Usuario: Generar Recomendaciones de Candidatos con IA

Como reclutador,  
quiero recibir recomendaciones automáticas de candidatos,  
para que pueda enfocarme en perfiles más compatibles con la vacante.  

### Criterios de Aceptación:
- Al recibir postulaciones, el sistema sugiere candidatos prioritarios basados en análisis de CV.
- El reclutador ve un puntaje o indicador de compatibilidad generado por IA.
- La recomendación se basa en habilidades, experiencia y datos de la vacante.  

### Notas Adicionales:
- El algoritmo de IA debe poder ajustarse o entrenarse con base en retroalimentación futura.  

### Historias de Usuario Relacionadas:
- Evaluar postulaciones (reclutadores)
- Crear vacantes (reclutadores)

---

# Estimación del Product Backlog

## 1. Historia de Usuario: Crear Vacantes

- **Valor para el usuario**: 5/5 (Es la base para que el sistema funcione; sin vacantes, no hay postulaciones)
- **Complejidad**: 3/5 (Formularios, validaciones, conexión con base de datos y posibilidad de publicación externa)
- **Urgencia**: 5/5 (Funcionalidad crítica para el MVP)

---

## 2. Historia de Usuario: Visualizar Vacantes

- **Valor para el usuario**: 4/5 (Permite a los candidatos conocer las oportunidades disponibles)
- **Complejidad**: 2/5 (Listado y filtro de vacantes)
- **Urgencia**: 5/5 (Necesaria desde el primer día de operación)

---

## 3. Historia de Usuario: Postularse a Vacantes

- **Valor para el usuario**: 5/5 (Es la acción principal del candidato dentro del sistema)
- **Complejidad**: 3/5 (Formulario, carga de CV, validaciones y asociación con la vacante)
- **Urgencia**: 5/5 (Indispensable para empezar a recibir postulaciones)

---

## 4. Historia de Usuario: Evaluar Postulaciones

- **Valor para el usuario**: 5/5 (Permite al reclutador avanzar en el proceso de selección)
- **Complejidad**: 4/5 (Gestión de estados, calificación y comentarios)
- **Urgencia**: 4/5 (Puede implementarse después de la publicación y postulación, pero debe estar listo para el uso temprano)

---

## 5. Historia de Usuario: Agendar Entrevistas

- **Valor para el usuario**: 4/5 (Organiza el flujo de selección)
- **Complejidad**: 3/5 (Calendario, notificaciones, integración básica)
- **Urgencia**: 3/5 (Puede ser entregada en una segunda iteración)

---

## 6. Historia de Usuario: Generar Recomendaciones de Candidatos con IA

- **Valor para el usuario**: 5/5 (Diferenciador clave frente a competidores)
- **Complejidad**: 5/5 (Desarrollo y entrenamiento de modelos, integración con backend)
- **Urgencia**: 4/5 (Clave para la ventaja competitiva, pero puede liberarse en la segunda etapa del MVP si es necesario)

---
| Historia de Usuario                                 | Valor para el Usuario | Complejidad | Urgencia | Estimación (Puntos) |
|-----------------------------------------------------|-----------------------|-------------|----------|---------------------|
| **Crear Vacantes**                                  | 5/5                   | 3/5         | 5/5      | 8                   |
| **Visualizar Vacantes**                             | 4/5                   | 2/5         | 5/5      | 5                   |
| **Postularse a Vacantes**                           | 5/5                   | 3/5         | 5/5      | 6                   |
| **Evaluar Postulaciones**                           | 5/5                   | 4/5         | 4/5      | 8                   |
| **Agendar Entrevistas**                             | 4/5                   | 3/5         | 3/5      | 5                   |
| **Generar Recomendaciones de Candidatos con IA**    | 5/5                   | 5/5         | 4/5      | 13                  |

---

## Tickets de trabajo para la historia de usuario "Crear Vacantes"

## Título: Implementación de Creación de Vacantes

**Descripción**: Crear una funcionalidad que permita a los reclutadores agregar nuevas vacantes al sistema, incluyendo campos como el título del puesto, descripción, requisitos, ubicación, y fecha de publicación. La vacante debe ser guardada en la base de datos y estar disponible para los candidatos.

**Criterios de Aceptación**:
- Los reclutadores pueden ingresar un título, descripción, requisitos, ubicación, y fecha de publicación.
- La vacante se guarda en la base de datos y es visible para los candidatos en el listado de vacantes.
- La vacante debe ser publicada de inmediato o programada para su publicación futura.
  
**Prioridad**: Alta

**Estimación**: 8 puntos de historia

**Asignado a**: Equipo de Backend y Frontend

**Etiquetas**: Backend, Frontend, MVP, Sprint 1

**Comentarios**: Verificar que los campos sean correctamente validados antes de guardar la vacante en la base de datos.

**Enlaces**: [Documento de Especificación de Vacantes]

---

## Título: Implementación de Visualización de Vacantes

**Descripción**: Desarrollar la vista en el frontend que permita a los candidatos explorar y filtrar las vacantes publicadas. Los candidatos podrán ver el título, la descripción, requisitos y ubicación de cada vacante.

**Criterios de Aceptación**:
- Los candidatos pueden ver una lista de vacantes publicadas.
- El candidato puede filtrar las vacantes por categoría o ubicación.
- Cada vacante debe tener un enlace para postularse.

**Prioridad**: Alta

**Estimación**: 5 puntos de historia

**Asignado a**: Equipo de Frontend

**Etiquetas**: Frontend, MVP, Sprint 1

**Comentarios**: Considerar un diseño responsivo para la visualización en dispositivos móviles.

**Enlaces**: [Documento de Especificación de Visualización de Vacantes]

---

## Título: Implementación de Postulación a Vacantes

**Descripción**: Crear una funcionalidad que permita a los candidatos postularse a las vacantes publicadas, incluyendo el envío del CV y una carta de presentación opcional.

**Criterios de Aceptación**:
- Los candidatos pueden seleccionar una vacante y postularse.
- Los candidatos deben cargar su CV y opcionalmente una carta de presentación.
- Las postulaciones deben ser registradas en el sistema y visibles para el reclutador.

**Prioridad**: Alta

**Estimación**: 6 puntos de historia

**Asignado a**: Equipo de Backend y Frontend

**Etiquetas**: Backend, Frontend, MVP, Sprint 1

**Comentarios**: Asegurarse de validar el formato del CV (por ejemplo, PDF o Word).

**Enlaces**: [Documento de Especificación de Postulaciones]
