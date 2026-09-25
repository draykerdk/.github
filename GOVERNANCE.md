# Drayker Organization Governance

This document defines the governance structure of the Drayker organization (`draykerdk`): the governance horizon, the current founding-phase operational model, the constitutional separation of powers, and the criteria for the transition to member governance.

The architecture follows *Do animal à superinteligência* (Hyadhuad), chapters 46, 47 and 51. Where this file and a component repository disagree about a component, the component's own contract in `.drayker/component.yml` states its evidence.

---

## 1. Governance horizon

Drayker's governance is designed to evolve through three explicit phases. These are architectural boundaries, not a schedule or a claim that later institutions already operate. The objective Drayker gives itself is to be consolidated, with Dk Global fully operating, by 2033; each phase is still measured by what works, not by the date (see [Direction](https://dknowledge.drayker.org/roadmap/DIRECTION/)).

1. **Founding phase — current.** The initial authority belongs to the **Embassy of Drayker**, the core that founds the construction and answers for it until the system works as it was designed. On GitHub, that authority is exercised as documented in section 2.
2. **Transitional scaffold — DAF and DFMP.** The [DAF](https://daf.drayker.org) is the first phase of distributing the founding authority: a bounded, federative structure for coordination, contribution and resources while the durable environment cannot yet carry those functions. [DFMP](https://dfmp.drayker.org) is the proposal process through which papers are discussed, validated and re-evaluated. A token-economy phase of the DAF may use an external substrate such as ICP provisionally; it is not a constitutional dependency.
3. **Durable member constitution — PAP and members.** As [PAP (Projects & Applications)](https://pap.drayker.org) matures, projects and applications carry their own participants, Dknowledge, specialized Dks, rules and resources, and the DAF functionally dissolves into PAP. Members govern through a versioned constitution. Territorial embassies, created by bilateral agreements with countries and governments, are a different institution from the founding Embassy.

The transition between phases requires versioned rules, evidence and an auditable migration. DAF federative points are transitional records and must not become inherited or permanent authority inside PAP.

---

## 2. Current phase: founding research and development

Drayker is in its founding research and development phase. The DAF, the councils, the judicial panel, PAP and any automated or federated decision system described across the ecosystem are proposed architecture. They are not represented here as operating institutions.

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

Complex organizations tend to degenerate into oligarchies of specialists. The contestation of a decision cannot end inside the same intelligence system that made it, and nobody can be the judge of their own cause (chapter 51). Whoever recommends, whoever judges and whoever executes must be able to be distinct people or instances. Drayker's long-term architecture therefore distributes authority across three branches:

```
                      ┌──────────────────────────────────────┐
                      │       MEMBER CONSTITUTION            │
                      │  (Human authority & members' rights) │
                      └──────────────────┬───────────────────┘
                                         │
         ┌───────────────────────────────┼───────────────────────────────┐
         ▼                               ▼                               ▼
┌───────────────────┐          ┌───────────────────┐          ┌────────────────────┐
│   OPERATIONAL /   │          │    EPISTEMIC /    │          │  CONSTITUTIONAL /  │
│   COORDINATION    │◄────────►│ TECHNICAL COUNCILS│◄────────►│  JUDICIAL PANEL    │
│  (Implementation) │          │   (Peer Review)   │          │(Checks & Balances) │
└───────────────────┘          └───────────────────┘          └────────────────────┘
         │                               │                               │
         │ Executes initiatives,         │ Evaluates models,             │ Independent means;
         │ maintains code, ships         │ audits cryptographic safety,  │ selected by lot;
         │ protocols & infrastructure.   │ enforces epistemic rigor.     │ suspends contested
         │                               │                               │ decisions, prevents
         │                               │                               │ algorithmic or
         │                               │                               │ plutocratic capture.
```

### 3.1 The operational branch (coordination and execution)

Responsible for day-to-day engineering, repository maintenance, release tagging and execution of active projects. In the founding phase, it is stewarded by the founding steward and key contributors. Whoever administers infrastructure answers for execution within previously distributed competences.

### 3.2 The epistemic branch (technical councils — [`advices`](https://advices.drayker.org))

Specialized groups formed by domain contributors to conduct peer review on:

- cryptographic primitives and zero-knowledge validity.
- cognitive architectures, attention-sovereign agents and protocol boundaries.
- economic parameters, Dktron reserve ratios and capacity allocation models.

Councils do not rule by fiat; their evaluations are recorded transparently as technical advisories and validation records.

### 3.3 The protective branch (Independent Member Judicial Panel)

The supreme instance of human appeal, so that operators and artificial agents — Dk Global included — never hold unchallengeable authority over members:

- **Sortition and fixed terms:** panel members are drawn periodically by lot from the membership, without conflict of interest with the matter, for a fixed term that no AI can revoke. Verifiable sortition tooling is part of the transition criteria below.
- **Independent means:** the panel has authorized access to preserved records, technical support it can consult without the permission of the contested party, and signing keys separated from operational credentials and automated execution. The agent whose decision is under review cannot control those conditions alone.
- **Protective competences:**
  - suspension of allocation decisions taken by Dk, of automated model upgrades and of algorithmic revocations that threaten members' constitutional guarantees.
  - arbitration of contested reputation disputes and orders to review algorithms that produce perverse effects or veiled discrimination.
  - adjudication of grievances under the **situated contextual veto**, protecting directly affected members against systemic externalities.
  - a substitution path, with access limited to what is necessary, when the usual operator refuses or is unavailable; and proceedings to replace a steward in case of proven constitutional violation, capture or irremediable conflict of interest.

A review ends with evidence of compliance, not merely with a new answer from the agent.

### 3.4 The veto chain

Vetoes, mandate revocations, ratification signatures, triage outcomes and panel orders are recorded as signed entries in an append-only, hash-linked chain replicated across the [Dk Network](https://dknetwork.drayker.org) and verified by independent nodes, as specified in [UID](https://uid.drayker.org). Each entry points at the cryptographic address of the decision it concerns, so an action executed against a valid veto is detectable by any node.

Every veto carries its real grounds — the intention and motives behind it, the scope it claims and the facts it rests on — even when its author stays anonymous. Vetoes are weighed by their grounds, not counted: a person counts once, and repeated grounds add weight but not new information. A single veto whose grounds bring information beyond the scope considered before the decision can by itself lead to an adjustment, after an advanced triage verifies the facts, establishes what they mean for the decision, screens for error and manipulation and prefers a bounded test to a general change. A contested triage goes to the judicial panel. Dk Global can append proposals to the chain, never ratifications: those require member signatures and independent keys that no Dk process holds.

### 3.5 What only members decide

Dk Global decides within the space the constitution gives it. Members take part in each decision through representation, proposal and veto, and the boundary of that autonomy belongs to the members (chapter 47). Decisions on security and defense, on how much of a prediction is enough to restrict someone's freedom, and on changes to who holds which competence require prior constitutional deliberation.

---

## 4. Anti-plutocratic guarantee

Drayker rejects tokenized or wealth-weighted governance:

1. **Dktron is capacity, not equity.** Dktron is an internal capacity accounting unit. Holding Dktron grants no voting share, no seat and no legislative authority over the organization.
2. **Reputation is contextual.** Contribution history reflects verified work in specific domains; it cannot be bought, mortgaged or transferred, nor converted into unilateral veto power. DAF federative points are a separate, transitional ledger.
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

1. **Presence and personhood verification ([UID](https://uid.drayker.org)):** members can authenticate and prove the credentials an interaction requires without a centralized biometric or cloud identity provider, with recovery and human recourse.
2. **Sortition tooling:** verifiable sortition selects and rotates the members of the judicial panel.
3. **Veto chain:** a veto signed with its grounds propagates through independent nodes, survives disconnection and a network partition, passes triage, and stops or adjusts the contested action in the layer that would have executed it.
4. **Operational key separation:** repository signing keys, infrastructure access and contract updates move to multi-party threshold schemes co-signed by the judicial panel and the operational stewards.
5. **Accountable value layer:** the three-sphere Dktron model ([`value-unit`](https://value.drayker.org)) runs as a reconciled ledger with verifiable reserves, and money buys no governance weight.
6. **Migration of the DAF:** the DAF functions that proved useful are absorbed into PAP through an auditable migration, without importing federative points as general reputation.
7. **Ratification of the member constitution:** a public ratification process by active members adopts a versioned constitution with rules for initiative, deliberation, ratification and revision.

Until these criteria are met, founding stewardship keeps coherence and architectural fidelity. Any change to this bootstrap arrangement happens through a versioned update to this file that explains which authority is delegated, who can exercise it, which review and legitimacy process is operational, how bypass access changes and how the previous arrangement can be audited.

---

## 7. Amendments

During the founding phase, this document may be amended by the founding steward after public discussion in GitHub issues or DFMP proposals.

No clause of a constitution resists a society determined to change it, and pretending otherwise only hides where the change will happen. What every amendment must preserve is an ethical base rather than a clause: **kind to people, relentless with ideas; human authority over every machine system; and the expansion of the capacity and sovereignty of the people who constitute the system.**
