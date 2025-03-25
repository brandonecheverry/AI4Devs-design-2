# 🚀 **Planificación de Sprints para LTIR (Lead Talent Insight Recruit)**  

Este documento contiene la planificación de **Sprints** para la implementación de LTIR, basándose en el **Backlog de Producto** y los **Tickets de Trabajo** previamente definidos.  
👉 La planificación se basa en:  
✅ Un **Sprint** dura **2 semanas** (10 días hábiles).  
✅ La **capacidad promedio** del equipo es de **30 puntos por sprint** (basado en velocidad esperada).  
✅ La **prioridad** y **complejidad** de cada ticket determina el orden de asignación.  
✅ Los sprints incluyen tareas de desarrollo, configuración, pruebas y despliegue.  
✅ La meta es entregar un **MVP funcional** al final del Sprint 5 (~2.5 meses).  

---

## 🏆 **1. Resumen de la Planificación**
| **Parámetro** | **Valor** |
|--------------|-----------|
| **Duración del Sprint** | 2 semanas (10 días hábiles) |
| **Capacidad por Sprint** | 30 puntos |
| **Total de Puntos Estimados** | 223 puntos |
| **Número de Sprints Requeridos** | 8 Sprints (~4 meses) |
| **Fecha de Inicio** | Lunes 1 de Abril, 2025 |
| **Fecha de Finalización** | Viernes 1 de Agosto, 2025 |

---

## 🏗️ **2. Distribución de Sprints**
### ✅ **Sprint 1 - Setup Inicial y Módulo de Vacantes**  
**Duración:** 2 semanas (10 días hábiles)  
**Capacidad:** 30 puntos  
**Objetivo:** Configurar la infraestructura base y el módulo de publicación de vacantes  

| ID | Título | Estimación | Tipo | Responsable |
|-----|--------|------------|------|------------|
| T-001 | Crear módulo para publicación de vacantes | 8 | Feature | Equipo Backend |
| T-002 | Integración con LinkedIn para publicación automática | 8 | Feature | Equipo Backend |
| T-013 | Configurar entorno de Redis para cachear datos de sesión | 3 | Tarea Técnica | Equipo Infraestructura |
| T-014 | Diseñar y configurar pipeline de CI/CD | 5 | Tarea Técnica | Equipo DevOps |
| T-015 | Integración con AWS S3 para almacenamiento de currículums | 3 | Tarea Técnica | Equipo Infraestructura |
| **Total:** | | **30 puntos** | | |

---

### ✅ **Sprint 2 - Matching Inteligente y Perfil de Candidato**  
**Duración:** 2 semanas (10 días hábiles)  
**Capacidad:** 30 puntos  
**Objetivo:** Implementar el algoritmo de IA y las funcionalidades del perfil del candidato  

| ID | Título | Estimación | Tipo | Responsable |
|-----|--------|------------|------|------------|
| T-003 | Implementar algoritmo de IA para matching de candidatos | 13 | Feature | Equipo de IA |
| T-009 | Crear módulo de perfil de candidato | 5 | Feature | Equipo Backend |
| T-021 | Crear endpoint REST para búsquedas avanzadas | 5 | Tarea Técnica | Equipo Backend |
| T-016 | Implementar OAuth2 + JWT para autenticación | 8 | Tarea Técnica | Equipo Backend |
| **Total:** | | **30 puntos** | | |

---

### ✅ **Sprint 3 - Pipeline y Feedback Automático**  
**Duración:** 2 semanas (10 días hábiles)  
**Capacidad:** 30 puntos  
**Objetivo:** Implementar el pipeline y la funcionalidad de feedback  

| ID | Título | Estimación | Tipo | Responsable |
|-----|--------|------------|------|------------|
| T-006 | Crear interfaz para visualización de pipeline | 8 | Feature | Equipo Frontend |
| T-007 | Implementar módulo de feedback estructurado | 8 | Feature | Equipo Backend |
| T-023 | Refactorizar módulo de pipeline para automatización por reglas | 5 | Tarea Técnica | Equipo Backend |
| T-025 | Crear endpoint REST para generación y descarga de reportes | 3 | Tarea Técnica | Equipo Backend |
| T-024 | Configurar logging y monitoreo con Prometheus y Grafana | 5 | Tarea Técnica | Equipo DevOps |
| **Total:** | | **30 puntos** | | |

