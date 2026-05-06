# Review Journal

This journal records the domain cases that matter before widening the public API.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its compilers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `IR pressure`, score 198, lane `ship`
- `stress`: `lowering drift`, score 210, lane `ship`
- `edge`: `stack depth`, score 194, lane `ship`
- `recovery`: `diagnostic reach`, score 210, lane `ship`
- `stale`: `IR pressure`, score 201, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
