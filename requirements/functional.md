# Functional Requirements

## Voting

| ID     | Name                            | Description                                                                                                                                                                                                                                                                                                     |
| ------ | ------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| FR-101 | Casting Votes                   | The system allows eligible voters to cast a single vote per question in an active voting session. A voter cannot vote more than once on the same question.                                                                                                                                                       |
| FR-102 | Managing Question Queue         | In synchronous voting sessions, the system allows admins to manage a private suggested queue of question templates before each question is opened for voting. Admins can edit prepared question templates, create new templates, insert them into the queue, and start questions out of order. A live question cannot be edited. |
| FR-103 | Vote Confidentiality Mode       | The system allows each question to be designated as confidential or public/non-confidential. For confidential questions, the system does not associate cast votes with individual voter identities and admins can only view aggregated results. Public/non-confidential questions may be used for cases such as presence or quorum checks. |

## Session Management

| ID     | Name                  | Description                                                                                                                                   |
| ------ | --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| FR-201 | Session Configuration | The system allows admins to create, edit, and delete voting sessions, including setting their start and end time and assigning questions.     |
| FR-202 | Results Inspection    | The system allows users to view voting results only after those results have been revealed. Results cannot be previewed for questions or question groups that are being actively voted on.                 |
| FR-203 | Results Visibility    | The system allows admins to configure result visibility rules. These rules apply equally to organizers/admins and voters, and results are visible only according to the configured reveal rules.          |
| FR-204 | Session Lifecycle     | The system allows admins to manually open, close, and archive voting sessions. Closed sessions do not accept new votes.                       |

## Voter Management

| ID     | Name                                | Description                                                                                                      |
| ------ | ----------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| FR-301 | Manual Voter Management             | The system allows admins to manually add and remove voters from a session-specific voter list.                    |
| FR-302 | CSV Voter Import                    | The system allows admins to import voters from a CSV file into a session-specific voter list.                     |
| FR-303 | Excel Voter Import                  | The system allows admins to import voters from an Excel file into a session-specific voter list.                   |
| FR-304 | Voter Import From Previous Sessions | The system allows admins to import the voter list from a previous voting session into another voting session.     |

## Authorization

| ID     | Name                               | Description                                                                                                                                                                                                            |
| ------ | ---------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| FR-401 | Manual Identity Verification       | The system allows organizers/admins to manually verify a voter's identity. Manual authentication events must be logged to reduce the risk of organizer/admin impersonation of voters.                                  |
| FR-402 | Alternative Authentication Modules | The system allows voting sessions to use alternative authentication modules, such as email verification, OAuth with external services, Keycloak, or other supported methods. These modules can be used instead of manual identity verification (FR-401). |
