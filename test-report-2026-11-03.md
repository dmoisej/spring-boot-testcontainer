# spring-boot-testcontainer — Test Run Report

**Date:** 2026-11-03  ·  **Time:** 10:24 UTC

## Verdict: PASS

| Metric | Value |
|---|---|
| Passed | 8 |
| Failed | 0 |
| Skipped | 0 |
| Total run time | 52.3 s (Maven total time) |
| Command | `./mvnw clean package` (Java 21, Maven wrapper, MySQL/PostgreSQL Testcontainers) |

All 8 tests across 7 test classes passed; build ended with **BUILD SUCCESS**.

## Per-class results

| Test class | Tests | Result | Time |
|---|---|---|---|
| DatasourceHealthTests | 1 | PASS | 10.92 s |
| postgresql.ProjectRepositoryTest | 1 | PASS | 7.08 s |
| postgresql.ConsultantRepositoryTest | 1 | PASS | 2.82 s |
| postgresql.BookRepositoryRestResourceTests | 2 | PASS | 6.05 s |
| postgresql.BookRepositoryTest | 1 | PASS | 2.88 s |
| postgresql.CustomerControllerTest | 1 | PASS | 3.45 s |
| SpringBootTestcontainerApplicationTests | 1 | PASS | 2.87 s |
| **Total** | **8** | **PASS** | — |

## Failures

None.

## Comparison vs previous run (2026-11-01)

Previous run: PASS, 8 passed / 0 failed / 0 skipped. This run is unchanged — no newly-broken and no newly-fixed tests.

## Notes

- A working Docker daemon was required; it was not running at session start (stale `/var/run/docker.pid`). Removed the stale pid file and started `dockerd`; the daemon came up and all Testcontainers (MySQL 8, PostgreSQL) started normally.
- The initial `./mvnw clean package` attempts hit transient Maven Central rate-limiting (HTTP 429) on the `plexus-utils` surefire plugin dependency and on the surefire / JUnit Platform provider jars. Resolved by fetching the affected artifacts directly into the local `~/.m2` repository with retry/back-off, then running the suite offline. The test outcome itself was unaffected.

## Test Log row (for the "spring-boot-testcontainer Test Log" Google Sheet)

| date | time | verdict | passed | failed | skipped | duration | notes |
|---|---|---|---|---|---|---|---|
| 2026-11-03 | 10:24 UTC | PASS | 8 | 0 | 0 | 00:52 min | All 8 tests across 7 classes green (Total time 52.3s); unchanged vs 2026-11-01 run — no newly-broken or newly-fixed tests; initial builds hit transient Maven Central rate-limiting (429) on the plexus-utils surefire plugin dependency and the surefire/JUnit platform jars and passed clean after fetching them directly |

> This row could not be appended automatically: the Google Sheets editor connector is not enabled in this session (only Google Drive is connected, and Drive cannot append cells to an existing Sheet). Add this row manually, or re-run once the Google Sheets connector is enabled.
