# Prompts para Generación y Priorización de User Stories

Estos prompts están diseñados para ayudarte a crear User Stories detalladas, establecer un backlog estratégico, y generar tickets de trabajo técnicos claros, utilizando metodologías avanzadas como MoSCoW, WSJF, y técnicas ágiles de estimación.

**IA utilizada: Claude Sonnet 3.7 y ChatGPT-4o**

---

## Prompt 1: Adquisición y Análisis de Documentos de PRD Básico

**Actúa como un Product Manager y Business Analyst.**
Te voy a adjuntar los documentos que conforman un PRD básico (funcionalidades clave, casos de uso, modelo de datos…). Tu tarea es revisar, analizar y estructurar estos documentos para entender las funcionalidades y requisitos del producto.

---

## Prompt 2: Creación de User Stories con Enfoque Avanzado

**Actúa como un Product Manager y Business Analyst senior con amplia experiencia en la implementación de LTI (Learning Tools Interoperability).**

Tu misión es generar User Stories de altísima calidad a partir del PRD existente. Estas User Stories deben ser:

- Claras y precisas
- Aterrizadas técnicamente
- Priorizadas estratégicamente

Formato de User Story (Adaptado de INVEST y BDD):

- **ID**: (Código único, ej. LTI-US-001)
- **Título**: (Conciso y claro)
- **Rol del usuario**: "Como [tipo de usuario]"
- **Objetivo**: "Quiero [acción]"
- **Beneficio**: "Para [resultado esperado]"
- **Criterios de aceptación (BDD - Given/When/Then)**:
  - **Given** [contexto]
  - **When** [acción]
  - **Then** [resultado esperado]
- **Impacto en la experiencia del usuario**: (Cómo mejora la UX/UI o accesibilidad)
- **Factores técnicos relevantes**: (API, autenticación, dependencias)
- **Riesgos y limitaciones**: (Posibles bloqueos o retos técnicos)
- **Extra**: Aplica la matriz MoSCoW (Must have, Should have, Could have, Won't have) para cada historia.

Genera al menos 5 User Stories altamente detalladas que sean insuperables en claridad y alineación con los objetivos del negocio.

---

## Prompt 3: Creación de un Backlog Estratégico y Priorizado con WSJF y MoSCoW

**A partir de las User Stories generadas en el paso anterior, construye un Backlog de Producto aplicando técnicas avanzadas de priorización.**

Formato del Backlog:

- **ID**: (Ejemplo: LTI-BG-001)
- **Título**: (Nombre de la historia de usuario)
- **Descripción breve**: (Resumen en 1-2 frases)
- **Prioridad MoSCoW**: (Must, Should, Could, Won’t)
- **Puntaje WSJF**: (Weighted Shortest Job First)
- **Valor para el negocio**: (1-10)
- **Urgencia temporal**: (1-10)
- **Reducción de riesgo/u oportunidad de negocio**: (1-10)
- **Esfuerzo estimado**: (1-10)
- **WSJF Score**: (Cálculo = (Negocio + Urgencia + Reducción de riesgo) / Esfuerzo)
- **Dependencias**: (Si existen bloqueos o requisitos previos)

**Extra**: Experimenta priorizando primero con MoSCoW y luego con WSJF. Analiza cuál metodología aporta más valor en este caso y justifica tu elección.

---

## Prompt 4: Generación de Tickets de Trabajo con Desglose Técnico y Dependencias

**A partir de una User Story seleccionada, genera una lista detallada de tickets de trabajo listos para ser implementados por el equipo de desarrollo.**

Formato de los tickets de trabajo:

- **ID**: (Ejemplo: LTI-TK-001)
- **Título del ticket**: (Acción específica)
- **Descripción técnica**: (Explicación detallada con información relevante para el equipo técnico)
- **Criterios de aceptación (BDD - Given/When/Then)**
- **Requisitos previos**: (Si requiere integración con otra funcionalidad)
- **Responsable**: (Backend, Frontend, DevOps, etc.)
- **Dependencias**: (Otros tickets, APIs externas, módulos existentes)

**Extra**: Para cada ticket, genera al menos una pregunta clave que el equipo debería resolver en la planificación técnica.

---

## Prompt 5 (Extra): Estimación de Esfuerzo con Dos Métodos y Comparación

**A partir de los tickets de trabajo generados, asigna estimaciones de esfuerzo utilizando dos metodologías distintas:**

- **Estimación con Puntos de Historia** (Fibonacci: 1, 2, 3, 5, 8, 13, etc.)
- **Estimación con Tallas de Camiseta** (XS, S, M, L, XL)

Formato de la estimación:

- **ID del ticket**: (Ejemplo: LTI-TK-001)
- **Estimación en Puntos de Historia**: (Valor de la secuencia de Fibonacci)
- **Estimación en Talla de Camiseta**: (XS, S, M, L, XL)
- **Justificación de la estimación**: (Razón por la cual se asignó ese esfuerzo)

**Extra**: Compara las diferencias entre ambas metodologías y explica cuál sería más útil en este contexto.
