# LTI - Historias de Usuario y Tickets

## Épica 1: Gestión de Vacantes

### US-1.1: Creación de Vacante por Reclutador

**Como** Reclutador,  
**quiero** poder crear una nueva vacante en el sistema con todos los detalles necesarios,  
**para** publicarla y comenzar a recibir aplicaciones de candidatos.

**Criterios de Aceptación:**
1. **Dado que** soy un reclutador autenticado, **cuando** accedo a la sección de vacantes, **entonces** veo un botón para "Crear Nueva Vacante".
2. **Dado que** estoy en el formulario de creación de vacante, **cuando** completo todos los campos requeridos (título, descripción, requisitos, etc.), **entonces** puedo guardar la vacante.
3. **Dado que** he completado el formulario, **cuando** hago clic en "Publicar Vacante", **entonces** la vacante queda visible para los candidatos.
4. **Dado que** he creado una vacante, **cuando** regreso al listado de vacantes, **entonces** puedo ver la nueva vacante en la lista.

**Notas Adicionales:**
- Los campos obligatorios incluyen: título, descripción, requisitos y estado.
- Se debe considerar la opción de guardar como borrador o publicar directamente.

**Historias de Usuario Relacionadas:**
- Edición de Vacante
- Visualización de Vacantes por Candidato

#### Tickets

**Ticket 1.1: Diseño UI del formulario de creación de vacante**
- **Título:** Diseñar interfaz para formulario de creación de vacante
- **Descripción:** Crear los mockups y diseños UI detallados para el formulario de creación de vacantes, incluyendo todos los campos, botones y estados visuales.
- **Criterios de aceptación:** 
  - Diseños completos de todos los campos y elementos del formulario
  - Incluir estados de formulario: inicial, con errores, éxito
  - Diseños responsivos para diferentes tamaños de pantalla
- **Prioridad:** Alta (Valor: Alto, Urgencia: Alta)
- **Etiquetas:** UI/UX, Diseño
- **Estimación:** 4 puntos

**Ticket 1.2: Implementación frontend del formulario de vacante**
- **Título:** Implementar componentes frontend del formulario de vacante
- **Descripción:** Desarrollar los componentes del formulario según los diseños aprobados, sin incluir aún la lógica de validación o interacción con el backend.
- **Criterios de aceptación:**
  - Componentes implementados según diseño
  - Estructura HTML/CSS correcta y accesible
  - Formulario navegable y con campos correctamente etiquetados
- **Prioridad:** Alta
- **Etiquetas:** Frontend, UI
- **Estimación:** 4 puntos

**Ticket 1.3: Implementación de validaciones frontend**
- **Título:** Implementar validaciones del formulario de vacantes
- **Descripción:** Añadir validaciones en tiempo real para todos los campos del formulario.
- **Criterios de aceptación:**
  - Validación de campos obligatorios
  - Validaciones específicas por tipo de campo
  - Mensajes de error claros y accesibles
  - Prevención de envío de formulario con errores
- **Prioridad:** Alta
- **Etiquetas:** Frontend, Validación
- **Estimación:** 4 puntos

**Ticket 1.4: Implementación de la funcionalidad de guardar como borrador**
- **Título:** Implementar funcionalidad "Guardar como borrador"
- **Descripción:** Permitir que los reclutadores guarden vacantes incompletas como borradores para completarlas posteriormente.
- **Criterios de aceptación:**
  - Botón "Guardar como borrador" funcional
  - Validaciones mínimas para borradores
  - Feedback visual al usuario sobre el guardado exitoso
- **Prioridad:** Media
- **Etiquetas:** Frontend, Backend
- **Estimación:** 4 puntos

**Ticket 1.5: Implementación de la funcionalidad de publicar vacante**
- **Título:** Implementar funcionalidad "Publicar vacante"
- **Descripción:** Permitir la publicación directa de vacantes completas, haciendo que estén visibles para los candidatos.
- **Criterios de aceptación:**
  - Botón "Publicar" funcional
  - Validaciones completas antes de permitir la publicación
  - Feedback visual sobre publicación exitosa
- **Prioridad:** Alta
- **Etiquetas:** Frontend, Backend
- **Estimación:** 4 puntos

**Ticket 1.6: Creación de modelo de datos para vacantes**
- **Título:** Implementar modelo de datos para vacantes
- **Descripción:** Definir y crear el esquema de base de datos para almacenar la información de vacantes.
- **Criterios de aceptación:**
  - Esquema de BD implementado según el modelo de datos del PRD
  - Incluir campos para estado (borrador, publicado, cerrado)
  - Incluir relaciones con usuario creador (reclutador)
- **Prioridad:** Alta
- **Etiquetas:** Backend, Base de datos
- **Estimación:** 2 puntos

**Ticket 1.7: Implementación de endpoint para guardar vacante**
- **Título:** Crear API para guardar vacante (borrador o publicada)
- **Descripción:** Desarrollar el endpoint que recibe los datos del formulario y almacena la vacante en la base de datos.
- **Criterios de aceptación:**
  - Endpoint funcional que recibe los datos del formulario
  - Validaciones del lado del servidor
  - Almacenamiento correcto en la base de datos
  - Manejo apropiado de errores y respuestas
- **Prioridad:** Alta
- **Etiquetas:** Backend, API
- **Estimación:** 4 puntos

**Ticket 1.8: Integración frontend-backend para creación de vacantes**
- **Título:** Integrar frontend con API de creación de vacantes
- **Descripción:** Conectar el formulario frontend con los endpuntos del backend para el guardado y publicación de vacantes.
- **Criterios de aceptación:**
  - Comunicación exitosa entre frontend y backend
  - Manejo de respuestas y errores de la API en el frontend
  - Flujo completo funcionando correctamente
- **Prioridad:** Alta
- **Etiquetas:** Frontend, Backend, Integración
- **Estimación:** 4 puntos

### US-1.2: Visualización y Filtrado de Vacantes por Reclutador

**Como** Reclutador,  
**quiero** poder ver un listado de todas las vacantes y filtrarlas por diferentes criterios,  
**para** gestionar eficientemente el estado de mis vacantes activas.

**Criterios de Aceptación:**
1. **Dado que** soy un reclutador autenticado, **cuando** accedo a la sección de vacantes, **entonces** veo un listado de todas las vacantes creadas.
2. **Dado que** estoy en el listado de vacantes, **cuando** aplico filtros (por estado, fecha, etc.), **entonces** el listado se actualiza mostrando solo las vacantes que cumplen con los criterios.
3. **Dado que** estoy viendo el listado de vacantes, **cuando** selecciono una vacante, **entonces** puedo ver todos sus detalles.

