# Contributing to Drayker

Drayker accepts research, documentation, design, code, review, translation, governance analysis and well-modelled criticism.

Participation is primarily voluntary and does not imply compensation, funding, employment, ownership, tokens or future access to products or services.

---

## 1. Guiding principles

Two principles from *Do animal à superinteligência* govern every contribution and discussion in the organization:

### Kind to people, relentless with ideas

The system is kind to people and relentless with ideas (chapter 49).

- **Treat participants with dignity.** Personal attacks, ad hominem rhetoric, condescension and identity-based exclusion are not tolerated. People are ends, never instruments.
- **Treat ideas with empirical rigor.** A hypothesis has to answer for what it promised to explain or achieve. Code must be tested, cryptography audited and assumptions questioned. Appeals to authority, marketing hype and ungrounded claims are rejected. A failed idea does not cost its author the place to learn, reformulate and keep contributing.

### Human authority over machine systems

Automated tools, AI agents and algorithmic models assist our cognition; constitutional authority and ultimate responsibility remain with people (chapters 47 and 51).

---

## 2. Choose the right repository

Open the issue beside the material it concerns. If the destination is unclear, use the [General Forum](https://github.com/draykerdk/general-forum/issues/new).

The project map and component pages are available at [drayker.org](https://drayker.org/contrib/projects/).

- **Method, protocol or constitutional proposals** follow [DFMP](https://dfmp.drayker.org), the proposal process of the DFM method. Open an issue in `draykerdk/dfmp` before writing a large pull request.
- **Code and implementations**: fixes, protocol implementations and tooling in the repository they belong to.
- **Documentation**: specifications, conceptual clarifications, translations and guides.
- **Open science**: research, modelling and health under [Open science](https://science.drayker.org).

---

## 3. Contribution flow

1. **Open or find an issue.** A useful issue states the problem, evidence, boundaries and expected result.
2. **Claim the work.** Comment with a short plan. If an existing claim becomes inactive, discuss it in the issue before taking over.
3. **Create one branch per contribution.**

   ```bash
   git switch -c fn/<issue-number>-<short-name>
   ```

4. **Keep the work traceable.** Link commits and the pull request to the issue. Keep each pull request focused on one concern.
5. **Open a pull request targeting `master`.** There is no active `community-review` branch.
6. **Run the repository checks and address the discussion.**
7. **Merge.** During the founding phase, [Hyadhuad](https://github.com/Hyadhuad) may merge, amend or integrate directly as documented in [GOVERNANCE.md](./GOVERNANCE.md).

Contributions are licensed under the repository's license (documentation typically under CC BY 4.0, code typically under MIT). Authorship remains in Git history.

---

## 4. Open functions

An issue carrying `open-function` is intended to be small enough for one contributor to deliver. Optional `skill:*`, `level:*` and `effort:*` labels improve discovery.

Do not add `open-function` to a speculative placeholder. The issue needs a concrete deliverable and an entry point.

---

## 5. Public claims

When changing documentation:

- use future tense for intended architecture.
- state what evidence exists.
- name missing specifications plainly.
- do not publish internal project-management status.
- do not imply operational financial, medical, identity or global infrastructure where none exists.

Public documentation is written in English, the canonical language. Translations are not maintained by hand: readers use automatic translation, and native translation and localization are planned for the Drayker sites.

---

## 6. Reviews and authority

Review the contribution against its stated scope and evidence. Disagreement is useful when it is specific, sourced and directed at the work rather than the person. Technical councils provide peer review; merge authority during the founding phase is specified in [GOVERNANCE.md](./GOVERNANCE.md).

For security-sensitive reports, follow [SECURITY.md](./SECURITY.md) instead of publishing exploit details.