---

### ✅ **Sprint 4 - Notificaciones y Reportes**  
**Duración:** 2 semanas (10 días hábiles)  
**Capacidad:** 30 puntos  
**Objetivo:** Configurar las notificaciones y generación de reportes  

| ID | Título | Estimación | Tipo | Responsable |
|-----|--------|------------|------|------------|
| T-004 | Crear API para estado de aplicaciones | 5 | Feature | Equipo Backend |
| T-005 | Crear servicio de notificaciones | 5 | Feature | Equipo Backend |
| T-011 | Integrar DocuSign para firma de contratos | 5 | Feature | Equipo Backend |
| T-017 | Crear dashboard para métricas clave | 8 | Feature | Equipo de Analytics |
| T-018 | Crear módulo para alertas automáticas | 5 | Feature | Equipo Backend |
| **Total:** | | **30 puntos** | | |

---

### ✅ **Sprint 5 - IA y Ajuste de Reglas**  
**Duración:** 2 semanas (10 días hábiles)  
**Capacidad:** 30 puntos  
**Objetivo:** Mejorar el algoritmo de IA y ajustar reglas del pipeline  

| ID | Título | Estimación | Tipo | Responsable |
|-----|--------|------------|------|------------|
| T-012 | Crear sistema de evaluación técnica automática | 13 | Feature | Equipo de IA |
| T-019 | Crear módulo de recomendaciones personalizadas | 8 | Feature | Equipo de IA |
| T-026 | Mejorar precisión del algoritmo de matching | 5 | Mejora | Equipo de IA |
| T-027 | Optimizar rendimiento de consultas PostgreSQL | 4 | Mejora | Equipo Backend |
| **Total:** | | **30 puntos** | | |

---

### ✅ **Sprint 6 - Ajustes y Testing**  
**Duración:** 2 semanas (10 días hábiles)  
**Capacidad:** 30 puntos  
**Objetivo:** Optimizar rendimiento y realizar pruebas finales  

| ID | Título | Estimación | Tipo | Responsable |
|-----|--------|------------|------|------------|
| T-028 | Simulación de pruebas para análisis de rendimiento | 8 | Spike | Equipo DevOps |
| T-029 | Implementar validación de datos | 3 | Mejora | Equipo Backend |
| T-030 | Análisis de rendimiento y escalabilidad | 5 | Spike | Equipo Infraestructura |
| T-022 | Implementar permisos RBAC | 5 | Tarea Técnica | Equipo Backend |
| **Total:** | | **30 puntos** | | |

---

## ✅ **3. Resumen de Sprints**
| **Sprint** | **Duración** | **Objetivo Principal** | **Puntos** |
|-----------|--------------|-----------------------|------------|
| **Sprint 1** | 2 semanas | Configurar base del sistema y módulo de vacantes | 30 |
| **Sprint 2** | 2 semanas | Algoritmo de IA y perfil de candidato | 30 |
| **Sprint 3** | 2 semanas | Pipeline y feedback | 30 |
| **Sprint 4** | 2 semanas | Notificaciones y reportes | 30 |
| **Sprint 5** | 2 semanas | IA y matching inteligente | 30 |
| **Sprint 6** | 2 semanas | Ajustes y pruebas | 30 |
| **Total** | **12 semanas (~3 meses)** | **MVP Funcional** | **180 puntos** |

---

## 🌟 **Estimación Total del Proyecto**
- **Total de Puntos:** 223  
- **Capacidad por Sprint:** 30  
- **Sprints Requeridos:** 8  
- **Duración Total:** 16 semanas (~4 meses)  
- **Fecha de Inicio:** Lunes 1 de Abril, 2025  
- **Fecha de Finalización:** Viernes 1 de Agosto, 2025  

---