**Notas Adicionales:**
- Los filtros iniciales incluirán: estado (activa, cerrada), fecha de creación, y título.
- Se debe considerar paginación para el listado.

**Historias de Usuario Relacionadas:**
- Creación de Vacante
- Edición de Vacante

#### Tickets

**Ticket 2.1: Diseño UI de la lista de vacantes**
- **Título:** Diseñar interfaz para listado de vacantes
- **Descripción:** Crear los mockups y diseños detallados para la vista de listado de vacantes, incluyendo la presentación de cada vacante y los controles de filtrado.
- **Criterios de aceptación:** 
  - Diseño de cards/filas para mostrar información resumida de cada vacante
  - Diseño de controles de filtrado y ordenamiento
  - Diseño de paginación
  - Diseños responsivos para diferentes dispositivos
- **Prioridad:** Alta
- **Etiquetas:** UI/UX, Diseño
- **Estimación:** 4 puntos

**Ticket 2.2: Implementación del componente de lista de vacantes**
- **Título:** Implementar componente de listado de vacantes
- **Descripción:** Desarrollar el componente que muestra la lista de vacantes según el diseño aprobado, sin incluir aún la funcionalidad de filtrado.
- **Criterios de aceptación:**
  - Listado que muestra correctamente las vacantes según el diseño
  - Paginación implementada
  - Visualización adecuada en diferentes tamaños de pantalla
- **Prioridad:** Alta
- **Etiquetas:** Frontend
- **Estimación:** 4 puntos

**Ticket 2.3: Implementación de controles de filtrado**
- **Título:** Implementar controles para filtrado de vacantes
- **Descripción:** Desarrollar los componentes UI para filtrar vacantes por estado, fecha y título.
- **Criterios de aceptación:**
  - Controles de filtro implementados según diseño
  - Comportamiento responsive de los filtros
  - Interacción visual clara para filtros activos
- **Prioridad:** Media
- **Etiquetas:** Frontend, UI
- **Estimación:** 2 puntos

**Ticket 2.4: Implementación de la lógica de filtrado en frontend**
- **Título:** Implementar lógica de filtrado en frontend
- **Descripción:** Desarrollar la lógica que aplica los filtros seleccionados y actualiza la visualización de vacantes.
- **Criterios de aceptación:**
  - Filtrado funcionando correctamente
  - UI se actualiza correctamente al aplicar/quitar filtros
  - Combinación de múltiples filtros funciona adecuadamente
- **Prioridad:** Media
- **Etiquetas:** Frontend, Lógica
- **Estimación:** 2 puntos

**Ticket 2.5: Creación de endpoint para obtener listado de vacantes**
- **Título:** Crear API para listar vacantes
- **Descripción:** Desarrollar el endpoint que retorna la lista de vacantes con soporte para paginación.
- **Criterios de aceptación:**
  - Endpoint funcional que retorna listado de vacantes
  - Soporte para paginación
  - Respuestas optimizadas (no devolver información innecesaria)
- **Prioridad:** Alta
- **Etiquetas:** Backend, API
- **Estimación:** 4 puntos

**Ticket 2.6: Implementación de filtrado en backend**
- **Título:** Implementar filtrado de vacantes en backend
- **Descripción:** Añadir soporte para filtrado en el endpoint de listado de vacantes.
- **Criterios de aceptación:**
  - Endpoint acepta parámetros de filtrado
  - Implementación de consultas eficientes a la base de datos
  - Filtros funcionando correctamente para estado, fecha y título
- **Prioridad:** Media
- **Etiquetas:** Backend, Base de datos
- **Estimación:** 2 puntos

**Ticket 2.7: Integración frontend-backend para listado filtrado**
- **Título:** Integrar frontend con API de listado y filtrado
- **Descripción:** Conectar el componente de listado con los endpuntos de backend para obtener y filtrar vacantes.
- **Criterios de aceptación:**
  - Comunicación exitosa entre frontend y backend
  - Actualización correcta de la UI basada en respuestas del backend
  - Manejo adecuado de estados de carga y errores
- **Prioridad:** Alta
- **Etiquetas:** Frontend, Backend, Integración
- **Estimación:** 4 puntos

**Ticket 2.8: Implementación de vista detallada de vacante**
- **Título:** Implementar vista detallada de vacante
- **Descripción:** Desarrollar la interfaz y lógica para mostrar todos los detalles de una vacante seleccionada.
- **Criterios de aceptación:**
  - Vista detallada implementada según diseño
  - Navegación entre listado y detalle funciona correctamente
  - Toda la información de la vacante se muestra apropiadamente
- **Prioridad:** Media
- **Etiquetas:** Frontend, UI
- **Estimación:** 4 puntos

### US-1.3: Edición y Cierre de Vacante por Reclutador

**Como** Reclutador,  
**quiero** poder editar los detalles de una vacante existente o cambiar su estado a cerrada,  
**para** mantener la información actualizada o finalizar el proceso de reclutamiento cuando sea necesario.

**Criterios de Aceptación:**
1. **Dado que** estoy viendo los detalles de una vacante, **cuando** selecciono la opción "Editar", **entonces** puedo modificar los campos como título, descripción y requisitos.
2. **Dado que** estoy editando una vacante, **cuando** guardo los cambios, **entonces** la información se actualiza en el sistema.
3. **Dado que** he modificado una vacante, **cuando** guardo los cambios, **entonces** el sistema registra automáticamente quién realizó los cambios, qué campos fueron modificados, los valores anteriores y nuevos, y la fecha y hora de la modificación.
4. **Dado que** estoy viendo los detalles de una vacante, **cuando** selecciono la opción "Ver Historial de Cambios", **entonces** puedo ver un registro detallado de todas las modificaciones realizadas a la vacante.
5. **Dado que** estoy viendo los detalles de una vacante, **cuando** selecciono la opción "Cerrar Vacante", **entonces** se me pide confirmar esta acción.
6. **Dado que** confirmo el cierre de una vacante, **cuando** se completa la acción, **entonces** la vacante se marca como cerrada y deja de ser visible para nuevos candidatos.
7. **Dado que** he cerrado una vacante, **cuando** se completa la acción, **entonces** el sistema registra esta acción en el historial de la vacante, incluyendo quién la cerró y cuándo.

**Notas Adicionales:**
- El historial de modificaciones debe ser inmutable y completo, registrando cada cambio realizado.
- Este historial debe estar disponible para auditoría por usuarios con permisos adecuados.
- Una vacante cerrada puede ser reabierta si es necesario, registrando también esta acción en el historial.

**Historias de Usuario Relacionadas:**
- Creación de Vacante
- Visualización y Filtrado de Vacantes

#### Tickets

