# 🧩 Epics del MVP – TalentNest

Cada Epic representa un bloque funcional esencial para la construcción del MVP. Esta documentación servirá como referencia para el equipo de producto e ingeniería.

---

## 🟢 1. Onboarding de Usuario y Creación de Empresa

**Descripción**:  
Este Epic cubre el flujo inicial donde un nuevo usuario se registra, crea su empresa y configura su equipo. Incluye la validación de correo electrónico y la invitación de otros miembros al entorno colaborativo.

**Objetivo/Beneficio**:  
Permitir que nuevos usuarios accedan rápidamente a la plataforma y empiecen a trabajar en sus procesos de contratación. Esto reduce la fricción inicial y mejora la activación del producto.

**Criterios de aceptación a alto nivel**:
- Los usuarios pueden registrarse y validar su cuenta.
- Se puede crear una empresa y asociarla al usuario.
- Es posible invitar a miembros del equipo.
- Se accede a un flujo guiado tras el primer login.

---

## 🟢 2. Gestión de Usuarios y Autenticación

**Descripción**:  
Epic enfocado en la gestión de acceso a la plataforma: login, logout, control de sesiones, y roles de usuario. También contempla medidas de seguridad como el cumplimiento GDPR y soporte para futuras extensiones de autenticación.

**Objetivo/Beneficio**:  
Garantizar un acceso seguro y controlado a la plataforma, gestionando la identidad de los usuarios de forma escalable y conforme a normativas.

**Criterios de aceptación a alto nivel**:
- El sistema permite login/logout y recuperación de contraseña.
- Se asignan roles correctamente al ingresar.
- Las sesiones están protegidas y cumplen con estándares de seguridad.
- El sistema está preparado para MFA (aunque no se active en MVP).

---

## 🟢 3. Gestión de Compañías y Equipos

**Descripción**:  
Permite configurar y gestionar el perfil de empresa, su equipo y la relación entre usuarios y compañías. Incluye la edición de información organizacional y gestión de permisos.

**Objetivo/Beneficio**:  
Ofrecer un entorno colaborativo con estructuras claras para que varios usuarios trabajen en una misma empresa con distintos niveles de acceso.

**Criterios de aceptación a alto nivel**:
- Los perfiles de empresa se pueden crear, editar y eliminar.
- Los miembros del equipo pueden gestionarse desde un panel central.
- Cada miembro tiene un rol con permisos acordes.
- La información se refleja correctamente en otras secciones.

---

## 🟢 4. Creación y Publicación de Ofertas de Trabajo

**Descripción**:  
Este Epic cubre todo el proceso de redacción y publicación de una oferta, incluyendo la generación asistida por IA, vista previa y estado de publicación. También incluye la generación de una página pública por empresa.

**Objetivo/Beneficio**:  
Facilitar a los equipos la creación rápida y atractiva de ofertas, mejorando la visibilidad de sus posiciones abiertas y atrayendo mejores candidatos.

**Criterios de aceptación a alto nivel**:
- Las ofertas pueden crearse y editarse.
- La IA puede generar o enriquecer la descripción.
- Las ofertas se muestran en una página pública accesible.
- Se puede cambiar el estado (activa, pausada, cerrada).

---

## 🟢 5. Aplicación de Candidatos y CV Parsing

**Descripción**:  
Define el flujo por el cual un candidato aplica a una oferta y su información es procesada automáticamente. Incluye el parsing del CV y la generación de Snapshot Cards con ayuda de IA.

**Objetivo/Beneficio**:  
Reducir el tiempo de revisión de candidatos y estandarizar la información recibida, generando valor desde el primer contacto del usuario externo con la plataforma.

**Criterios de aceptación a alto nivel**:
- Candidatos externos pueden aplicar desde la página pública.
- El CV es parseado automáticamente y se genera una Snapshot Card.
- Se envía un mensaje de confirmación.
- La información del candidato se registra correctamente.

---

## 🟢 6. Gestión del Pipeline de Selección

**Descripción**:  
Permite visualizar y gestionar el pipeline de selección para cada oferta, mover candidatos entre etapas, crear nuevas etapas y dejar notas internas.

**Objetivo/Beneficio**:  
Ofrecer una experiencia visual y estructurada para que los equipos puedan evaluar y avanzar candidatos de forma colaborativa y organizada.

**Criterios de aceptación a alto nivel**:
- Los usuarios pueden crear y modificar etapas del pipeline.
- Los candidatos pueden moverse entre etapas mediante drag & drop.
- Se pueden agregar notas internas y calificaciones.
- Se registra el histórico de acciones por candidato.

---

## 🟢 7. Mensajería y Comunicación Automática

**Descripción**:  
Define la lógica y configuración de plantillas de comunicación automática que se envían al candidato según su interacción con el pipeline.

**Objetivo/Beneficio**:  
Automatizar la comunicación para mejorar la experiencia del candidato y reducir la carga operativa del equipo contratante.

