# LTI - EPH

- Trae (Claude-3.7-Sonnet) 

# Prompts

## Prompt para generar las User Stories.

### Prompt 1

(context: LTI-EPH.md, user-stories-template.md)
Acts as a Product Manager and Business Analyst. 
Generate two user stories, the two that are potentially most important, for the applicant tracking system.
Use the following template to create the user stories.

### Prompt 2

Given the above user stories, what technical requirements would be needed?


## Prompts para armar el Backlog de producto con las User Stories

### Prompt 1

```md
Consider the product backlog created above for LTI:

# User Stories

- User Story 1: AI-Powered Candidate Matching. As a recruiter, I want to automatically match candidates to job openings based on skills and potential rather than just keywords, so that I can identify the best talent more quickly and reduce time-to-hire.
- User Story 2: Collaborative Hiring Workflow. As a hiring manager, I want a customizable workflow that allows my team to collaboratively evaluate candidates and provide structured feedback, so that we can make better hiring decisions with input from all stakeholders.

Estimate for each item in the backlog (generate a markdown table):

- User impact and business value.
- Urgency based on market trends and user feedback.
- Complexity and estimated implementation effort.
- Risks and dependencies between tasks.
```


## Prompts para generar los Tickets de trabajo

### Prompt 1

(context: LTI-EPH.md, UserStories-EPH, work-ticket-template.md)
Based on user story 1 and your technical requirements. I want you to generate possible work tickets for me in order to move the user story forward. For this, I want you to rely on the attached template.
Generate as many as you consider necessary and relevant.
Since the tickets are large, give them to me one by one.