**Ticket 3.1: Diseño UI para edición de vacantes**
- **Título:** Diseñar interfaz para edición de vacantes
- **Descripción:** Crear los mockups y diseños para la pantalla de edición de vacantes, asegurando que sea intuitiva y mantenga consistencia con la interfaz de creación.
- **Criterios de aceptación:** 
  - Diseño de formulario de edición con valores precargados
  - Visualización clara del estado actual de la vacante
  - Diseño de controles para guardar cambios o cancelar
- **Prioridad:** Alta
- **Etiquetas:** UI/UX, Diseño
- **Estimación:** 2 puntos

**Ticket 3.2: Diseño UI de historial de modificaciones**
- **Título:** Diseñar interfaz para historial de modificaciones
- **Descripción:** Crear los diseños para la visualización del historial de cambios de una vacante, mostrando claramente quién, qué y cuándo se realizaron modificaciones.
- **Criterios de aceptación:** 
  - Diseño de línea de tiempo de modificaciones
  - Visualización clara de campos modificados (antes/después)
  - Diseño de filtros para el historial (por fecha, usuario, etc.)
- **Prioridad:** Alta
- **Etiquetas:** UI/UX, Diseño
- **Estimación:** 4 puntos

**Ticket 3.3: Implementación de formulario de edición**
- **Título:** Implementar componente para edición de vacantes
- **Descripción:** Desarrollar el formulario de edición con valores precargados de la vacante existente.
- **Criterios de aceptación:**
  - Formulario que carga correctamente los datos existentes
  - Validaciones implementadas como en el formulario de creación
  - Botones de guardar y cancelar funcionando correctamente
- **Prioridad:** Alta
- **Etiquetas:** Frontend, UI
- **Estimación:** 2 puntos

**Ticket 3.4: Implementación de funcionalidad de cierre de vacante**
- **Título:** Implementar funcionalidad para cerrar vacantes
- **Descripción:** Desarrollar la UI y lógica para cerrar una vacante existente.
- **Criterios de aceptación:**
  - Opción de cierre visible en la interfaz
  - Diálogo de confirmación implementado
  - Feedback visual al usuario cuando la vacante se cierra
- **Prioridad:** Media
- **Etiquetas:** Frontend, UI
- **Estimación:** 2 puntos

**Ticket 3.5: Diseño e implementación del modelo de datos para historial**
- **Título:** Implementar modelo de datos para historial de modificaciones
- **Descripción:** Diseñar y crear el esquema de base de datos para almacenar detalladamente el historial de cambios de cada vacante.
- **Criterios de aceptación:**
  - Esquema que capture usuario, fecha/hora, campos modificados, valores antiguos y nuevos
  - Relaciones correctas con tabla de vacantes
  - Soporte para consultas eficientes de historial
- **Prioridad:** Alta
- **Etiquetas:** Backend, Base de datos
- **Estimación:** 4 puntos

**Ticket 3.6: Implementación de captura de cambios en backend**
- **Título:** Implementar sistema de captura y registro de modificaciones
- **Descripción:** Desarrollar la lógica de backend que detecta cambios en las vacantes y los registra en el historial.
- **Criterios de aceptación:**
  - Captura precisa de cambios en cada campo
  - Registro automático de metadata (usuario, fecha/hora)
  - Manejo de transacciones para asegurar consistencia
- **Prioridad:** Alta
- **Etiquetas:** Backend, Lógica
- **Estimación:** 4 puntos

**Ticket 3.7: Creación de endpoint para actualizar vacante**
- **Título:** Crear API para actualización de vacantes
- **Descripción:** Desarrollar el endpoint que recibe los datos modificados y actualiza la vacante, incluyendo la lógica de registro histórico.
- **Criterios de aceptación:**
  - Endpoint funcional para actualización de datos
  - Integración con sistema de historial
  - Validaciones del lado del servidor
  - Manejo apropiado de errores
- **Prioridad:** Alta
- **Etiquetas:** Backend, API
- **Estimación:** 4 puntos

**Ticket 3.8: Creación de endpoint para cerrar vacante**
- **Título:** Crear API para cerrar vacantes
- **Descripción:** Desarrollar el endpoint específico para cambiar el estado de una vacante a "cerrada".
- **Criterios de aceptación:**
  - Endpoint funcional para cierre de vacante
  - Registro en historial del evento de cierre
  - Manejo adecuado de permisos y validaciones
- **Prioridad:** Media
- **Etiquetas:** Backend, API
- **Estimación:** 4 puntos

**Ticket 3.9: Creación de endpoint para consultar historial**
- **Título:** Crear API para consultar historial de modificaciones
- **Descripción:** Desarrollar el endpoint que retorna el historial completo de cambios de una vacante.
- **Criterios de aceptación:**
  - Endpoint que retorna historial detallado
  - Soporte para filtrado y paginación
  - Optimización para volúmenes grandes de datos
- **Prioridad:** Alta
- **Etiquetas:** Backend, API
- **Estimación:** 4 puntos

**Ticket 3.10: Implementación de visualización de historial**
- **Título:** Implementar componente de visualización de historial
- **Descripción:** Desarrollar la interfaz que muestra el historial de modificaciones según el diseño aprobado.
- **Criterios de aceptación:**
  - Componente que visualiza claramente la línea de tiempo de cambios
  - Representación clara de valores antiguos y nuevos
  - Filtros de historial funcionando correctamente
- **Prioridad:** Alta
- **Etiquetas:** Frontend, UI
- **Estimación:** 4 puntos

**Ticket 3.11: Integración frontend-backend para edición y historial**
- **Título:** Integrar frontend con APIs de edición y historial
- **Descripción:** Conectar los componentes frontend con los endpuntos correspondientes.
- **Criterios de aceptación:**
  - Comunicación exitosa para edición, cierre y consulta de historial
  - Manejo apropiado de errores y estados de carga
  - Flujo completo funcionando correctamente
- **Prioridad:** Alta
- **Etiquetas:** Frontend, Backend, Integración
- **Estimación:** 4 puntos

## Épica 2: Gestión de Candidatos con Análisis Musical e IA

### US-2.1: Creación de Perfil de Candidato

**Como** Candidato,  
**quiero** poder crear mi perfil completo en el sistema mediante un proceso guiado (wizard),  
**para** tener toda mi información almacenada y poder aplicar fácilmente a múltiples vacantes.

