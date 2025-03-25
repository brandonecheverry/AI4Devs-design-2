## Estimación de Esfuerzo para Tickets de Trabajo de HU1: Registro de Candidato

**Metodología:** Fibonacci (1, 2, 3, 5, 8, 13, 20)
**Unidades:** Puntos de Historia

### Ticket 1. Diseño de la Interfaz de Registro
- **Descripción:** Diseñar la interfaz de usuario para el formulario de registro de candidatos.
- **Responsable:** [Nombre del Diseñador UI/UX]
- **Prioridad:** Alta
- **Estado:** Pendiente
- **Criterios de Aceptación:**
    - La interfaz debe ser intuitiva y fácil de usar.
    - Debe ser compatible con dispositivos móviles.
    - Debe incluir campos para nombre, email, contraseña y otros datos básicos.
- **Historias de Usuario Relacionadas:** HU1
- **Estimación:** 5 puntos

### Ticket 2. Implementación del Backend para el Registro
- **Descripción:** Implementar la lógica del backend para procesar el registro de candidatos.
- **Responsable:** [Nombre del Desarrollador Backend]
- **Prioridad:** Alta
- **Estado:** Pendiente
- **Criterios de Aceptación:**
    - El sistema debe validar los datos ingresados por el usuario.
    - El sistema debe almacenar los datos del usuario en la base de datos.
    - El sistema debe generar y enviar un email de confirmación.
- **Historias de Usuario Relacionadas:** HU1
- **Estimación:** 8 puntos

### Ticket 3. Validación de Email
- **Descripción:** Implementar la funcionalidad para validar que el email ingresado no esté ya registrado en el sistema.
- **Responsable:** [Nombre del Desarrollador Backend]
- **Prioridad:** Alta
- **Estado:** Pendiente
- **Criterios de Aceptación:**
    - El sistema debe verificar si el email existe en la base de datos.
    - El sistema debe mostrar un mensaje de error si el email ya está registrado.
- **Historias de Usuario Relacionadas:** HU1
- **Estimación:** 3 puntos

### Ticket 4. Envío de Email de Confirmación
- **Descripción:** Configurar y probar el envío de emails de confirmación a los candidatos después del registro.
- **Responsable:** [Nombre del Desarrollador Backend]
- **Prioridad:** Media
- **Estado:** Pendiente
- **Criterios de Aceptación:**
    - El email debe ser enviado inmediatamente después del registro.
    - El email debe contener un enlace de confirmación.
    - El email debe ser personalizable.
- **Historias de Usuario Relacionadas:** HU1
- **Estimación:** 3 puntos

### Ticket 5. Integración con Redes Sociales (Opcional)
- **Descripción:** Implementar la integración con redes sociales para facilitar el registro (ej. Google, Facebook).
- **Responsable:** [Nombre del Desarrollador Frontend/Backend]
- **Prioridad:** Baja
- **Estado:** Pendiente
- **Criterios de Aceptación:**
    - El usuario debe poder registrarse usando su cuenta de redes sociales.
    - Los datos básicos del usuario deben ser importados desde la red social.
- **Historias de Usuario Relacionadas:** HU1, HU2
- **Estimación:** 5 puntos