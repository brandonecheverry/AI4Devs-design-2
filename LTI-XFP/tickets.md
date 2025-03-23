# 🎯 Desglose técnico – Historia de Usuario 1.1: Registro de usuario

**Historia de usuario:**  
Como nuevo usuario,  
quiero poder registrarme con mi email y una contraseña,  
para que pueda crear una cuenta y acceder a TalentNest.

**Criterios de aceptación:**  
- El usuario puede registrarse mediante email y contraseña.  
- Se envía un email de verificación.  
- No se permite iniciar sesión hasta que se haya verificado el email.

---

## 🛠️ Tickets de trabajo (Sprint Ready)

### 🎟️ Ticket 1.1.1 – Crear formulario de registro (frontend)

**Descripción**: Diseñar e implementar la pantalla de registro en Next.js con los campos necesarios y validaciones.

**Tareas**:
- Crear la página `/register`.
- Incluir campos: email, contraseña, repetir contraseña.
- Validar en cliente:
  - Email válido
  - Contraseña mínima de 8 caracteres
  - Coincidencia de contraseñas
- Incluir mensajes de error y loader del botón.

**Tecnología**:
- React Hook Form
- Tailwind CSS
- Textos centralizados (i18n ready)

---

### 🎟️ Ticket 1.1.2 – Crear endpoint de registro de usuario (backend)

**Descripción**: Crear endpoint `POST /auth/register` en NestJS.

**Tareas**:
- Crear DTO con `class-validator`.
- Verificar email único.
- Hashear contraseña con bcrypt.
- Guardar usuario como “no verificado”.
- Generar token de verificación.
- Emitir evento para email de verificación (SNS o message-service).

**Tecnología**:
- Prisma, NestJS, bcrypt, UUID/JWT
- Pruebas unitarias con Jest

---

### 🎟️ Ticket 1.1.3 – Implementar email de verificación

**Descripción**: Generar email con enlace de activación único.

**Tareas**:
- Crear plantilla para SES (o message-service).
- Generar enlace `/verify?token=...`
- Enviar email tras creación de usuario.

**Requisitos**:
- Enlace seguro, usable una sola vez.
- Expiración configurable (24h por defecto)

---

### 🎟️ Ticket 1.1.4 – Crear endpoint de verificación de cuenta

**Descripción**: Endpoint `GET /auth/verify?token=...` para activar la cuenta.

**Tareas**:
- Validar existencia y expiración del token.
- Marcar usuario como verificado.
- Invalidar token una vez usado.
- Redirigir a página de éxito o error.

**Requisitos**:
- Soporte para tokens inválidos, ya usados o expirados.
- Pruebas unitarias del flujo.

---

### 🎟️ Ticket 1.1.5 – Conectar formulario con backend (frontend)

**Descripción**: Lógica para enviar los datos del formulario al backend.

**Tareas**:
- Llamar a `POST /auth/register` desde frontend.
- Mostrar mensaje de éxito tras envío.
- Manejar errores del backend (email ya registrado, etc.).

**Tecnología**:
- React Query o equivalente
- Diseño accesible

---

### 🎟️ Ticket 1.1.6 – Crear pruebas E2E del flujo completo

**Descripción**: Validar el flujo de extremo a extremo desde el registro hasta la verificación.

**Tareas**:
- Simular formulario de registro (Cypress).
- Verificar creación de usuario y recepción de email.
- Confirmar que no se puede hacer login sin verificar.
- Confirmar que se puede hacer login después de verificar.

**Tecnología**:
- Cypress / Playwright
- Mocking de SES o inspección de evento

---

### 🎟️ Ticket 1.1.7 – Configurar restricciones de seguridad y antifraude

**Descripción**: Añadir medidas básicas de protección contra spam y abuso.

**Tareas**:
- Limitar intentos de registro por IP (rate limit).
- Añadir captcha (opcional en MVP).
- Prevenir uso de emails desechables.

**Tecnología**:
- NestJS Throttler
- Future-ready para reCAPTCHA v3

---

## ✅ Resultado esperado

- Un nuevo usuario puede registrarse desde el frontend.
- Recibe un email con enlace seguro para activar su cuenta.
- No puede iniciar sesión hasta verificar.
- Flujo completamente testeado.
- Backend robusto y seguro.