**Criterios de Aceptación:**
1. **Dado que** soy un nuevo candidato, **cuando** accedo al portal, **entonces** puedo seleccionar la opción "Crear Perfil".
2. **Dado que** inicio el proceso de creación de perfil, **cuando** se me presenta el wizard, **entonces** puedo completar secuencialmente las secciones: información personal, experiencia, educación y CV.
3. **Dado que** he completado la información básica, **cuando** llego al paso de "Perfil Musical", **entonces** puedo elegir entre conectar mi cuenta de Spotify o ingresar manualmente mis 5 canciones favoritas.
4. **Dado que** he completado todos los pasos obligatorios, **cuando** finalizo el wizard, **entonces** recibo confirmación de que mi perfil ha sido creado exitosamente.
5. **Dado que** mi perfil está completo, **cuando** navego por las vacantes disponibles, **entonces** puedo aplicar sin tener que ingresar nuevamente toda mi información.

**Notas Adicionales:**
- El proceso debe permitir guardar el progreso y continuar más tarde.
- Debe ser claro qué pasos son obligatorios y cuáles opcionales (como el perfil musical).
- El perfil debe ser editable después de la creación inicial.

**Historias de Usuario Relacionadas:**
- Conexión de Perfil de Spotify
- Aplicación a Vacante

#### Tickets

**Ticket 4.1: Diseño UI del proceso de creación de perfil (wizard)**
- **Título:** Diseñar interfaz para wizard de creación de perfil
- **Descripción:** Crear los mockups y diseños para el proceso guiado de creación de perfil, incluyendo todos los pasos y transiciones entre ellos.
- **Criterios de aceptación:** 
  - Diseño de todos los pasos del wizard (información personal, experiencia, educación, CV, preferencias musicales)
  - Indicadores de progreso claros
  - Diseño responsivo para diferentes tamaños de pantalla
  - Visualización clara de campos obligatorios vs opcionales
- **Prioridad:** Alta
- **Etiquetas:** UI/UX, Diseño
- **Estimación:** 8 puntos

**Ticket 4.2: Implementación frontend del paso 1 - Información personal**
- **Título:** Implementar paso de información personal del wizard
- **Descripción:** Desarrollar el primer paso del wizard donde el candidato ingresa su información básica.
- **Criterios de aceptación:**
  - Formulario con campos para nombre, apellido, email, teléfono, etc.
  - Validaciones implementadas
  - Navegación al siguiente paso
- **Prioridad:** Alta
- **Etiquetas:** Frontend, UI
- **Estimación:** 4 puntos

**Ticket 4.3: Implementación frontend del paso 2 - Experiencia**
- **Título:** Implementar paso de experiencia laboral del wizard
- **Descripción:** Desarrollar el segundo paso del wizard donde el candidato ingresa su experiencia laboral.
- **Criterios de aceptación:**
  - Formulario para añadir múltiples experiencias laborales
  - Funcionalidad para añadir/eliminar experiencias
  - Validaciones implementadas
  - Navegación entre pasos
- **Prioridad:** Alta
- **Etiquetas:** Frontend, UI
- **Estimación:** 4 puntos

**Ticket 4.4: Implementación frontend del paso 3 - Educación**
- **Título:** Implementar paso de educación del wizard
- **Descripción:** Desarrollar el tercer paso del wizard donde el candidato ingresa su formación académica.
- **Criterios de aceptación:**
  - Formulario para añadir múltiples títulos o formaciones
  - Funcionalidad para añadir/eliminar formaciones
  - Validaciones implementadas
  - Navegación entre pasos
- **Prioridad:** Alta
- **Etiquetas:** Frontend, UI
- **Estimación:** 2 puntos

**Ticket 4.5: Implementación frontend del paso 4 - CV**
- **Título:** Implementar paso de carga de CV del wizard
- **Descripción:** Desarrollar el paso del wizard donde el candidato sube su CV.
- **Criterios de aceptación:**
  - Componente para subir archivo PDF
  - Validación de formato y tamaño de archivo
  - Previsualización básica del documento subido
  - Navegación entre pasos
- **Prioridad:** Alta
- **Etiquetas:** Frontend, UI
- **Estimación:** 4 puntos

**Ticket 4.6: Implementación frontend del paso 5 - Perfil Musical**
- **Título:** Implementar paso de perfil musical del wizard
- **Descripción:** Desarrollar el paso donde el candidato conecta con Spotify o ingresa manualmente sus canciones favoritas, dejando claro que aunque es opcional, proporciona ventajas en el proceso.
- **Criterios de aceptación:**
  - Opciones para conectar Spotify o entrada manual
  - Formulario para ingresar 5 canciones favoritas (modo manual)
  - Botón para conectar con Spotify (modo integración)
  - Mensaje informativo claro que explique que, aunque es opcional, no conectar Spotify podría resultar en un análisis cultural menos preciso y potencialmente poner al candidato en desventaja frente a otros aplicantes
  - Visualización del estado de conexión (conectado/no conectado)
  - Navegación entre pasos
- **Prioridad:** Alta
- **Etiquetas:** Frontend, UI
- **Estimación:** 8 puntos

**Ticket 4.7: Diseño e implementación del modelo de datos para candidatos**
- **Título:** Implementar modelo de datos para perfil de candidato
- **Descripción:** Diseñar y crear el esquema de base de datos para almacenar la información completa del perfil del candidato.
- **Criterios de aceptación:**
  - Esquema implementado según el modelo de datos del PRD
  - Tablas para información personal, experiencia, educación
  - Relaciones adecuadas entre entidades
  - Soporte para almacenamiento de CV
- **Prioridad:** Alta
- **Etiquetas:** Backend, Base de datos
- **Estimación:** 8 puntos

**Ticket 4.8: Implementación de endpoint para guardar información personal**
- **Título:** Crear API para guardar información personal
- **Descripción:** Desarrollar el endpoint que recibe y almacena la información básica del candidato.
- **Criterios de aceptación:**
  - Endpoint funcional que recibe los datos del primer paso
  - Validaciones del lado del servidor
  - Almacenamiento correcto en la base de datos
  - Manejo apropiado de errores y respuestas
- **Prioridad:** Alta
- **Etiquetas:** Backend, API
- **Estimación:** 4 puntos

**Ticket 4.9: Implementación de endpoint para guardar experiencia laboral**
- **Título:** Crear API para guardar experiencia laboral
- **Descripción:** Desarrollar el endpoint que recibe y almacena la información de experiencia laboral del candidato.
- **Criterios de aceptación:**
  - Endpoint funcional para múltiples entradas de experiencia
  - Validaciones del lado del servidor
  - Almacenamiento correcto en la base de datos
  - Manejo apropiado de errores y respuestas
- **Prioridad:** Alta
- **Etiquetas:** Backend, API
- **Estimación:** 2 puntos