**Criterios de aceptación a alto nivel**:
- Se pueden configurar plantillas por evento o etapa.
- Los mensajes se envían automáticamente al cumplirse las condiciones.
- Se registra el historial de envíos y se notifica en caso de fallo.
- Los candidatos reciben comunicaciones claras y coherentes.

---

## 🟢 8. Suscripciones, Facturación y Prueba Gratuita

**Descripción**:  
Gestiona la relación comercial con el cliente: desde la prueba gratuita, selección de plan, hasta la facturación automática mediante Stripe.

**Objetivo/Beneficio**:  
Habilitar la monetización del producto de forma transparente y escalable, ofreciendo una buena experiencia de compra al cliente.

**Criterios de aceptación a alto nivel**:
- Se activa automáticamente una prueba gratuita de 14 días.
- El usuario puede elegir un plan y realizar el pago.
- Las facturas se generan y son accesibles.
- Es posible cancelar o modificar la suscripción.

---

## 🟢 9. Dashboard de Contratación y Métricas Básicas

**Descripción**:  
Proporciona al usuario una vista general del estado de sus procesos de selección: número de ofertas, candidatos por etapa, conversiones, etc.

**Objetivo/Beneficio**:  
Dar visibilidad al rendimiento de contratación y ayudar a la toma de decisiones rápidas desde un punto centralizado.

**Criterios de aceptación a alto nivel**:
- El dashboard muestra KPIs clave para cada oferta activa.
- Se pueden ver tendencias básicas (tiempo por etapa, conversiones).
- La información está actualizada y sincronizada con el sistema.

---

## 🟢 10. Centro de Ayuda y Soporte In-App

**Descripción**:  
Incorpora un módulo de ayuda accesible desde la app, incluyendo preguntas frecuentes, contacto y espacio para feedback.

**Objetivo/Beneficio**:  
Reducir la fricción en el uso del producto y mejorar la retención de usuarios facilitando el autoservicio ante dudas comunes.

**Criterios de aceptación a alto nivel**:
- Existe una sección de ayuda navegable dentro de la app.
- Los usuarios pueden enviar feedback o solicitudes.
- El contenido es accesible durante el uso del producto.

---

## 🟢 11. Módulo de Integración IA (Job & Snapshot Assistant)

**Descripción**:  
Capa técnica que gestiona la comunicación entre TalentNest y los servicios externos de IA para generación de contenido y procesamiento de CVs.

**Objetivo/Beneficio**:  
Asegurar que las capacidades de IA se integren de forma eficiente y resiliente al backend, mejorando el valor ofrecido al usuario sin fricciones técnicas.

**Criterios de aceptación a alto nivel**:
- El backend puede conectarse con los servicios de IA.
- Se controla el uso (tokens, errores, límites).
- Los logs están disponibles para debug.
- Existen respuestas de fallback si la IA falla.

---

## 🟢 12. Sistema de Notificaciones y Eventos

**Descripción**:  
Gestión de eventos internos del sistema que desencadenan acciones como notificaciones por correo, registros y automatizaciones internas.

**Objetivo/Beneficio**:  
Mantener a los usuarios informados y sincronizados, al tiempo que se automatizan tareas clave sin intervención manual.

**Criterios de aceptación a alto nivel**:
- Los eventos clave generan acciones automáticas.
- Las notificaciones se envían a través de SES.
- Existe trazabilidad y control de errores.
- Las automatizaciones son configurables y trazables.

---

## 🟢 13. Panel de Administración Interna (Backoffice)

**Descripción**:  
Panel restringido para el equipo de soporte y administración del sistema, donde se pueden revisar logs, gestionar cuentas y monitorizar el uso.

**Objetivo/Beneficio**:  
Brindar herramientas internas para dar soporte, gestionar problemas o usuarios, y analizar el estado general del sistema.

**Criterios de aceptación a alto nivel**:
- El equipo puede acceder a información crítica del sistema.
- Es posible modificar datos relevantes con seguridad.
- Se pueden filtrar logs, feedback y suscripciones activas.

---

## 🟢 14. Infraestructura y DevOps para Despliegue

**Descripción**:  
Automatización del ciclo de despliegue, configuración de entornos, contenedores, monitoreo y seguridad en la infraestructura.

**Objetivo/Beneficio**:  
Asegurar que el equipo pueda desplegar con rapidez y confianza, con entornos escalables y observables desde el primer día.

**Criterios de aceptación a alto nivel**:
- El CI/CD está configurado con despliegue automático.
- Los servicios están contenizados y monitoreados.
- Se usan herramientas como ECS, CloudWatch y X-Ray.
- Los entornos están separados y bien configurados.

---

> 📝 Estos Epics forman la base funcional del MVP. Cada uno puede subdividirse en historias de usuario o tareas técnicas según el equipo y los objetivos de sprint.

