
# Conclusiones del prompting

## Valor de la Colaboración Interdisciplinaria

La fortaleza principal de este ejercicio fue la simulación de una colaboración interdisciplinaria auténtica entre los roles de Product Manager (PM), Business Analyst (BA) y Senior Developer. Esta dinámica permitió abordar la planificación desde múltiples ángulos:

- **Desde la perspectiva de negocio** (PM): Enfocando en la entrega de valor y la priorización estratégica de características.
- **Desde la perspectiva del usuario** (BA): Asegurando que las funcionalidades satisfagan las necesidades reales de los usuarios.
- **Desde la perspectiva técnica** (Senior Dev): Aportando conocimiento sobre la complejidad de implementación y factibilidad técnica.

El formato de planning poker demostró ser especialmente valioso para obtener estimaciones más equilibradas, reduciendo los sesgos individuales que suelen surgir cuando las estimaciones provienen de una sola perspectiva. Este enfoque resulta particularmente importante en entornos de alta volatilidad donde las prioridades y requisitos pueden cambiar rápidamente.

## Desafíos Técnicos y Limitaciones

El proceso reveló algunas limitaciones importantes del uso de LLMs para este tipo de tareas:

- **Alto consumo de tokens y contexto**: La naturaleza detallada de las discusiones sobre múltiples historias de usuario y tickets requiere un uso intensivo de tokens. Optimizar este proceso para manejar múltiples tickets simultáneamente sería beneficioso.

- **Consistencia a lo largo de interacciones extensas**: A medida que aumentaba el número de interacciones, se observaron ocasionalmente alucinaciones e inconsistencias, con el modelo olvidando algunas directivas previas o generando tickets inexistentes.

- **Necesidad de confirmación constante**: Fue necesario revisar continuamente las respuestas para asegurar que el modelo siguiera las instrucciones correctamente, especialmente en las actualizaciones al documento principal.

## Beneficios y Aproximación a Procesos Reales

A pesar de los desafíos, el ejercicio demostró un valor significativo:

- **Simulación realista**: El proceso refleja fielmente la dinámica de las sesiones de planificación en equipos ágiles reales, incluyendo las discusiones, negociaciones y consensos necesarios para estimar correctamente.

- **Documentación estructurada**: El enfoque generó un backlog bien organizado con historias de usuario detalladas, tickets específicos y estimaciones consensuadas, similar a lo que se utilizaría en un entorno de producción.

- **Priorización estratégica**: La combinación del método MoSCoW con la consideración de dependencias técnicas permitió crear un roadmap realista y orientado a la entrega incremental de valor.

## Mejoras Potenciales para Futuras Iteraciones

Para optimizar este tipo de ejercicios en el futuro, podríamos considerar:

- **División estratégica del contexto**: Separar las sesiones por épicas o grupos de funcionalidades relacionadas para reducir la carga de contexto.

- **Utilización de herramientas complementarias**: Integrar con herramientas de gestión de proyectos para visualizar y manipular el backlog de manera más eficiente.

- **Plantillas predefinidas**: Establecer estructuras estandarizadas para historias y tickets desde el principio para mantener la consistencia.

- **Sesiones más enfocadas**: Limitar el alcance de cada sesión a un número manejable de historias de usuario o tickets para mantener la calidad de las interacciones.

## Conclusión General

Este ejercicio demuestra el potencial de los LLMs como asistentes en procesos de planificación ágil, facilitando debates estructurados y documentación sistemática. La capacidad de simular diferentes roles y perspectivas proporciona un entorno rico para la toma de decisiones, aunque con limitaciones que requieren supervisión humana.

La experiencia se acerca notablemente a los procesos reales de planificación en equipos de desarrollo, lo que sugiere que estas herramientas pueden servir como complemento valioso para sesiones de planificación, especialmente en escenarios donde es difícil reunir a todo el equipo simultáneamente o como preparación para sesiones presenciales.
