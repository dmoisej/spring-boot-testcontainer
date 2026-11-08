# spring-boot-testcontainer — Test Run Report

**Verdict: PASS**

- **Date / time:** 2026-11-08 09:48 UTC
- **Command:** `./mvnw clean package` (Java 17, Maven wrapper; MySQL/Postgres Testcontainers over the running Docker daemon)
- **Totals:** 8 passed / 0 failed / 0 skipped
- **Run time:** 42.5s (successful build; `BUILD SUCCESS`)

## Per-test-class breakdown

| Test class | Tests | Fail | Err | Skip | Time |
|---|---|---|---|---|---|
| DatasourceHealthTests | 1 | 0 | 0 | 0 | 9.49s |
| SpringBootTestcontainerApplicationTests | 1 | 0 | 0 | 0 | 2.43s |
| postgresql.BookRepositoryRestResourceTests | 2 | 0 | 0 | 0 | 5.05s |
| postgresql.BookRepositoryTest | 1 | 0 | 0 | 0 | 2.32s |
| postgresql.ConsultantRepositoryTest | 1 | 0 | 0 | 0 | 1.85s |
| postgresql.CustomerControllerTest | 1 | 0 | 0 | 0 | 2.57s |
| postgresql.ProjectRepositoryTest | 1 | 0 | 0 | 0 | 5.64s |
| **Total** | **8** | **0** | **0** | **0** | — |

## Failures

None.

## Comparison vs previous run (2026-11-01, from the Test Log sheet)

No change. Both runs are 8 passed / 0 failed / 0 skipped. No newly-broken or newly-fixed tests.

## Notes

- The first `./mvnw clean package` attempt aborted during dependency download with a transient proxy error (`Attempted read from closed stream` fetching `junit-platform-launcher-1.12.2.jar`). This is a network glitch, not a test failure; the retry completed cleanly with `BUILD SUCCESS`.
- Docker daemon was confirmed running by the session-start hook.

## Row to append to the Test Log sheet

`spring-boot-testcontainer Test Log` — https://docs.google.com/spreadsheets/d/153GCtkp7XvQBhWMH9z7VQSw-N37l6xa3oyJg2BhcOOw/edit

| date | time | verdict | passed | failed | skipped | duration | notes |
|---|---|---|---|---|---|---|---|
| 2026-11-08 | 09:48 UTC | PASS | 8 | 0 | 0 | 00:43 min | All 8 tests across 7 classes green (Total time 42.5s); unchanged vs 2026-11-01 run — no newly-broken or newly-fixed tests; initial build hit a transient Maven download glitch (Attempted read from closed stream) on the JUnit platform launcher jar and passed clean on retry |

> **Could not append this row automatically.** Appending requires the Google **Sheets** editor connector, but this session only has the Google **Drive** connector enabled (verified via connector settings). Drive can read the sheet but cannot edit cells in an existing spreadsheet. Enable the Google Sheets connector in this chat's connector settings and the row can be appended in place, keeping the same sheet link.
