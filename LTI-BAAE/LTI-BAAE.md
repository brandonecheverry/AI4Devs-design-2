# Historias de Usuario - Sistema de Reservas de Canchas Sintéticas

---

## **US-01: Registro de Usuario**  
### **Como** usuario nuevo,  
### **quiero** registrarme con email y contraseña,  
### **para** acceder al sistema y realizar reservas.  

#### **Criterios de Aceptación**  
1. Formulario con campos: email, contraseña (mínimo 8 caracteres, 1 mayúscula, 1 número)  
2. Validación en tiempo real de formato de email (ejemplo: usuario@dominio.com)  
3. Envío automático de email de confirmación con enlace de verificación  
4. Mensajes claros de error/success (ej: "Email inválido" o "Registro exitoso - Verifica tu correo")  

#### **Notas Adicionales**  
- Usar servicio SendGrid para envío de emails  
- Implementar bcrypt para hash de contraseñas  
- Campos obligatorios marcados con asterisco rojo (*)  

#### **Historias Relacionadas**  
- US-02 (Inicio de sesión)  
- US-03 (Recuperación de contraseña)  

#### **Definición de Done (DoD)**  
- [ ] Pruebas unitarias de validación de email/contraseña  
- [ ] Flujo completo probado en dispositivos móviles  
- [ ] Documentación técnica en Confluence  

---

## **US-04: Búsqueda de Canchas**  
### **Como** usuario,  
### **quiero** buscar canchas por ubicación y fecha,  
### **para** encontrar disponibilidad rápidamente.  

#### **Criterios de Aceptación**  
1. Barra de búsqueda con autocompletado (Google Places API)  
2. Calendario interactivo que:  
   - Deshabilita días pasados  
   - Muestra disponibilidad con colores (verde=disponible, rojo=ocupado)  
3. Resultados en cards con:  
   - Foto principal (16:9 ratio)  
   - Precio por hora (formato: $XX.XX)  
   - Distancia desde ubicación buscada  

#### **Notas Adicionales**  
- Priorizar carga lazy de imágenes  
- Cachear resultados por 5 minutos para mejorar performance  

#### **Historias Relacionadas**  
- US-05 (Detalles de cancha)  
- US-06 (Reserva de horario)  

#### **Definición de Done (DoD)**  
- [ ] Test de carga con 100 usuarios simultáneos  
- [ ] Integración con API de disponibilidad verificada  
- [ ] Aprobación por UX Designer  

---

## **US-07: Proceso de Pago**  
### **Como** usuario,  
### **quiero** pagar mi reserva con tarjeta o transferencia,  
### **para** confirmar mi reserva inmediatamente.  

#### **Criterios de Aceptación**  
1. Integración con Stripe para:  
   - Tarjetas (Visa/MC/Amex)  
   - Wallet (Apple Pay/Google Pay)  
2. Formulario seguro que:  
   - Valida número de tarjeta con Luhn algorithm  
   - Muestra icono de tarjeta detectada (Visa/MC/etc)  
3. Flujo alternativo para transferencia bancaria (genera CLABE con referencia)  

#### **Notas Adicionales**  
- Cumplir con PCI DSS Nivel 4  
- No almacenar datos sensibles (usar tokens de Stripe)  

#### **Historias Relacionadas**  
- US-08 (Confirmación de reserva)  
- US-10 (Reembolsos)  

#### **Definición de Done (DoD)**  
- [ ] Auditoría de seguridad OWASP pasada  
- [ ] Pruebas con tarjetas sandbox (éxito/error)  
- [ ] Documentación legal de términos de pago  

---

## **US-11: Gestión de Canchas (Admin)**  
### **Como** administrador,  
### **quiero** gestionar el catálogo de canchas,  
### **para** mantener actualizada la oferta.  

#### **Criterios de Aceptación**  
1. CRUD completo con:  
   - Formulario con validación (todos los campos obligatorios)  
   - Upload de imágenes (máx 5MB, JPG/PNG)  
   - Preview en tiempo real de cambios  
2. Dashboard con:  
   - Filtros por estado (activas/inactivas)  
   - Búsqueda por nombre/dirección  

#### **Notas Adicionales**  
- Requiere rol de admin (JWT claim "isAdmin=true")  
- Implementar soft delete para eliminaciones  

#### **Historias Relacionadas**  
- US-12 (Reportes)  
- US-04 (Búsqueda)  

#### **Definición de Done (DoD)**  
- [ ] Pruebas de permisos (solo admin accede)  
- [ ] Documentación en Swagger  
- [ ] Backup automático de datos configurado  