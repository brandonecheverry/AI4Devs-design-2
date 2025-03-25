 -----
 USER STORIES
 -----
 
## Historia 1: 
Como reclutador, quiero utilizar la IA para preseleccionar automáticamente candidatos que coincidan con los requisitos de la vacante, para reducir el tiempo dedicado a la revisión manual de CVs.
### Criterios de Aceptación:
1. El sistema debe analizar automáticamente los CVs cargados y compararlos con los requisitos definidos para la vacante.
2. El sistema debe generar una lista priorizada de candidatos con un porcentaje de coincidencia visible.
3. El reclutador debe poder ajustar los parámetros de coincidencia y regenerar la lista en tiempo real.
### Notas adicionales:
La precisión de la preselección debe ser medible y superar el 85% en comparación con la selección manual de un reclutador experimentado.
### Historias relacionadas:
Como reclutador, quiero poder definir habilidades técnicas y blandas específicas para cada vacante.

## Historia 2: 
Como candidato, quiero tener visibilidad del estado actual de mi aplicación en tiempo real, para poder planificar mejor mis próximos pasos en la búsqueda de empleo.
### Criterios de Aceptación:
1. El portal de candidatos debe mostrar claramente en qué etapa del proceso se encuentra cada aplicación.
2. El sistema debe enviar notificaciones automáticas cuando cambie el estado de la aplicación.
3. El candidato debe poder ver tiempos estimados para cada etapa del proceso.

## Historia 3:
Como responsable de RRHH, quiero configurar flujos de onboarding personalizados según el departamento y nivel del puesto, para garantizar una incorporación eficiente y consistente de los nuevos empleados.
### Criterios de Aceptación:
1. El sistema debe permitir crear plantillas de onboarding con tareas específicas por departamento y nivel.
2. Cada tarea debe poder asignarse a diferentes responsables con fechas límite.
3. El sistema debe generar informes de progreso del onboarding con porcentaje de completitud.
### Notas adicionales:
La funcionalidad debe integrarse con el calendario corporativo para programar reuniones y formaciones.

## Historia 4:
Como reclutador, quiero configurar y enviar entrevistas asíncronas a múltiples candidatos simultáneamente, para agilizar el proceso de evaluación inicial sin coordinar agendas.
### Criterios de Aceptación:
1. El sistema debe permitir crear plantillas de preguntas reutilizables para diferentes tipos de posiciones.
2. Los candidatos deben poder completar la entrevista desde cualquier dispositivo sin problemas técnicos.
3. Las respuestas de video deben estar disponibles para evaluación con posibilidad de compartirlas con otros miembros del equipo evaluador.
### Historias relacionadas:
Como gerente de departamento, quiero poder evaluar las video-entrevistas y dejar comentarios estructurados.

