# Talento Express MVP Documentation Prompt

Create implementation documentation for an AI-based recruiting system (Talento Express), based on the concept described in the file **./LT-AG/LT-AG.md**. This documentation will serve as a guide for MVP development and contains detailed information about the Talento Express system, including features, architecture, and market positioning. Please use a clear hierarchy of Epic > User Story > Task and use Mermaid diagrams where needed.

Please save the output to **./UserStories-AG.md**

## Table of Contents

1. Project Overview
2. Epics
3. User Stories
4. Product Backlog
5. Sprint Backlog
6. Implementation Details for Tasks T-01 & T-02
7. Effort Estimation
8. Expected Output

## Context

1. **Project Overview**

   _Role: Product Manager with vision for AI-powered recruitment solutions_

   Provide a brief introduction of what Talento Express MVP should deliver as the first version.

2. **Epics**

   _Role: Senior Product Manager with expertise in enterprise software and recruitment systems_

   Define high-level epics that capture the core functionality:

   - Epic ID: E-XX
   - Title
   - Description
   - Business Value

3. **User Stories**

   _Role: Agile Business Analyst specialized in user story creation and refinement_

   Create user stories for the first epic following this format:

   - User Story ID: US-XX
   - Title
   - Epic ID reference
   - Description
   - "As [role], I want [feature], so that [benefit]"

4. **Product Backlog**

   _Role: Product Owner with expertise in MoSCoW prioritization and backlog management_

   Organize the work pipeline in a single hierarchical table:

   - Include all levels (Epics, User Stories, and Tasks) in one integrated view
   - Use a single ASCII table with this format:
     ```
     | Epic ID | User Story ID | Task ID | Description | Priority | T-shirt Size |
     |---------|---------------|---------|--------------|----------|--------------|
     | E-01    |               |         | Epic 1 Title | Must     |              |
     | E-01    | US-01         |         | Story 1      | Must     | L            |
     | E-01    | US-01         | T-01    | Task 1       | Must     | S            |
     | E-01    | US-01         | T-02    | Task 2       | Must     | XS           |
     ```
   - Group tasks under their respective user stories, and stories under their epics

5. **Sprint Backlog**

   _Role: Technical Team Lead with experience in breaking down user stories into technical tasks_

   Plan the first sprint implementation:

   - Focus on a single feature (e.g., "CV File Upload and Parsing") and break it down into small, specific tasks
   - Create a list of 4 tasks (2 for frontend, 2 for backend) for the selected feature
   - Each task should be small, focused, and achievable within 1-2 days by a single developer
   - For each task include:
     - Task ID: T-XX
     - Title (concise, action-oriented)
     - Layer (Frontend/Backend)
     - Assigned to
     - Story Points (using Fibonacci sequence)
     - Equivalent effort in hours
     - Order by Moscow priority

   Example Sprint Backlog (Moscow priority) table (ASCII format):

   ```
   | Task ID | Short Title            | Layer    | Assigned | Story Points | Effort     |
   |---------|------------------------|----------|----------|--------------|------------|
   | T-01    | Create Upload Widget   | Frontend | Miguel   | 2            | ~4h        |
   | T-02    | Build Upload Endpoint  | Backend  | Sofia    | 3            | ~8h        |
   ```

   - Add a Mermaid Gantt chart to visualize the sprint timeline
   - Note: All tasks should be defined, but only T-01 and T-02 will be implemented in detail in the next section

6. **Implementation Details for Tasks T-01 & T-02**

   _Role: Senior Full-stack Developer with expertise in Node.js, React, PostgreSQL, and AWS_

   Provide technical specifications for Tasks T-01 & T-02 without any code implementation:
   For each task, include ONLY the following sections that are relevant to that specific task

   - Create a Mermaid sequence diagram showing the interaction between components

   - **Task Overview**:

     - Clear description
     - Definition of done
     - Dependencies with other tasks or components

   - For Frontend Tasks:

     - Component purpose and responsibilities
     - User interaction flow
     - Props/state requirements
     - UI/UX considerations

   - For Backend Tasks:

     - Endpoint definition (if applicable)
     - Request/response format
     - Data flow
     - Error cases to handle

   - **Testing Approach**:
     - What aspects need to be tested
     - Edge cases to consider
     - Unit test
     - Integration test
     - E2E

   Do NOT include unnecessary details.

7. **Effort Estimation**

   _Role: Scrum Master with expertise in agile estimation techniques_

   Provide a detailed effort estimation for all tasks using the Fibonacci sequence:

   - Create a table with story points estimates (1, 2, 3, 5, 8, 13, 21) for each task
   - Include clear justification for each estimate
   - Explain the factors considered in the estimation process
   - Provide a summary of the total sprint capacity

   Use this format for the estimation table:

   ```
   | Task ID | Story Points | Justification |
   |---------|--------------|---------------|
   | T-01    | 2            | Reason for estimate |
   ```

   Explain what each Fibonacci number represents in terms of complexity and effort.

8. **Expected Output**

   Describe the expected result of implementing the tasks detailed in this document.
