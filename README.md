# tidal-lang-type-dock

`tidal-lang-type-dock` is a Julia project in compilers. Its focus is to create a Julia reference implementation for type workflows, centered on format conversion, round-trip fixtures, and lossless normalization checks.

## Why I Keep It Small

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Tidal Lang Type Dock Review Notes

The first comparison I would make is `lowering drift` against `stack depth` because it shows where the rule is most opinionated.

## Included Behavior

- `fixtures/domain_review.csv` adds cases for IR pressure and lowering drift.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/tidal-lang-type-walkthrough.md` walks through the case spread.
- The Julia code includes a review path for `lowering drift` and `stack depth`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Internal Model

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `IR pressure`, `lowering drift`, `stack depth`, and `diagnostic reach`.

The Julia implementation avoids hidden state so fixture changes are easy to reason about.

## Try It Locally

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Validation

The check exercises the source code and the review fixture. `stress` is the high score at 210; `edge` is the low score at 194.

## Scope

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
