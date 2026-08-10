# Contributing to Drayker

Drayker accepts research, documentation, design, code, review, translation, governance analysis and well-modelled criticism.

Participation is primarily voluntary and does not imply compensation, funding, employment, ownership, tokens or future access to products or services.

## Choose the right repository

Open the issue beside the material it concerns. If the destination is unclear, use the [General Forum](https://github.com/draykerdk/general-forum/issues/new).

The project map and component pages are available at [drayker.org](https://drayker.org/#org/contrib/projects).

## Contribution flow

1. **Open or find an issue.** A useful issue states the problem, evidence, boundaries and expected result.
2. **Claim the work.** Comment with a short plan. If an existing claim becomes inactive, discuss it in the issue before taking over.
3. **Create one branch per contribution.**

   ```bash
   git switch -c fn/<issue-number>-<short-name>
   ```

4. **Keep the work traceable.** Link commits and the pull request to the issue.
5. **Open a pull request targeting `master`.** There is no active `community-review` branch.
6. **Run the repository checks and address the discussion.**
7. **Merge.** During the founding phase, [Hyadhuad](https://github.com/Hyadhuad) may merge, amend or integrate directly as documented in [GOVERNANCE.md](./GOVERNANCE.md).

## Open functions

An issue carrying `open-function` is intended to be small enough for one contributor to deliver. Optional `skill:*`, `level:*` and `effort:*` labels improve discovery.

Do not add `open-function` to a speculative placeholder. The issue needs a concrete deliverable and an entry point.

## Public claims

When changing documentation:

- use future tense for intended architecture;
- state what evidence exists;
- name missing specifications plainly;
- do not publish internal project-management status;
- do not imply operational financial, medical, identity or global infrastructure where none exists.

Public documentation is written in English unless the repository explicitly maintains another canonical language. Translations should identify the source revision they follow.

## Reviews

Review the contribution against its stated scope and evidence. Disagreement is useful when it is specific, sourced and directed at the work rather than the person.

For security-sensitive reports, follow [SECURITY.md](./SECURITY.md) instead of publishing exploit details.
