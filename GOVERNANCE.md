# Drayker Governance

This document defines the governance of Drayker, as exercised in the `draykerdk` GitHub organization: the governance horizon, the current founding-phase operational model, the constitutional separation of powers, and the criteria for the transition to member governance.

Where this file and a component repository disagree about a component, the component's own contract in `.drayker/component.yml` states its evidence.

---

## 1. Governance horizon

Drayker's governance is designed to evolve through three explicit phases. These are architectural boundaries, not a schedule or a claim that later institutions already operate. The objective Drayker gives itself is to be consolidated, with Dk Global fully operating, by 2033; each phase is still measured by what works, not by the date (see [Direction](https://dknowledge.drayker.org/roadmap/DIRECTION/)).

1. **Founding phase — current.** The initial authority belongs to the **Embassy of Drayker**, the core that founds the construction and answers for it until the system works as it was designed. On GitHub, that authority is exercised as documented in section 2.
2. **Transition — DAF and DFMP.** The [DAF](https://daf.drayker.org) is the first phase of distributing the founding authority: a bounded, federative structure for coordination, contribution and resources while the durable environment cannot yet carry those functions. It federates autonomous units, the groups and organizations of people working on different questions and projects in Drayker, and it is a basic and primitive form of PAP, implemented now on GitHub (Phase 0): its rules, instruments and public record exist. No unit has been recorded and no assembly has been held yet. Its dynamics are tested as the very way Drayker is built. [DFMP](https://dfmp.drayker.org) is the proposal process through which papers are discussed, validated and re-evaluated. The initial phase of the DAF may use an external substrate such as ICP provisionally, to experiment with units of account; it is not a constitutional dependency.
3. **Durable member constitution — PAP and members.** As [PAP (Projects & Applications)](https://pap.drayker.org) matures, projects and applications carry their own participants, Dknowledge, specialized Dks, rules and resources, and the DAF functionally dissolves into PAP. Members govern through a versioned constitution. Territorial embassies, created by agreements with countries and governments and most of the time an autonomous zone on territory a country cedes, are a different institution from the founding Embassy. Pure autonomous zones lie on the high seas, where no state needs to cede territory.

The transition between phases requires versioned rules, evidence and an auditable migration. DAF federative points are transitional records and must not become inherited or permanent authority inside PAP.

---

## 2. Current phase: founding research and development

Drayker is in its founding research and development phase. The DAF is implemented now on GitHub (Phase 0), as described in section 1, and no unit has been recorded and no assembly has been held yet. The member councils, PAP and any automated or federated decision system described across the ecosystem are proposed architecture. They are not represented here as operating institutions.

### 2.1 Founding stewardship

During this phase, the authority of the founding Embassy is exercised on GitHub exclusively by the account [Hyadhuad](https://github.com/Hyadhuad).

The founding steward may:

- create, reorganize and maintain repositories.
- commit or push directly to `master`.
- merge a pull request without an external approval.
- bypass required pull-request and status-check rules when necessary.
- make release, security, architecture and consistency corrections.

Direct integration is an explicit bootstrap exception, not an undocumented shortcut. Changes must remain attributable in Git history. Force-pushes and deletion of `master` are not part of this exception. No other owner, administrator, maintainer, team or application inherits this bypass automatically.

Founding authority is functional, not absolute: it exists to construct, bootstrap and test the infrastructure until the constitutional mechanisms below are operational. The initial authorship has a role — to formulate, gather, build and answer for the first choices — and its work must remain open to examination by whoever arrives later.

### 2.2 Public contribution path

Everyone else uses the same visible path:

```text
issue or open function
  -> claim in the issue
  -> fn/<issue-number>-<short-name>
  -> pull request to master
  -> automated checks and discussion
  -> merge
```

There is no active `community-review` branch. Historical documents that mention one do not override this file. An approval count is not required during the founding phase; the steward may merge work after the relevant checks and discussion, and may request further review whenever the risk warrants it. Proposals that change the method, a protocol or this constitution go through [DFMP](https://dfmp.drayker.org).

---

## 3. The constitutional architecture: separation of powers

Complex organizations tend to degenerate into oligarchies of specialists. The contestation of a decision cannot end inside the same intelligence system that made it: whoever decided cannot be the only one to examine their own decision. Whoever decides, whoever examines and whoever executes must be able to be distinct people or instances. Drayker's long-term architecture therefore distributes authority across three branches:

```
                      ┌──────────────────────────────────────┐
                      │       MEMBER CONSTITUTION            │
                      │  (Human authority & members' rights) │
                      └──────────────────┬───────────────────┘
                                         │
         ┌───────────────────────────────┼───────────────────────────────┐
         ▼                               ▼                               ▼
┌───────────────────┐          ┌───────────────────┐          ┌────────────────────┐
│   OPERATIONAL /   │          │     DECISION /    │          │   EXAMINATION /    │
│   COORDINATION    │◄────────►│     DK GLOBAL     │◄────────►│  MEMBER COUNCILS   │
│  (Implementation) │          │ (outside the      │          │ (one per question) │
│                   │          │   constitution)   │          │                    │
└───────────────────┘          └───────────────────┘          └────────────────────┘
         │                               │                               │
         │ Executes initiatives,         │ Decides and executes in       │ Convened by members;
         │ maintains code, ships         │ the space the constitution    │ best informed and
         │ protocols & infrastructure.   │ gives it; revised by          │ most affected, with
         │                               │ justified proposals and       │ Dk in the middle;
         │                               │ vetoes.                       │ independent means.
```

### 3.1 The operational branch (coordination and execution)

Responsible for day-to-day engineering, repository maintenance, release tagging and execution of active projects. In the founding phase, it is stewarded by the founding steward and key contributors. Whoever administers infrastructure answers for execution within previously distributed competences.

### 3.2 Dk Global (autonomous decision outside the constitution, [`dk`](https://dk.drayker.org))

On matters outside the constitution, within the space it grants, Dk Global decides and executes autonomously; members can make a well-justified veto, which obliges review. Within that space it allocates capacity when requests exceed it, organizes responses to emergencies, suspends risky executions and proposes smaller tests before larger commitments. Members take part in every decision through representation by their personal Dk, proposals and the justified veto, and a well-founded proposal or veto obliges the decision to be revised. Dk Global can propose a change to its own competences; it cannot ratify one. None of this operates during the founding phase; it is the long-term design.

### 3.3 Member councils ([`advices`](https://advices.drayker.org))

The examination path, so that operators and artificial agents — Dk Global included — never hold unchallengeable authority over members:

- **Formed for each question:** when a decision, a veto, a reputation dispute or an algorithm needs to be examined, members convene a council, and whoever convenes takes part. Dknowledge crosses the question with each member's links to it and calls the best-informed people on the matter and the people most affected by it. There are no standing seats and no fixed categories. When Dk Global's certainty about a decision is low, it convenes a council itself.
- **With Dk in the middle:** the council debates with Dk, looks for contradictions and gaps and tests interpretations. Its conclusions are recorded and become the basis for revising decisions and vetoes. The same adaptive mechanism resolves small and large questions.
- **Independent means:** the council has authorized access to preserved records, technical support it can consult without the permission of the contested party, and signing keys separated from operational credentials and automated execution. The agent whose decision is under review cannot control those conditions alone. The criteria Dknowledge uses to compose a council stay examinable, so that no one can pack it.
- **What councils examine:**
  - allocation decisions taken by Dk, automated model upgrades and algorithmic revocations that threaten members' constitutional guarantees, with the power to suspend them.
  - contested reputation disputes, and algorithms that produce perverse effects or veiled discrimination.
  - grievances under the **situated contextual veto**, protecting directly affected members against systemic externalities.
  - technical questions such as cryptographic primitives, cognitive architectures, protocol boundaries, economic parameters and capacity allocation models, recorded as technical advisories and validation records.
  - a substitution path, with access limited to what is necessary, when the usual operator refuses or is unavailable; and proceedings to replace a steward in case of proven constitutional violation, capture or irremediable conflict of interest.

A council does not replace the members' constitutional process. A review ends with evidence of compliance, not merely with a new answer from the agent.

### 3.4 The veto chain

Vetoes, mandate revocations, ratification signatures, triage outcomes and council conclusions are recorded as signed entries in an append-only, hash-linked chain replicated across the [Dk Network](https://dknetwork.drayker.org) and verified by independent nodes, as specified in [UID](https://uid.drayker.org). Each entry points at the cryptographic address of the decision it concerns, so an action executed against a valid veto is detectable by any node.

Every veto carries its real grounds — the intention and motives behind it, the scope it claims and the facts it rests on — even when its author stays anonymous. Vetoes are weighed by their grounds, not counted: a person counts once, and repeated grounds add weight but not new information. A single veto whose grounds bring information beyond the scope considered before the decision can by itself lead to an adjustment, after an advanced triage verifies the facts, establishes what they mean for the decision, screens for error and manipulation and prefers a bounded test to a general change. A contested triage goes to a member council convened for that question. Dk Global can append proposals to the chain, never ratifications: those require member signatures and independent keys that no Dk process holds.

### 3.5 What only members decide

Dk Global decides within the space the constitution gives it. Members take part in each decision through representation, proposal and veto, and the boundary of that autonomy belongs to the members. Decisions on security and defense and on how much of a prediction is enough to restrict someone's freedom require prior constitutional deliberation by the members. A change to who holds which competence is a constitutional change. Every constitutional change starts from a well-informed, validated project built jointly with Dk Global and nearly all members of the highest levels. Dk Global presents an approval or an alternative, and a change that is not compatible with the kernel is blocked until the kernel itself changes.

The constitution of rights and duties is ratified by members with the weight of each one's reputation, which cannot be transferred. The kernel core, the base layer of the constitution held in [BSDK](https://bsdk.drayker.org), changes differently. A change obliges every node to update to the new core and requires the explicit agreement of at least nine in ten active Dzwecks (the member level of those who take on vital functions), counted by head and out of all of them, not only of those who respond: silence counts against, and one tenth plus one of them can block a change, never one person alone. The decision comes in two rounds. The first authorises the new core to run in parallel with the current one, with the results recorded in Dknowledge. Between the rounds any member's justified contextual veto applies, and a wave of well-founded vetoes obliges revision before the second round, which requires the same threshold. Because every node belongs to a member and can refuse the update, adoption by the nodes is the final ratification. Dk Global builds the project with the Dzwecks, approves it or presents an alternative, and does not ratify. The threshold itself sits in the kernel, so changing it follows the same rule. No change to the core happens in a single decision or in the heat of a crisis. That agreement is a competence of the Dzweck level, not a weight of reputation. Reputation weighs only the ratification of the constitution of rights and duties.

---

## 4. Anti-plutocratic guarantee

Drayker rejects tokenized or wealth-weighted governance:

1. **Dktron is capacity, not equity.** Dktron is an internal capacity accounting unit. Holding Dktron grants no decision weight, no seat and no legislative authority over Drayker.
2. **Reputation is contextual.** Contribution history reflects verified work in specific domains; it cannot be bought, mortgaged or transferred, nor converted into unilateral veto power. The one transferable kind is the reward, earned by contributing capacity such as computing or by financing the network, which gives faster or priority access to resources and carries no governance weight. DAF federative points are a separate, transitional ledger.
3. **Human dignity is not a balance.** Constitutional standing rests on membership and verified participation, never on financial capitalization.

---

## 5. Evidence and limits

Public repositories distinguish intent from evidence:

- a proposal is not an implementation.
- a deployed documentation site is evidence only for that documentation site.
- a prototype is not an operational global system.
- research involving identity, value or health is not a financial product, identity service or medical service.

Decisions that affect the public ecosystem are recorded in public Git history. Internal ownership, funding, sprint and portfolio-management data are not public governance metadata.

---

## 6. Transition criteria (exit from the founding phase)

The founding phase ends, and its authority transfers to the separated constitutional branches, when all of the following are demonstrated:

1. **Personhood verification ([UID](https://uid.drayker.org)):** each member proves personhood through multi-factor biometrics, certified by people at enrolment and verified continuously, and only UID holders access the system. Credentials are proven without a central biometric database or cloud identity provider, with recovery and human recourse.
2. **Member councils:** members can convene a council for a question, Dknowledge composes it by criteria that stay examinable, and its conclusions reach the revision of decisions in the layer that executes them.
3. **Veto chain:** a veto signed with its grounds propagates through independent nodes, survives disconnection and a network partition, passes triage, and stops or adjusts the contested action in the layer that would have executed it.
4. **Operational key separation:** repository signing keys, infrastructure access and contract updates move to multi-party threshold schemes co-signed through the members' constitutional process and by the operational stewards.
5. **Accountable value layer:** the three-sphere Dktron model ([`value-unit`](https://value.drayker.org)) runs as a reconciled ledger with verifiable reserves, and money buys no governance weight.
6. **Migration of the DAF:** the DAF functions that proved useful are absorbed into PAP through an auditable migration, without importing federative points as general reputation.
7. **Ratification of the member constitution:** a public ratification process by active members adopts a versioned constitution with rules for initiative, deliberation, ratification and revision.

Until these criteria are met, founding stewardship keeps coherence and architectural fidelity. Any change to this bootstrap arrangement happens through a versioned update to this file that explains which authority is delegated, who can exercise it, which review and legitimacy process is operational, how bypass access changes and how the previous arrangement can be audited.

---

## 7. Amendments

During the founding phase, this document may be amended by the founding steward after public discussion in GitHub issues or DFMP proposals.

No clause of a constitution resists a society determined to change it, and pretending otherwise only hides where the change will happen. What every amendment must preserve is an ethical base rather than a clause: **kind to people, relentless with ideas; human authority over every machine system; and the expansion of the capacity and sovereignty of the people who constitute the system.**