**Ticket 4.10: Implementación de endpoint para guardar formación académica**
- **Título:** Crear API para guardar formación académica
- **Descripción:** Desarrollar el endpoint que recibe y almacena la información de educación del candidato.
- **Criterios de aceptación:**
  - Endpoint funcional para múltiples entradas de formación
  - Validaciones del lado del servidor
  - Almacenamiento correcto en la base de datos
  - Manejo apropiado de errores y respuestas
- **Prioridad:** Alta
- **Etiquetas:** Backend, API
- **Estimación:** 2 puntos

**Ticket 4.11: Implementación de endpoint para subir y almacenar CV**
- **Título:** Crear API para la carga y almacenamiento de CV
- **Descripción:** Desarrollar el endpoint que recibe, valida y almacena el archivo de CV del candidato.
- **Criterios de aceptación:**
  - Endpoint que maneja la subida de archivos PDF
  - Validación de formato y tamaño
  - Almacenamiento seguro (local o en la nube)
  - Asociación correcta con el perfil del candidato
- **Prioridad:** Alta
- **Etiquetas:** Backend, API, Almacenamiento
- **Estimación:** 8 puntos

**Ticket 4.12: Implementación de navegación bidireccional en el wizard**
- **Título:** Implementar navegación bidireccional en el wizard
- **Descripción:** Permitir que los candidatos puedan navegar hacia adelante y hacia atrás entre los pasos del wizard, actualizando información según sea necesario.
- **Criterios de aceptación:**
  - Botones "Anterior" y "Siguiente" funcionales en cada paso
  - Al retroceder, los campos muestran la información previamente ingresada
  - Capacidad para editar la información en cualquier paso y actualizar los datos
  - Validación adecuada al intentar avanzar
  - Persistencia de datos en ambas direcciones
- **Prioridad:** Alta
- **Etiquetas:** Frontend, UX
- **Estimación:** 4 puntos

**Ticket 4.13: Integración frontend-backend para wizard completo**
- **Título:** Integrar wizard completo con APIs de backend
- **Descripción:** Conectar todos los pasos del wizard con sus respectivos endpuntos.
- **Criterios de aceptación:**
  - Comunicación exitosa entre frontend y backend en todos los pasos
  - Manejo adecuado de errores y estados de carga
  - Flujo completo de principio a fin funcionando correctamente
  - Confirmación final al completar el perfil
- **Prioridad:** Alta
- **Etiquetas:** Frontend, Backend, Integración
- **Estimación:** 8 puntos

### US-2.2: Integración con Spotify

**Como** Candidato,  
**quiero** poder conectar mi cuenta de Spotify al sistema,  
**para** compartir mis preferencias musicales y mejorar mi evaluación de ajuste cultural.

**Criterios de Aceptación:**
1. **Dado que** estoy en el paso de "Perfil Musical" del wizard de creación de perfil, **cuando** selecciono "Conectar con Spotify", **entonces** se me redirige a Spotify para autorizar el acceso.
2. **Dado que** he autorizado el acceso a mis datos de Spotify, **cuando** regreso a la aplicación, **entonces** veo mis artistas y canciones favoritas importadas automáticamente.
3. **Dado que** he conectado mi perfil de Spotify, **cuando** edito mi perfil, **entonces** puedo actualizar la conexión o desconectarla si lo deseo.
4. **Dado que** no deseo conectar Spotify, **cuando** elijo la opción manual, **entonces** puedo ingresar manualmente mis 5 canciones favoritas.

**Notas Adicionales:**
- Se debe explicar claramente al candidato cómo se utilizará esta información para evaluar el ajuste cultural.
- La conexión debe manejar escenarios donde el usuario cancela la autorización en Spotify.

**Historias de Usuario Relacionadas:**
- Creación de Perfil de Candidato
- Evaluación de Ajuste Cultural

#### Tickets

**Ticket 5.1: Investigación y diseño de integración con Spotify API**
- **Título:** Investigar y diseñar integración con Spotify API
- **Descripción:** Investigar los endpuntos relevantes de Spotify API, requisitos de autenticación, y diseñar la arquitectura de integración.
- **Criterios de aceptación:** 
  - Documento con endpuntos relevantes de Spotify API
  - Diseño de flujo de autenticación OAuth
  - Identificación de datos a obtener (artistas/canciones favoritas)
  - Consideraciones de seguridad documentadas
  - Plan para manejo de errores y casos extremos
- **Prioridad:** Alta
- **Etiquetas:** Investigación, Diseño, Integración
- **Estimación:** 4 puntos

**Ticket 5.2: Implementación frontend de autorización con Spotify**
- **Título:** Implementar flujo de autorización frontend con Spotify
- **Descripción:** Desarrollar la interfaz y lógica para iniciar el proceso de autorización con Spotify, incluyendo redirección y manejo de callback.
- **Criterios de aceptación:**
  - Botón "Conectar con Spotify" implementado
  - Redirección correcta a Spotify para autorización
  - Manejo de callback de Spotify
  - Visualización de estados de carga durante el proceso
  - Manejo de errores (usuario cancela, token inválido, etc.)
- **Prioridad:** Alta
- **Etiquetas:** Frontend, Integración, OAuth
- **Estimación:** 8 puntos

**Ticket 5.3: Implementación backend de autenticación con Spotify**
- **Título:** Implementar flujo de autenticación backend con Spotify
- **Descripción:** Desarrollar los endpuntos y lógica para completar el proceso de autenticación OAuth con Spotify, incluyendo intercambio de código por tokens.
- **Criterios de aceptación:**
  - Endpoint para recibir código de autorización
  - Intercambio de código por access_token y refresh_token
  - Almacenamiento seguro de tokens
  - Manejo de renovación de tokens expirados
  - Manejo adecuado de errores de autenticación
- **Prioridad:** Alta
- **Etiquetas:** Backend, Autenticación, OAuth
- **Estimación:** 8 puntos

**Ticket 5.4: Extracción y almacenamiento de datos de Spotify**
- **Título:** Implementar extracción y almacenamiento de datos de Spotify
- **Descripción:** Desarrollar la funcionalidad que obtiene los artistas y canciones favoritas del usuario desde Spotify API y los almacena en la base de datos.
- **Criterios de aceptación:**
  - Consulta correcta a endpuntos de Spotify para obtener top artists/tracks
  - Procesamiento y formateo de datos recibidos
  - Almacenamiento en base de datos asociado al perfil del candidato
  - Manejo de límites de API y paginación si es necesario
- **Prioridad:** Alta
- **Etiquetas:** Backend, Integración, API
- **Estimación:** 8 puntos