## Historia 5:
Como gerente de departamento, quiero acceder a analíticas predictivas sobre la probabilidad de éxito y permanencia de los candidatos finalistas, para tomar decisiones de contratación más informadas.
### Criterios de Aceptación:
1. El sistema debe presentar indicadores claros basados en datos históricos de contrataciones similares.
2. Las predicciones deben incluir factores clave que influyen en la evaluación con su ponderación.
3. El gerente debe poder comparar múltiples candidatos en una vista unificada que destaque fortalezas y debilidades relativas.
### Notas adicionales:
Es importante que el sistema muestre el nivel de confianza de las predicciones y los factores que podrían afectar su precisión.

 -----
 PRODUCT BACKLOG (Del Prompt #3 al Prompt #7)
 -----
 
## Prioridad 1: Historia 1 - Preselección automática con IA
**Justificación:** Esta funcionalidad representa el core diferenciador del producto y aporta el mayor valor inmediato. El problema de falsos positivos es crítico pero resolverlo generará confianza en el sistema y eficiencia real. Las tecnologías NLP y ML requeridas son complejas pero fundamentales para el éxito del sistema.
**Enfoque SCRUM:** Debería ocupar varios Sprints iniciales con incrementos claros:
- Sprint 1: MVP del Parser de CV con extracción básica
- Sprint 2: Primera versión del algoritmo de matching con requisitos fundamentales
- Sprint 3: Interfaz de ajuste y retroalimentación para refinamiento continuo

## Prioridad 2: Historia 2 - Visibilidad de estado para candidatos
**Justificación:** Atiende una necesidad crítica del mercado (transparencia) y tiene complejidad técnica relativamente baja comparada con su alto impacto. Los problemas de comunicación automatizada pueden resolverse iterativamente mientras se mantiene la funcionalidad principal.
**Enfoque SCRUM:** 
- Implementar en un Sprint la funcionalidad básica de estados y notificaciones
- Dedicar un Sprint posterior a personalización y contextualización de mensajes

## Prioridad 3: Historia 4 - Entrevistas asíncronas
**Justificación:** Ofrece un diferenciador importante y resuelve problemas logísticos reales. Las dificultades técnicas representan un riesgo significativo pero manejable con pruebas adecuadas. Las tecnologías de video son maduras pero requieren optimización.
**Enfoque SCRUM:**
- Comenzar con un MVP centrado en compatibilidad básica con navegadores principales
- Iterar con mejoras de experiencia y robustez técnica en Sprints posteriores

## Prioridad 4: Historia 3 - Flujos de onboarding personalizados
**Justificación:** Aunque completa el ciclo del producto, puede implementarse después de las funcionalidades de captación y selección. La complejidad de configuración es un desafío, pero puede abordarse progresivamente.
**Enfoque SCRUM:**
- Implementar primero flujos básicos predefinidos
- Introducir gradualmente capacidades de personalización
- Desarrollar el editor visual como mejora posterior

## Prioridad 5: Historia 5 - Analíticas predictivas
**Justificación:** Representa el nivel más avanzado de valor pero requiere datos históricos para ser efectiva, por lo que es lógico implementarla después de que el sistema esté funcionando. El escepticismo sobre su fiabilidad se reducirá al mostrar datos reales.
**Enfoque SCRUM:**
- Desarrollar inicialmente visualizaciones simples con datos limitados
- Evolucionar hacia modelos predictivos más sofisticados a medida que se acumulen datos
- Incorporar transparencia y ajustes como elementos centrales desde el inicio
**Consideración adicional:** Para maximizar el valor en SCRUM, cada incremento debe ser potencialmente entregable, por lo que incluso las historias de menor prioridad deberían tener versiones mínimas disponibles en releases tempranas.

(**CONCLUSIONES**: Me gusto mucho ir paso a paso con cada prompt. En el Prompt #3, sin considerar tecnologias o mejoras, la IA es quien toma las decisiones y siento que lo que me brindo, aunque coherente, no calcula muy bien donde tiene que enfocar sus esfuerzos. Luego, siguiendo la documentacion de la semana, decidi preguntarle por las tecnologias a considerar y la puse a priorizar alli con el prompt #5, y aunque es mas precisa, uno puede seguir dandole mas info y contexto para que sea mas realista con los objetivos. Finalmente, decidi irme por el prompt #7, porque ahi ya estamos considerando problemas y mejoras, algo que durante la fase de desarollo de SCRUM, siempre suele suceder por ser una metoldologia cambiante)

 -----
 TICKETS DE TRABAJO (Historia #2 - Visibilidad de estado para candidatos)
 -----

## Ticket #1
**Título:** Definir máquina de estados para aplicaciones
**Descripción:** Diseñar e implementar el modelo de máquina de estados que definirá las posibles etapas de una aplicación y las transiciones permitidas.
**Criterios de aceptación:**
- Definir todos los posibles estados de una aplicación (ej. Recibida, En revisión, Preseleccionada, etc.)
- Establecer reglas claras para las transiciones entre estados
- Documentar el modelo con un diagrama visual
- Implementar la estructura de datos en la base de datos
- Crear las pruebas unitarias para verificar transiciones válidas e inválidas
**Prioridad:** Crítico
**Estimado:** L (5 días)
**Asignado:** Senior Dev 1
**Categoría:** Tarea Técnica
**Comentarios:** Este ticket es la base fundamental para toda la historia de usuario. Sin un modelo de estados claro, no se puede implementar la visibilidad para los candidatos.

---

## Ticket #2
**Título:** API para gestión de estados de aplicación
**Descripción:** Desarrollar endpoints RESTful que permitan consultar y actualizar el estado de las aplicaciones de los candidatos.
**Criterios de aceptación:**
- Crear endpoint GET para consultar el estado actual de una aplicación
- Crear endpoint PUT para actualizar el estado de una aplicación
- Implementar validaciones según las reglas de la máquina de estados
- Registrar historial de cambios de estado con timestamps
- Documentar API con Swagger/OpenAPI
- Implementar pruebas de integración
**Prioridad:** Crítico
**Estimado:** M (3 días)
**Asignado:** Senior Dev 2
**Categoría:** Feature
**Comentarios:** Esta API será utilizada tanto por el portal de candidatos como por el sistema de notificaciones.

---

## Ticket #3
**Título:** Interfaz de estado en portal de candidatos
**Descripción:** Diseñar e implementar la visualización del estado actual de la aplicación en el portal de candidatos.
**Criterios de aceptación:**
- Crear un componente visual que muestre claramente el estado actual
- Mostrar todas las etapas del proceso con indicación de cuáles han sido completadas
- Diseñar una interfaz responsive que funcione en dispositivos móviles
- Implementar actualización en tiempo real mediante WebSockets
- Asegurar accesibilidad según estándares WCAG
**Prioridad:** Alto
**Estimado:** M (3 días)
**Asignado:** Junior Dev 1
**Categoría:** Feature
**Comentarios:** La interfaz debe ser intuitiva y clara para que los candidatos entiendan fácilmente en qué punto del proceso están.

---

## Ticket #4
**Título:** Configuración de WebSockets para actualizaciones en tiempo real
**Descripción:** Implementar sistema de WebSockets que permita actualizar el estado de la aplicación en tiempo real sin necesidad de refrescar la página.
**Criterios de aceptación:**
- Configurar servidor WebSocket
- Implementar sistema de suscripción para aplicaciones específicas
- Gestionar reconexiones automáticas en caso de pérdida de conexión
- Optimizar para minimizar el consumo de recursos
- Realizar pruebas de carga y rendimiento
**Prioridad:** Medio
**Estimado:** M (3 días)
**Asignado:** Lead Dev
**Categoría:** Tarea Técnica
**Comentarios:** Esta funcionalidad mejorará significativamente la experiencia de usuario, pero podría implementarse inicialmente con polling como fallback.

---

## Ticket #5
**Título:** Sistema de notificaciones por cambio de estado
**Descripción:** Desarrollar sistema que envíe notificaciones automáticas a los candidatos cuando cambie el estado de su aplicación.
**Criterios de aceptación:**
- Crear servicio de envío de correos electrónicos 
- Implementar plantillas personalizables por cada tipo de cambio de estado
- Configurar triggers automáticos vinculados a la máquina de estados
- Implementar sistema de cola para gestionar envíos masivos
- Añadir registro de notificaciones enviadas
**Prioridad:** Alto
**Estimado:** M (3 días)
**Asignado:** Junior Dev 2
**Categoría:** Feature
**Comentarios:** Importante asegurar que los correos no caigan en spam y que las plantillas sean personalizables por la empresa cliente.

---

## Ticket #6
**Título:** Cálculo de tiempos estimados por etapa
**Descripción:** Desarrollar algoritmo que calcule y muestre tiempos estimados para completar cada etapa del proceso basado en datos históricos.
**Criterios de aceptación:**
- Implementar sistema de recopilación de datos históricos de tiempos por etapa
- Desarrollar algoritmo para calcular estimaciones basadas en datos pasados
- Mostrar estimaciones en la interfaz del candidato
- Implementar actualización dinámica de estimaciones 
- Crear dashboard para análisis de tiempos promedio
**Prioridad:** Medio
**Estimado:** L (5 días)
**Asignado:** Senior Dev 1
**Categoría:** Feature
**Comentarios:** Esta funcionalidad dependerá de la disponibilidad de datos históricos. Podría iniciar con estimaciones predefinidas hasta tener suficientes datos.

---

## Ticket #7
**Título:** Implementar autenticación segura para portal de candidatos
**Descripción:** Reforzar el sistema de autenticación del portal de candidatos para garantizar la seguridad y privacidad de los datos de las aplicaciones.
**Criterios de aceptación:**
- Implementar autenticación de doble factor
- Configurar políticas de contraseñas seguras
- Desarrollar sistema de recuperación de contraseñas
- Implementar límites de intentos y protección contra ataques de fuerza bruta
- Cifrar comunicaciones con TLS/SSL
**Prioridad:** Alto
**Estimado:** M (3 días)
**Asignado:** Lead Dev
**Categoría:** Tarea Técnica
**Comentarios:** Fundamental para garantizar la privacidad y seguridad de la información de los candidatos.

---

## Ticket #8
**Título:** Desarrollo de API de comentarios para candidatos
**Descripción:** Crear funcionalidad que permita a los candidatos dejar comentarios o preguntas sobre su proceso en cada etapa.
**Criterios de aceptación:**
- Crear endpoints para añadir y consultar comentarios
- Desarrollar interface para añadir y visualizar comentarios en el portal
- Implementar notificaciones para reclutadores cuando se añada un comentario
- Permitir adjuntar archivos a los comentarios
- Añadir clasificación de comentarios por categorías
**Prioridad:** Bajo
**Estimado:** S (1 día)
**Asignado:** Junior Dev 3
**Categoría:** Mejora
**Comentarios:** Esta funcionalidad mejora la comunicación bidireccional, pero no es esencial para la visibilidad del estado.

---

## Ticket #9
**Título:** Personalización de estados por empresa
**Descripción:** Desarrollar sistema que permita a cada empresa cliente personalizar las etapas de su proceso de selección y la terminología utilizada.
**Criterios de aceptación:**
- Crear interfaz de administración para configurar estados personalizados
- Implementar sistema de mapeo entre estados personalizados y estados base del sistema
- Asegurar que las visualizaciones respeten la personalización
- Mantener compatibilidad con las notificaciones y estimaciones
- Implementar versionado de configuraciones de estados
**Prioridad:** Bajo
**Estimado:** L (5 días)
**Asignado:** Senior Dev 2
**Categoría:** Mejora
**Comentarios:** Esta personalización añade mucho valor para clientes grandes con procesos propios establecidos.

---

## Ticket #10
**Título:** Pruebas de integración del flujo completo
**Descripción:** Desarrollar suite de pruebas de integración que valide el funcionamiento correcto de todo el flujo de visibilidad de estado.
**Criterios de aceptación:**
- Crear casos de prueba para cada transición de estado posible
- Implementar pruebas automatizadas E2E (end-to-end)
- Verificar notificaciones y actualizaciones en tiempo real
- Comprobar visualización correcta en diferentes dispositivos
- Validar rendimiento y tiempos de respuesta aceptables
**Prioridad:** Alto
**Estimado:** M (3 días)
**Asignado:** Junior Dev 4
**Categoría:** Tarea Técnica
**Comentarios:** Fundamental para asegurar que todos los componentes funcionan correctamente en conjunto.

---

## Ticket #11
**Título:** Investigación de UX para visualización de estados
**Descripción:** Investigar mejores prácticas y realizar pruebas con usuarios para optimizar la experiencia de visualización de estados de aplicación.
**Criterios de aceptación:**
- Revisar soluciones existentes en el mercado
- Realizar sesiones de pruebas de usabilidad con candidatos reales
- Documentar hallazgos y recomendaciones
- Crear prototipos de visualizaciones alternativas
- Proponer métricas para evaluar la efectividad de diferentes enfoques
**Prioridad:** Medio
**Estimado:** M (3 días)
**Asignado:** Junior Dev 1
**Categoría:** Investigación
**Comentarios:** Esta investigación puede informar mejoras posteriores en la visualización de estados.

---

## Ticket #12
**Título:** Implementación de dashboard analítico para reclutadores
**Descripción:** Desarrollar un dashboard que permita a los reclutadores visualizar métricas sobre tiempos de procesamiento y estados de las aplicaciones.
**Criterios de aceptación:**
- Crear visualizaciones de distribución de aplicaciones por estado
- Implementar gráficos de tiempo promedio por etapa
- Añadir filtros por fecha, departamento, vacante, etc.
- Desarrollar alertas para aplicaciones estancadas
- Permitir exportación de datos en formatos estándar
**Prioridad:** Medio
**Estimado:** M (3 días)
**Asignado:** Junior Dev 2
**Categoría:** Feature
**Comentarios:** Aunque este ticket está más orientado a reclutadores, permite mejorar los procesos que impactan en la experiencia del candidato.

---

## Ticket #13
**Título:** Optimización de velocidad de carga del portal de candidatos
**Descripción:** Mejorar el rendimiento del portal de candidatos para garantizar tiempos de carga rápidos incluso en conexiones lentas.
**Criterios de aceptación:**
- Implementar lazy loading para componentes no críticos
- Optimizar tamaño y carga de recursos (imágenes, scripts, etc.)
- Configurar caching adecuado para recursos estáticos
- Lograr puntuación mínima de 90 en PageSpeed Insights
- Verificar rendimiento en conexiones 3G
**Prioridad:** Bajo
**Estimado:** S (1 día)
**Asignado:** Junior Dev 3
**Categoría:** Mejora
**Comentarios:** Mejora la experiencia de usuario, especialmente en dispositivos móviles o conexiones lentas.

---

## Ticket #14
**Título:** Documentación para candidatos
**Descripción:** Crear documentación clara y guías de usuario para que los candidatos entiendan cómo interpretar la información de estado.
**Criterios de aceptación:**
- Desarrollar guía de usuario con explicaciones de cada estado
- Crear sección de FAQ específica para seguimiento de aplicaciones
- Implementar tooltips contextuales en la interfaz
- Producir video tutorial breve sobre cómo interpretar la información
- Traducir la documentación a idiomas principales (español, inglés)
**Prioridad:** Medio
**Estimado:** XS (4 horas)
**Asignado:** Junior Dev 4
**Categoría:** Tarea Técnica
**Comentarios:** Una buena documentación reducirá las consultas de soporte y mejorará la comprensión del proceso.

---

## Ticket #15
**Título:** Fix de compatibilidad cross-browser
**Descripción:** Asegurar que la visualización de estados funcione correctamente en todos los navegadores principales.
**Criterios de aceptación:**
- Verificar funcionamiento en Chrome, Firefox, Safari, Edge (últimas 2 versiones)
- Corregir problemas de CSS específicos de navegadores
- Implementar polyfills necesarios para funcionalidades modernas
- Adaptar código JavaScript para máxima compatibilidad
- Documentar cualquier limitación conocida
**Prioridad:** Medio
**Estimado:** S (1 día)
**Asignado:** Junior Dev 1
**Categoría:** Bugs/Errores
**Comentarios:** Importante para garantizar que todos los candidatos puedan utilizar la plataforma independientemente de su navegador.
 
 