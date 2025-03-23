# 🎯 Desglose técnico – Historia de Usuario 1.1: Registro de usuario

**Historia de usuario:**  
Como nuevo usuario,  
quiero poder registrarme con mi email y una contraseña,  
para que pueda crear una cuenta y acceder a TalentNest.

**Criterios de aceptación generales:**  
- El usuario puede registrarse mediante email y contraseña.  
- Se envía un email de verificación.  
- No se permite iniciar sesión hasta que se haya verificado el email.

---

## 🎟️ Ticket 1.1.1 – Crear formulario de registro (frontend)

**Descripción**: Diseñar e implementar la pantalla de registro en Next.js con los campos necesarios y validaciones de cliente.

### Subtareas:
- Crear la página `/register`.
- Campos: email, contraseña, repetir contraseña.
- Validaciones: formato email, longitud mínima, coincidencia de contraseñas.
- Mostrar errores inline y botón con loader.
- Preparar para i18n.
- Estilar con Tailwind CSS.

### ✅ Criterios de aceptación:
- Given que accedo a la URL `/register`, When la página carga, Then debería ver los campos necesarios y el botón.
- Given que introduzco datos inválidos, When intento enviar el formulario, Then debería ver errores y no se debe enviar.
- Given que todo es válido, When hago clic en “Registrarme”, Then se muestra el loader y se desactiva el botón.

### 🔺 Prioridad: Alta  
### 🧮 Estimación: 2 puntos (8 horas)

---

## 🎟️ Ticket 1.1.2 – Crear endpoint de registro de usuario (backend)

**Descripción**: Crear endpoint `POST /auth/register` en NestJS para registrar nuevos usuarios.

### Subtareas:
- DTO de validación.
- Validar email único.
- Hashear contraseña (bcrypt).
- Guardar usuario no verificado.
- Generar token de verificación (UUID/JWT).
- Emitir evento de envío de email.
- Pruebas unitarias.

### ✅ Criterios de aceptación:
- Given un email válido, When llamo al endpoint, Then el usuario se guarda como no verificado.
- Given un email ya registrado, Then respuesta 409 Conflict.
- Given creación exitosa, Then se emite evento de envío de email.

### 🔺 Prioridad: Alta  
### 🧮 Estimación: 5 puntos (20 horas)

---

## 🎟️ Ticket 1.1.3 – Implementar email de verificación

**Descripción**: Enviar email con enlace de verificación al nuevo usuario.

### Subtareas:
- Plantilla HTML + texto plano.
- Enlace `/verify?token=xxx`.
- Enviar desde SES o message-service.
- Expiración del token (24h).
- Control de errores y logs.

### ✅ Criterios de aceptación:
- Given un registro exitoso, Then el usuario recibe un email con enlace de verificación.
- Given un fallo en envío, Then debe registrarse en logs.
- Given que accedo al enlace, Then la URL debe ser válida.

### 🔺 Prioridad: Alta  
### 🧮 Estimación: 3 puntos (12 horas)

---

## 🎟️ Ticket 1.1.4 – Crear endpoint de verificación de cuenta

**Descripción**: Implementar `GET /auth/verify?token=xxx` para activar la cuenta.

### Subtareas:
- Validar token y expiración.
- Cambiar estado de usuario a verificado.
- Invalidar token tras uso.
- Redirigir al frontend con `status=success|error`.
- Pruebas unitarias.

### ✅ Criterios de aceptación:
- Given token válido, Then se activa cuenta y se redirige al frontend.
- Given token inválido o expirado, Then se responde con error adecuado.

### 🔺 Prioridad: Alta  
### 🧮 Estimación: 3 puntos (12 horas)

---

## 🎟️ Ticket 1.1.5 – Conectar formulario con backend (frontend)

**Descripción**: Conectar el formulario con el endpoint de backend y gestionar estados.

### Subtareas:
- Llamada a `POST /auth/register`.
- Captura de errores (validación, duplicados).
- Desactivar botón durante envío.
- Mostrar mensaje de confirmación o error.
- Accesibilidad y usabilidad.

### ✅ Criterios de aceptación:
- Given que los datos son válidos, Then la llamada se realiza y se muestra el mensaje de éxito.
- Given que hay errores, Then el usuario ve mensajes claros.

### 🔺 Prioridad: Alta  
### 🧮 Estimación: 2 puntos (8 horas)

---

## 🎟️ Ticket 1.1.6 – Crear pruebas E2E del flujo de registro

**Descripción**: Validar el flujo completo: registro → email → verificación → login.

### Subtareas:
- Simular formulario.
- Validar token generado.
- Mock de email o inspección del token.
- Simular verificación.
- Probar login antes y después de verificar.

### ✅ Criterios de aceptación:
- Given el flujo completo, Then todos los pasos deben validarse exitosamente.
- Given un usuario sin verificar, Then no puede loguearse.
- Given que verifica, Then puede loguearse.

### 🔺 Prioridad: Media  
### 🧮 Estimación: 5 puntos (20 horas)

---

## 🎟️ Ticket 1.1.7 – Configurar restricciones de seguridad y antifraude

**Descripción**: Proteger el endpoint de registro contra abuso.

### Subtareas:
- Rate limiting por IP (`POST /auth/register`).
- Opción de integración futura con CAPTCHA.
- Rechazo de emails desechables.
- Log de intentos anómalos.

### ✅ Criterios de aceptación:
- Given múltiples intentos por IP, Then se bloquea temporalmente con `429 Too Many Requests`.
- Given email desechable, Then se rechaza con error válido.
- Given actividad sospechosa, Then se registra para análisis.

### 🔺 Prioridad: Media  
### 🧮 Estimación: 5 puntos (20 horas)

---

## 🔢 Resumen total – Historia 1.1

| Ticket ID | Título | Puntos |
|-----------|--------|--------|
| 1.1.1 | Crear formulario (frontend) | 2 |
| 1.1.2 | Endpoint de registro (backend) | 5 |
| 1.1.3 | Email de verificación | 3 |
| 1.1.4 | Endpoint de verificación | 3 |
| 1.1.5 | Conexión frontend-backend | 2 |
| 1.1.6 | Pruebas E2E | 5 |
| 1.1.7 | Seguridad y antifraude | 5 |

**Total estimado: 25 puntos (100 horas de trabajo)**