**Ticket 5.5: Implementación frontend para visualización de datos importados**
- **Título:** Implementar visualización de datos importados de Spotify
- **Descripción:** Desarrollar la interfaz que muestra los artistas y canciones favoritas importadas desde Spotify.
- **Criterios de aceptación:**
  - Visualización atractiva de artistas/canciones favoritas
  - Indicador claro de que los datos provienen de Spotify
  - Opción para actualizar o desconectar la cuenta
  - Visualización responsive en diferentes dispositivos
- **Prioridad:** Media
- **Etiquetas:** Frontend, UI
- **Estimación:** 4 puntos

**Ticket 5.6: Implementación de consentimiento explícito para datos musicales**
- **Título:** Implementar consentimiento explícito para datos musicales
- **Descripción:** Desarrollar la funcionalidad para que los candidatos den su consentimiento explícito para el uso de sus datos musicales en el proceso de evaluación cultural.
- **Criterios de aceptación:**
  - Formulario de consentimiento claro y detallado
  - Almacenamiento seguro del consentimiento otorgado
  - Opción para revocar el consentimiento
  - Conformidad con regulaciones de privacidad aplicables
- **Prioridad:** Alta
- **Etiquetas:** Frontend, Backend, Legal
- **Estimación:** 4 puntos

**Ticket 5.7: Creación de endpoint para almacenar perfil musical**
- **Título:** Crear endpoint para almacenar perfil musical
- **Descripción:** Desarrollar el endpoint que guarda el perfil musical del candidato, ya sea obtenido de Spotify o ingresado manualmente.
- **Criterios de aceptación:**
  - Endpoint que maneja ambas fuentes de datos (Spotify y manual)
  - Validaciones adecuadas para cada tipo de entrada
  - Estructura de datos unificada para ambas fuentes
  - Asociación correcta con el perfil del candidato
  - Manejo apropiado de errores y respuestas
- **Prioridad:** Alta
- **Etiquetas:** Backend, API
- **Estimación:** 8 puntos

**Ticket 5.8: Implementación de visualización de perfil musical en perfil de candidato**
- **Título:** Implementar visualización de perfil musical en perfil de candidato
- **Descripción:** Desarrollar la interfaz que muestra el perfil musical dentro de la vista completa del perfil del candidato.
- **Criterios de aceptación:**
  - Visualización integrada en el perfil general del candidato
  - Distinción clara de la fuente de datos (Spotify vs. manual)
  - Diseño atractivo y consistente con el resto del perfil
  - Responsividad en diferentes dispositivos
- **Prioridad:** Media
- **Etiquetas:** Frontend, UI
- **Estimación:** 4 puntos

### US-2.3: Aplicación a Vacante con Perfil Existente

**Como** Candidato con perfil creado,  
**quiero** poder aplicar fácilmente a una vacante de interés,  
**para** ser considerado en el proceso de selección sin tener que reingresar mi información.

**Criterios de Aceptación:**
1. **Dado que** tengo un perfil creado y estoy autenticado, **cuando** veo una vacante de interés, **entonces** puedo hacer clic en "Aplicar".
2. **Dado que** decido aplicar a una vacante, **cuando** confirmo la aplicación, **entonces** el sistema asocia mi perfil completo con esta aplicación.
3. **Dado que** la vacante tiene preguntas específicas, **cuando** aplico, **entonces** puedo responder solo estas preguntas adicionales sin repetir la información de mi perfil.
4. **Dado que** he aplicado a una vacante, **cuando** reviso "Mis Aplicaciones", **entonces** puedo ver todas mis postulaciones y su estado actual.

**Notas Adicionales:**
- El proceso debe ser rápido para candidatos con perfil completo.
- Debe haber una clara diferenciación visual para las vacantes a las que ya se ha aplicado.

**Historias de Usuario Relacionadas:**
- Creación de Perfil de Candidato
- Visualización de Estado de Aplicaciones

#### Tickets

**Ticket 6.1: Diseño UI para aplicación rápida a vacante**
- **Título:** Diseñar interfaz para aplicación rápida a vacantes
- **Descripción:** Crear los mockups y diseños para el proceso simplificado de aplicación a vacantes para usuarios con perfil existente.
- **Criterios de aceptación:** 
  - Diseño del botón de "Aplicar" en la vista de detalle de vacante
  - Diseño del modal de confirmación
  - Diseño para preguntas específicas adicionales de la vacante
  - Visualización de confirmación de aplicación exitosa
- **Prioridad:** Alta
- **Etiquetas:** UI/UX, Diseño
- **Estimación:** 4 puntos

**Ticket 6.2: Implementación de componente de aplicación rápida**
- **Título:** Implementar componente de aplicación rápida a vacantes
- **Descripción:** Desarrollar el componente frontend que permite a candidatos con perfil existente aplicar con un solo clic.
- **Criterios de aceptación:**
  - Botón "Aplicar" visible en la página de detalle de vacante
  - Modal de confirmación implementado
  - Feedback visual del proceso (carga, éxito, error)
  - Experiencia fluida sin redirecciones innecesarias
- **Prioridad:** Alta
- **Etiquetas:** Frontend, UI
- **Estimación:** 2 puntos

**Ticket 6.3: Implementación de formulario para preguntas específicas de vacante**
- **Título:** Implementar componente para preguntas específicas de vacante
- **Descripción:** Desarrollar el formulario que muestra preguntas adicionales específicas para cada vacante.
- **Criterios de aceptación:**
  - Formulario dinámico que se adapta a las preguntas definidas
  - Validaciones apropiadas según tipo de respuesta requerida
  - Capacidad para guardar respuestas preliminares
  - Experiencia de usuario intuitiva
- **Prioridad:** Media
- **Etiquetas:** Frontend, UI
- **Estimación:** 4 puntos

**Ticket 6.4: Diseño e implementación del modelo de datos para aplicaciones**
- **Título:** Implementar modelo de datos para aplicaciones a vacantes
- **Descripción:** Diseñar y crear el esquema que relaciona candidatos con vacantes y almacena información específica de cada aplicación.
- **Criterios de aceptación:**
  - Esquema para relacionar candidatos y vacantes
  - Estructura para almacenar respuestas a preguntas específicas
  - Campo para el estado de la aplicación
  - Timestamps para seguimiento de fechas clave
- **Prioridad:** Alta
- **Etiquetas:** Backend, Base de datos
- **Estimación:** 4 puntos

**Ticket 6.5: Creación de endpoint para aplicar a vacante**
- **Título:** Crear API para aplicar a vacante
- **Descripción:** Desarrollar el endpoint que registra la aplicación de un candidato a una vacante específica.
- **Criterios de aceptación:**
  - Endpoint funcional que asocia candidato con vacante
  - Almacenamiento de respuestas a preguntas específicas
  - Validación para evitar aplicaciones duplicadas
  - Manejo apropiado de errores y respuestas
