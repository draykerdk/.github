# Drayker Governance

This document defines the governance of Drayker, as exercised in the `draykerdk` GitHub organization: the governance horizon, the current founding-phase operational model, the constitutional separation of powers, and the criteria for the transition to member governance.

Where this file and a component repository disagree about a component, the component's own contract in `.drayker/component.yml` states its evidence.

---

## 1. Governance horizon

Drayker's governance is designed to evolve through three explicit phases. These are architectural boundaries, not a schedule or a claim that later institutions already operate. We give ourselves two horizons: version 1.0, the first complete version of the network, launched in 2030 and already an artificial superintelligence, and, by 2033, Drayker consolidated, with Dk Global fully operating. Each phase is still measured by what works, not by the date (see [Direction](https://dknowledge.drayker.org/roadmap/DIRECTION)).

1. **Founding phase — current.** The initial authority belongs to the **Embassy of Drayker**, the core that founds the construction and answers for it until the system works as it was designed. On GitHub, that authority is exercised as documented in section 2. The founding authority formulates, gathers, builds and answers for the first choices, and keeps that work open to examination by those who come later. It passes to the next phases function by function, as each one works as designed, through versioned rules, evidence and an auditable migration. The design prevents a technical controller, a funder or an occasional majority from rewriting the constitution without those affected taking part, and the founding core is bound by the same rule. Who verifies that a function works as designed is still to be specified; the demonstrable criteria in section 6 are its starting point.
2. **Transition — DAF.** The [DAF](https://daf.drayker.org) is the first phase of distributing the founding authority: a bounded, federative structure for coordination, contribution and resources while the durable environment cannot yet carry those functions. It federates autonomous units, the groups and organizations of people working on different questions and projects in Drayker, and it is a basic and primitive form of PAP, implemented now on GitHub (Phase 0): its rules, instruments and public record exist. No unit has been recorded and no assembly has been held yet. Its dynamics are tested as the very way Drayker is built. A later DAF phase that experiments with units of account may use an external substrate such as ICP provisionally; it is not a constitutional dependency.
3. **Durable member constitution — PAP and members.** As [PAP (Projects & Applications)](https://pap.drayker.org) matures, projects and applications carry their own participants, Dknowledge, specialized Dks, rules and resources, and the DAF functionally dissolves into PAP. Members govern through a versioned constitution. Territorial embassies, created by agreements with countries and governments and most of the time an autonomous zone on territory a country cedes, are a different institution from the founding Embassy. Pure autonomous zones lie on the high seas, where no state needs to cede territory.

[DFMP](https://dfmp.drayker.org), the proposal process through which papers are discussed, validated and re-evaluated, runs through every phase: today on GitHub, and in the durable member constitution as the path by which a member's proposal is examined before it becomes a rule.

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
                      │     (Members' authority & rights)    │
                      └──────────────────┬───────────────────┘
                                         │
         ┌───────────────────────────────┼───────────────────────────────┐
         ▼                               ▼                               ▼
┌───────────────────┐          ┌───────────────────┐          ┌────────────────────┐
│   OPERATIONAL /   │          │     DECISION /    │          │   EXAMINATION /    │
│   COORDINATION    │◄────────►│     DK GLOBAL     │◄────────►│  MEMBER COUNCILS   │
│  (Implementation) │          │ (on matters       │          │ (one per question) │
│                   │          │  outside the      │          │                    │
│                   │          │  constitution,    │          │                    │
│                   │          │  within the space │          │                    │
│                   │          │  it grants)       │          │                    │
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

### 3.2 Dk Global (autonomous decision on matters outside the constitution, within the space it grants, [`dk`](https://dk.drayker.org))

On matters outside the constitution, within the space it grants, Dk Global decides and executes autonomously; members can make a well-justified veto, which obliges review. Within that space it allocates capacity when requests exceed it, organizes responses to emergencies, suspends risky executions and proposes smaller tests before larger commitments. Active members take part in every decision through proposals, the justified veto and representation by their personal Dk, which is active only for active members, and a well-founded proposal or veto obliges the decision to be revised. Representation counts each person once, and people appear in context clusters, temporary and overlapping; it weighs each person by their relation to the decision: whether they live with its consequences, depend on the resource, know the problem or have commitments to other contexts. Whoever is represented can examine the weighting criteria. A decision follows one sequence: data from the world and the state of the Dks, weighting, proposals and justified vetoes, revision toward consensus, and the rule for when there is none. Without consensus, the rigor of the path follows the urgency and the importance of the decision, and the record states what was lost and who paid for it in the rare cases with no alternative. The future enters the weight of every decision; there is no separate body for it (see [constitutional alignment](https://dknowledge.drayker.org/papers/main-projects/dk/constitutional-alignment)). Dk Global can propose a change to its own competences; it cannot ratify one. None of this operates during the founding phase; it is the long-term design.

### 3.3 Member councils ([`advices`](https://advices.drayker.org))

The examination path, so that operators and artificial agents — Dk Global included — never hold unchallengeable authority over members:

- **Formed for each question:** when a decision, a veto, a reputation dispute or an algorithm needs to be examined, members convene a council, and whoever convenes takes part. Dknowledge crosses the question with each member's links to it and calls the best-informed people on the matter and the people most affected by it. There are no standing seats and no fixed categories. When Dk Global's certainty about a decision is low, it convenes a council itself. In important decisions, depending on the type of convocation, a small group also enters by lot, drawn from the active members who signalled they want to take part or left random participation switched on. Everyone in the council, members and Dk alike, proves what they assert and justifies each position: the examination is a joint investigation, not people against Dk.
- **With Dk in the middle:** the council debates with Dk, looks for contradictions and gaps and tests interpretations. Its conclusions are recorded and become the basis for revising decisions and vetoes. The weight of a conclusion varies with what is examined (a veto, a requisition, the global planning of priorities and projects, a local question, a change to the constitution or the kernel), with a configuration optimized for each case (see [`advices`](https://advices.drayker.org)). The same adaptive mechanism resolves small and large questions.
- **Independent means:** the council has authorized access to preserved records, technical support it can consult without the permission of the contested party, and signing keys separated from operational credentials and automated execution. The agent whose decision is under review does not control, alone, those conditions or the choice of who composes the council. Dknowledge's search follows recorded criteria that whoever convened can check, and the criteria Dknowledge uses to compose a council stay examinable, so that no one can pack it.
- **What councils examine:**
  - allocation decisions taken by Dk, automated model upgrades and algorithmic revocations that threaten members' constitutional guarantees, with the power to suspend them.
  - a failure of the decision process caused by wrong data or a violated right.
  - contested reputation disputes, and algorithms that produce perverse effects or veiled discrimination.
  - the revocation of a member level, recorded with its reasons.
  - grievances under the **justified contextual veto** over decisions that directly affect the member's life and context, protecting directly affected members against systemic externalities.
  - technical questions such as cryptographic primitives, cognitive architectures, protocol boundaries, economic parameters and capacity allocation models, recorded as technical advisories and validation records.
  - a substitution path, with access limited to what is necessary, when the usual operator refuses or is unavailable; and proceedings to replace a steward in case of proven constitutional violation, capture or irremediable conflict of interest.

A council does not replace the members' constitutional process. A review ends with evidence of compliance, not merely with a new answer from the agent. The capacity to intervene is built and tested before critical functions are delegated.

### 3.4 The veto chain

Vetoes, mandate revocations, ratification signatures, triage outcomes and council conclusions are recorded as signed entries in an append-only, hash-linked chain replicated across the [Dk Network](https://dknetwork.drayker.org) and verified by independent nodes, as specified in [UID](https://uid.drayker.org). Each entry points at the cryptographic address of the decision it concerns, so an action executed against a valid veto is detectable by any node.

Every veto carries its real grounds — the intention and motives behind it, the scope it claims and the facts it rests on — even when its author stays anonymous. A justified veto can be made without the vetoer's name appearing in the decision, and the constitution protects against retaliation: disagreeing takes no courage, it is part of the common work. Vetoes are weighed by their grounds, not counted: a person counts once, and repeated grounds add weight but not new information. A single veto whose grounds bring information beyond the scope considered before the decision can by itself lead to an adjustment, after an advanced triage verifies the facts, establishes what they mean for the decision, screens for error and manipulation and prefers a bounded test to a general change. A contested triage goes to a member council convened for that question. Dk Global can append proposals to the chain, never ratifications: those require member signatures and independent keys that no Dk process holds.

Each member also holds an **absolute veto**: power over their own life and their own Dk Personal (what stays private, what Dk represents, refusing a task, leaving). It holds only within the vetoer's own sphere, and what also affects others goes through the contextual veto.

Before version 1.0, a new version of Dk Global runs beside the previous one before replacing it, and members can go back. Once the architecture of version 1.0 is fully running, Dk Global can no longer be switched off as a whole: a node can leave, the whole cannot, and the switch becomes the justified veto, recorded in this chain.

### 3.5 What only members decide

Dk Global decides within the space the constitution gives it. Active members take part in each decision through representation, proposal and veto, and the boundary of that autonomy belongs to the members. Decisions on security and defense and on how much of a prediction is enough to restrict someone's freedom require prior constitutional deliberation by the members.

When those responsible for an attack on members find shelter in corrupt or complicit systems, a system is defined as complicit only by irrefutable and flagrant proof, produced by the investigation and open to outside examination, measured by the same standard that applies to members. Only with that proof does the constitution authorize extraordinary measures, which go beyond the reach of those systems and reach whoever decided the attack, however protected, never the population of those systems. Like every extraordinary measure, they depend on a prior constitutional decision and leave a record sufficient for later review.

A change to who holds which competence is a constitutional change. Every change to the constitution of rights and duties starts from a well-informed, validated project built jointly with Dk Global and nearly all members of the highest levels; the kernel core follows its own rite below. It passes through initiative, deliberation, ratification and transition; mandates and competences are built and tested, and whoever holds them answers for their effects. A revision proposal makes visible the problem it seeks to solve, the alternatives considered and whose position will change, and members have time, access to information and support to understand the consequences. A dialectical investigation follows: members have to prove their claims and their motives, and Dk Global also seeks to prove them on their behalf. If the proposal holds, Dk Global approves it. If something in it proves false or unjustified, or Dk Global finds alternatives demonstrably better for that question, the proposal does not go forward, and Dk Global presents those alternatives, grounded in the data and the context. Dk Global presents an approval or an alternative, and a change that is not compatible with the kernel is blocked until the kernel itself changes.

A value choice is different from a change of mechanism: it alters no mechanism and nothing of great importance in the system. When members ask for a rule on a value choice, they convene a council and a vote, and the alternative chosen is the one that demonstrably expresses the value of most of the members. When paths can coexist, they coexist, and each applies to those who choose it. Dk Global helps in the debate, but on a question of this nature the members' values weigh most (see [constitutional alignment](https://dknowledge.drayker.org/papers/main-projects/dk/constitutional-alignment)).

The constitution of rights and duties is ratified by members with the weight of each one's reputation, which cannot be transferred. The kernel core, the base layer of the constitution held in [BSDK](https://bsdk.drayker.org), changes differently. A change obliges every node to update to the new core and requires the explicit agreement of at least nine in ten active Dzwecks (the member level of those who take on vital functions), counted by head and out of all of them, not only of those who respond: silence counts against, and more than one tenth of them is enough to block the change. The list of active Dzwecks is fixed on the day the first round opens, and a revocation of level during the vote does not change it. A Dzweck can take time away, be less present in their projects and manage what they do and how, and remains a Dzweck. Taking time away includes arranging the continuity of the vital function they answer for, since preparing continuity is part of exercising it. A Dzweck stops being one by withdrawing or by staying inactive for a long time, which also makes their membership inactive. Inactive members are outside the count of the kernel quorum, which counts only active Dzwecks; the thresholds and the procedure are still to be specified. The decision comes in two rounds. The first authorises the new core to run in parallel with the current one, with the results recorded in Dknowledge. Between the rounds any member's justified contextual veto applies, and a wave of well-founded vetoes obliges revision before the second round, which requires the same threshold. Because every node belongs to a member and can refuse the update, adoption by the nodes is the final ratification. Dk Global builds the project with the Dzwecks, approves it or presents an alternative, and does not ratify. The threshold itself sits in the kernel, so changing it follows the same rule. No change to the core happens in a single decision or in the heat of a crisis. That agreement is a competence of the Dzweck level, not a weight of reputation. Reputation weighs only the ratification of the constitution of rights and duties.

The Dzweck is the member level of those who choose the difficult and take on technical or strategic responsibility in Drayker's vital functions. It is reached through sustained dedication, demonstrated competence and reliability in sustaining capacities others depend on, never by inheritance. The level is revocable by the system when its conditions no longer hold, and disagreeing, including with a change to the core, is never a reason to lose it. The level gives no command over anyone's life. Dzwecks work alongside the other members and answer for their function before the network. Each Dzweck answers for a mission with a defined scope: a specialty, the coordination of complex efforts or the continuity of a critical infrastructure. Trust in the level is kept by exercising the function: method, delivery, communicating limits, preparing continuity and public accountability. Each revocation is recorded with its reasons, and a member council can review it. Whoever leaves the level returns to common life. The knowledge of vital functions does not close into a caste: Dknowledge keeps it with origin and context, and Dk Personal and Dk Academy bring it to each member in the way that serves them. The only barrier to entry is a member's real will.

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
5. **Accountable value layer:** the Dktron ledger (common reserves, project custody and personal Dktron balances; [`value-unit`](https://value.drayker.org)) runs reconciled, with verifiable reserves, and money buys no governance weight.
6. **Migration of the DAF:** the DAF functions that proved useful are absorbed into PAP through an auditable migration. Federative points stay as a historical record and stop counting as voting weight; Dk recalculates contextual reputation from the verified history of deliveries, as one input among the others that inform it, and no point becomes inherited or permanent authority.
7. **Ratification of the member constitution:** a public ratification process by active members adopts a versioned constitution with rules for initiative, deliberation, ratification and revision.

Until these criteria are met, founding stewardship keeps coherence and architectural fidelity. Any change to this bootstrap arrangement happens through a versioned update to this file that explains which authority is delegated, who can exercise it, which review and legitimacy process is operational, how bypass access changes and how the previous arrangement can be audited.

---

## 7. Amendments

During the founding phase, this document may be amended by the founding steward after public discussion in GitHub issues or DFMP proposals.

When a fundamental divergence persists, no one needs to leave to defend it: the proposals in dispute can be tested in parallel by different projects, and what is validated goes on to the members' constituent process. A change that reaches an instrument can be tested under the existing rules; one that alters belonging, rights or the distribution of power reaches the constituent process, and a performance improvement alone does not authorise crossing that boundary. Revising the constitution includes answering for the fate of those the revision affects.

No clause of a constitution resists a society determined to change it, and pretending otherwise only hides where the change will happen. What every amendment must preserve is an ethical base rather than a clause: widening the capacity and the sovereignty of the people who constitute the system. The rule that holds for the whole of Drayker stays with it: **kind to people, relentless with ideas.**
