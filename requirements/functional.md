# Functional Requirements

## Voting

| ID | Name | Description |
| --- | --- | --- |
| FR-101 | Casting Votes | The system allows eligible voters to cast a single vote per question in an active voting session. A voter cannot vote more than once on the same question. |
| FR-102 | Adding Questions During Voting | The system allows admins to add new questions to an active voting session. Added questions apply only to voters who have not yet cast their vote. Users who have already voted are not required to vote again. |
| FR-103 | Vote Anonymity | The system does not associate cast votes with individual voter identities. Admins can only view aggregated results. |

## Session Management

| ID | Name | Description |
| --- | --- | --- |
| FR-201 | Session Configuration | The system allows admins to create, edit, and delete voting sessions, including setting their start and end time and assigning questions. |
| FR-202 | Results Inspection | The system allows admins to view voting results at any time during and after a voting session. |
| FR-203 | Results Visibility | The system allows admins to configure whether results are visible to voters, and if so, whether during or only after the voting session ends. |
| FR-204 | Session Lifecycle | The system allows admins to manually open, close, and archive voting sessions. Closed sessions do not accept new votes. |

## User Management

| ID | Name | Description |
| --- | --- | --- |
| FR-301 | Manual User Management | The system allows admins to manually add and remove users from the administration panel. |
| FR-302 | CSV User Import | The system allows admins to import users from a CSV file. |
| FR-303 | Excel User Import | The system allows admins to import users from an Excel file. |
| FR-304 | User Import From Previous Sessions | The system allows admins to import the user list from a previous voting session. |

## Authorization

| ID | Name | Description |
| --- | --- | --- |
| FR-401 | Admin-Based Authorization | The system allows users to be authorized manually by an admin. This is the baseline authorization method. |
| FR-402 | External Authorization | The system allows users to be authorized through an external provider [TBD]. This method can be used as an alternative to admin-based authorization (FR-401). |