- **Prioridad:** Alta
- **Etiquetas:** Backend, API
- **Estimación:** 4 puntos

**Ticket 6.6: Implementación de vista "Mis Aplicaciones"**
- **Título:** Implementar vista de "Mis Aplicaciones" para candidatos
- **Descripción:** Desarrollar la interfaz donde los candidatos pueden ver todas sus aplicaciones y su estado.
- **Criterios de aceptación:**
  - Listado que muestra todas las aplicaciones del candidato
  - Visualización clara del estado de cada aplicación
  - Filtros para buscar aplicaciones por estado o fecha
  - Opción para ver detalles de cada aplicación
- **Prioridad:** Media
- **Etiquetas:** Frontend, UI
- **Estimación:** 4 puntos

**Ticket 6.7: Creación de endpoint para listar aplicaciones de candidato**
- **Título:** Crear API para listar aplicaciones de un candidato
- **Descripción:** Desarrollar el endpoint que retorna todas las aplicaciones realizadas por un candidato específico.
- **Criterios de aceptación:**
  - Endpoint que retorna listado de aplicaciones con sus estados
  - Soporte para filtrado y paginación
  - Inclusión de información básica de la vacante asociada
  - Optimización para rendimiento
- **Prioridad:** Media
- **Etiquetas:** Backend, API
- **Estimación:** 4 puntos

**Ticket 6.8: Implementación de diferenciación visual para vacantes aplicadas**
- **Título:** Implementar diferenciación visual para vacantes ya aplicadas
- **Descripción:** Desarrollar indicadores visuales que muestren claramente cuando un candidato ya ha aplicado a una vacante.
- **Criterios de aceptación:**
  - Indicador visual claro en el listado de vacantes
  - Botón "Ya Aplicado" en lugar de "Aplicar" en la vista de detalle
  - Consistencia visual en toda la aplicación
- **Prioridad:** Baja
- **Etiquetas:** Frontend, UI
- **Estimación:** 4 puntos

### US-2.4: Análisis Cultural del Candidato mediante IA

**Como** Reclutador,  
**quiero** recibir insights generados por IA sobre la compatibilidad cultural del candidato basados en su perfil completo (incluyendo datos musicales),  
**para** evaluar mejor el "fit" del candidato con el equipo y la cultura de la empresa.

**Criterios de Aceptación:**
1. **Dado que** estoy revisando el perfil de un candidato que ha proporcionado datos musicales, **cuando** selecciono la opción "Generar Análisis Cultural", **entonces** el sistema procesa esta información con el LLM.
2. **Dado que** el sistema ha procesado los datos, **cuando** el análisis es completado, **entonces** puedo ver insights sobre el candidato organizados en categorías (personalidad, valores, estilo de trabajo potencial).
3. **Dado que** estoy viendo los insights culturales, **cuando** reviso las recomendaciones, **entonces** puedo ver sugerencias sobre la compatibilidad con distintos equipos o roles.
4. **Dado que** un candidato no ha proporcionado datos musicales, **cuando** intento generar el análisis cultural, **entonces** el sistema me informa que solo puede realizar un análisis basado en CV sin el componente cultural musical.

**Notas Adicionales:**
- El análisis debe ser presentado de manera estructurada y fácil de interpretar.
- Debe quedar claro que estos insights son sugerencias basadas en patrones, no determinaciones absolutas.
- El proceso de análisis debe completarse en un tiempo razonable (máximo 30 segundos).

**Historias de Usuario Relacionadas:**
- Conexión de Perfil de Spotify por Candidato
- Visualización Detallada del Perfil del Candidato

#### Tickets

**Ticket 7.1: Diseño UI para visualización de análisis cultural**
- **Título:** Diseñar interfaz para análisis cultural por IA
- **Descripción:** Crear los mockups y diseños para mostrar los insights de compatibilidad cultural generados por la IA.
- **Criterios de aceptación:** 
  - Diseño de panel de insights categorizado (personalidad, valores, estilo de trabajo)
  - Visualización de nivel de compatibilidad con diferentes equipos/roles
  - Diseño para estados de carga durante procesamiento
  - Diseño para casos donde no hay datos musicales disponibles
- **Prioridad:** Alta
- **Etiquetas:** UI/UX, Diseño
- **Estimación:** 4 puntos

**Ticket 7.2: Implementación de componente para solicitar análisis cultural**
- **Título:** Implementar botón y lógica para solicitar análisis cultural
- **Descripción:** Desarrollar el componente que permite a reclutadores solicitar un análisis cultural de un candidato.
- **Criterios de aceptación:**
  - Botón "Generar Análisis Cultural" en el perfil del candidato
  - Estado de carga durante procesamiento
  - Mensajes claros sobre el proceso
  - Manejo adecuado cuando no hay datos musicales
- **Prioridad:** Alta
- **Etiquetas:** Frontend
- **Estimación:** 4 puntos

**Ticket 7.3: Implementación de componente para visualizar análisis cultural**
- **Título:** Implementar visualización de análisis cultural por IA
- **Descripción:** Desarrollar el componente que muestra los insights generados por la IA de manera estructurada y comprensible.
- **Criterios de aceptación:**
  - Visualización según diseño aprobado
  - Secciones claramente separadas por categorías
  - Indicadores visuales de compatibilidad
  - Disclaimer sobre la naturaleza sugestiva (no determinística) del análisis
- **Prioridad:** Alta
- **Etiquetas:** Frontend, UI
- **Estimación:** 4 puntos

**Ticket 7.4: Diseño e implementación del modelo de datos para análisis cultural**
- **Título:** Implementar modelo de datos para almacenar análisis cultural
- **Descripción:** Diseñar y crear el esquema para almacenar los resultados del análisis cultural realizado por la IA.
- **Criterios de aceptación:**
  - Esquema para almacenar insights categorizados
  - Relación con el perfil del candidato
  - Timestamp de generación
  - Campo para el usuario que solicitó el análisis
- **Prioridad:** Alta
- **Etiquetas:** Backend, Base de datos
- **Estimación:** 4 puntos

**Ticket 7.5: Implementación de interfaz con servicio LLM**
- **Título:** Implementar interfaz con servicio LLM
- **Descripción:** Desarrollar una capa de abstracción que se comunique con el servicio LLM (tratado como caja negra), enfocándose en el formato de los datos enviados y recibidos.
- **Criterios de aceptación:**
  - Interfaz clara para enviar datos al servicio LLM
  - Formato estandarizado para recibir respuestas
  - Manejo básico de errores y timeouts
  - Documentación de la interfaz para futura implementación completa
