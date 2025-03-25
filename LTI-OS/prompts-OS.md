Use of Cursor and Claude3.7-sonnet

**Prompt 1 - user stories**:
you are a senior product manager and a senior business analyst. You have a strong knowledge in building user stories and creating baclogs.
You will generate ten user stories using the @PRD.md 
The expected output must follow the strucute shown in @user_story_template.png but must be written in english

**Prompt 2 - user stories**:
for each user story now add the technical requirements

**Prompt 3 - backlog with valor method**:
using the user stories in the file @user_stories.md generate a backlog using the methodology based on the valor. Then justify all your choices

**Prompt 3 - backlog with MoSCoW method**:
using the user stories in the file @user_stories.md generate a backlog using the MoSCow methodology. Then justify all your choices

**Prompt 4 - backlog with Kano method**:
using the user stories in the file @user_stories.md generate a backlog using the Kano methodology. Then justify all your choices

**Prompt 5 - backlog with cost of delay method**:
using the user stories in the file @user_stories.md generate a backlog using the cost of delay methodology. Then justify all your choices

**Prompt 6 - backlog with user story maps method**:
using the user stories in the file @user_stories.md generate a backlog using the user stroy maps methodology. Then justify all your choices

**Prompt 7 - backlog results comparison**:
using the following files @backlog_Kano.md @backlog_MoSCoW.md @backlog_with_value.md @backlog_cost_of_delay.md @backlog_user_story_maps.md generate inside the file @backlog_comparison.md the comparison of the results. I want:
1. a table showing for each backlog method used the task order. 
2. any other metrics you find relevant to compare them and help me choose which one I should use knowing that we are still in the documentation phase of the project.

**Prompt 8 - backlog mixing - generate prompt following recommendations**:
use @backlog_comparison.md to generate a prompt that will follow the Methodology recommendation. The objective of this prompt is to generate a backlog following these recommendations. The expected output of this backlog is to have a clear decreasing ranked list as bullet points with for each bullet point:
1. the number and name of the task
2. the reason why it took this rank (one sentance max)

**Prompt 9 - generate backlog with the prompt generating by the previous prompt**:

Generate a prioritized backlog for the Adaptive Talent Intelligence ATS project following these methodology recommendations:

1. First, organize user stories according to the User Story Map approach to ensure complete user journeys
2. Apply MoSCoW categorization to establish clear MVP boundaries
3. Within each MoSCoW category, use Value-Based or Cost of Delay metrics for internal sequencing
4. Validate final prioritization against Kano Model classifications to ensure user satisfaction impact

The output should be a single, decreasing ranked list with bullet points where each item includes:
- The number and name of the task
- A single sentence justification for its ranking position

Follow these specific considerations from the analysis:
- Mobile Application Process and AI-Powered Candidate Matching should be near the top as they're consistently high-priority across all methodologies
- Ensure early releases contain components from each user journey to enable end-to-end workflows (walking skeleton approach)
- Place complex but low-urgency features like the Automated Compliance Engine later in the prioritization
- Consider the significant variance in HR Tech Stack Integration ranking across methodologies when making your final determination
- Ensure that both candidate experience and recruiter productivity features are balanced in the early priorities

**Prompt 10 - generate backlog**:
Add in your previous baclog the different realeases corresponding to these task with the MoSCoW names

**Prompt 11 - create tickets**:
I want to create from the user story #9 all its related tickets as it is done in a planning meeting. I want first you to explain me what is the detailed template of a ticket. Then you explain me how it is chosen to create tickets form a user story. 

**Prompt 12 - create tickets**:
I like your template and you will add in it, in the acceptance criteria as a **compulsory field**  validation tests.
Then I see that non of your tickets comply this template. I want you to rewrite all of your tickets **respecting very strictly** all the fields that appear in your template.

**Prompt 13 - create tickets**:
Now refine your tickets on the following aspects:
1. the assigned to should be a team, like UX/UI team, backen team, frontend team....
2. add a comments field
3. add a change histoy to see if during the sprint or whole process this task has changed for example of priority, its structured should be:
date: change in one short description