- **Prioridad:** Alta
- **Etiquetas:** Backend, Integración
- **Estimación:** 8 puntos

**Ticket 7.6: Creación de endpoint para solicitar análisis cultural**
- **Título:** Crear API para generar análisis cultural
- **Descripción:** Desarrollar el endpoint que recibe la solicitud, procesa los datos a través del LLM y almacena los resultados.
- **Criterios de aceptación:**
  - Endpoint funcional que desencadena el análisis
  - Validación de disponibilidad de datos necesarios
  - Almacenamiento correcto de resultados
  - Manejo de procesos asincrónicos para análisis largos
- **Prioridad:** Alta
- **Etiquetas:** Backend, API
- **Estimación:** 4 puntos

**Ticket 7.7: Creación de endpoint para obtener análisis cultural**
- **Título:** Crear API para obtener análisis cultural almacenado
- **Descripción:** Desarrollar el endpoint que retorna los resultados del análisis cultural previamente generado.
- **Criterios de aceptación:**
  - Endpoint que retorna análisis estructurado
  - Validación de permisos de acceso
  - Indicación clara si el análisis está obsoleto
  - Opción para solicitar regeneración
- **Prioridad:** Alta
- **Etiquetas:** Backend, API
- **Estimación:** 2 puntos

**Ticket 7.8: Implementación de análisis fallback sin datos musicales**
- **Título:** Implementar análisis alternativo sin datos musicales
- **Descripción:** Desarrollar la lógica alternativa para cuando un candidato no ha proporcionado datos musicales.
- **Criterios de aceptación:**
  - Detección adecuada de ausencia de datos musicales
  - Generación de análisis basado únicamente en CV y experiencia
  - Mensaje claro sobre las limitaciones de este análisis
  - Experiencia de usuario coherente
- **Prioridad:** Media
- **Etiquetas:** Backend, Frontend, IA
- **Estimación:** 4 puntos

**Nota importante:** La implementación detallada del servicio LLM se tratará como una épica separada en el futuro, dado que requiere un esfuerzo significativo y especializado. Por ahora, tratamos este servicio como una "caja negra" a la que enviaremos datos y de la que recibiremos respuestas.

## Backlog ordenado

### Etapa 1: Must Have - Fundación y Creación de Vacantes
1. Ticket 1.1: Diseño UI del formulario de creación de vacante (4 puntos)
2. Ticket 2.1: Diseño UI de la lista de vacantes (4 puntos)
3. Ticket 1.6: Creación de modelo de datos para vacantes (2 puntos)
4. Ticket 1.7: Implementación de endpoint para guardar vacante (4 puntos)
5. Ticket 2.5: Creación de endpoint para obtener listado de vacantes (4 puntos)
6. Ticket 1.2: Implementación frontend del formulario de vacante (4 puntos)
7. Ticket 2.2: Implementación del componente de lista de vacantes (4 puntos)
8. Ticket 1.8: Integración frontend-backend para creación de vacantes (4 puntos)
9. Ticket 2.7: Integración frontend-backend para listado filtrado (4 puntos)

### Etapa 2: Must Have - Perfiles de Candidato
10. Ticket 4.1: Diseño UI del proceso de creación de perfil (wizard) (8 puntos)
11. Ticket 4.7: Diseño e implementación del modelo de datos para candidatos (8 puntos)
12. Ticket 4.8: Implementación de endpoint para guardar información personal (4 puntos)
13. Ticket 4.2: Implementación frontend del paso 1 - Información personal (4 puntos)
14. Ticket 4.13: Integración frontend-backend para wizard completo (8 puntos)

### Etapa 3: Must Have - Aplicación a Vacantes
15. Ticket 6.1: Diseño UI para aplicación rápida a vacante (4 puntos)
16. Ticket 7.1: Diseño UI para visualización de aplicaciones (4 puntos)
17. Ticket 6.5: Creación de endpoint para registrar aplicación (4 puntos)
18. Ticket 7.4: Creación de endpoint para listar aplicaciones (4 puntos)
19. Ticket 6.2: Implementación frontend del botón de aplicación (2 puntos)
20. Ticket 6.3: Implementación de modal de confirmación (4 puntos)
21. Ticket 7.2: Implementación frontend de lista de aplicaciones (4 puntos)

### Etapa 4: Must Have - Gestión de Vacantes
22. Ticket 3.1: Diseño UI para edición de vacantes (4 puntos)
23. Ticket 3.7: Creación de endpoint para actualizar vacante (2 puntos)
24. Ticket 3.8: Creación de endpoint para cerrar vacante (2 puntos)
25. Ticket 3.3: Implementación de formulario de edición (2 puntos)

### Etapa 1: Should Have - Fundación y Creación de Vacantes
26. Ticket 1.3: Implementación de validaciones frontend (4 puntos)
27. Ticket 2.8: Implementación de vista detallada de vacante (4 puntos)

### Etapa 2: Should Have - Perfiles de Candidato
28. Ticket 4.3: Implementación frontend del paso 2 - Experiencia (4 puntos)
29. Ticket 4.9: Implementación de endpoint para guardar experiencia laboral (2 puntos)
30. Ticket 4.4: Implementación frontend del paso 3 - Educación (2 puntos)
31. Ticket 4.10: Implementación de endpoint para guardar formación académica (2 puntos)
32. Ticket 4.5: Implementación frontend del paso 4 - CV (4 puntos)
33. Ticket 4.11: Implementación de endpoint para subir y almacenar CV (8 puntos)

### Etapa 3: Should Have - Aplicación a Vacantes
34. Ticket 6.6: Implementación de notificación de aplicación exitosa (4 puntos)

### Funcionalidades adicionales: Could Have
35. Ticket 2.6: Implementación de filtrado en backend (2 puntos)
36. Ticket 2.3: Implementación de controles de filtrado (2 puntos)
37. Ticket 2.4: Implementación de la lógica de filtrado en frontend (2 puntos)
38. Ticket 1.5: Implementación de la funcionalidad de publicar vacante (4 puntos)
39. Ticket 4.12: Implementación de navegación bidireccional en el wizard (4 puntos)
40. Ticket 7.5: Implementación de vista detallada de aplicación (4 puntos)
41. Ticket 7.3: Implementación de filtros de aplicaciones (2 puntos)
42. Ticket 3.4: Implementación de funcionalidad de cierre de vacante (2 puntos)
43. Ticket 3.11: Integración frontend-backend para edición y historial (4 puntos)
44. Ticket 3.5: Diseño e implementación del modelo de datos para historial (4 puntos)
45. Ticket 3.6: Implementación de captura de cambios en backend (4 puntos)
46. Ticket 5.1: Investigación y diseño de integración con Spotify API (4 puntos)

