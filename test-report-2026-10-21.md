# spring-boot-testcontainer — Test Run Report

**Date:** 2026-10-21  **Time:** 09:47 UTC  **Command:** `./mvnw clean package`

## Verdict: PASS

| Metric | Value |
|---|---|
| Passed | 8 |
| Failed | 0 |
| Skipped | 0 |
| Duration | 00:55 min (Maven total time 55.003 s) |

All 8 tests across 7 test classes passed:

| Test class | Tests | Result |
|---|---|---|
| DatasourceHealthTests | 1 | PASS |
| postgresql.ProjectRepositoryTest | 1 | PASS |
| postgresql.ConsultantRepositoryTest | 1 | PASS |
| postgresql.BookRepositoryRestResourceTests | 2 | PASS |
| postgresql.BookRepositoryTest | 1 | PASS |
| postgresql.CustomerControllerTest | 1 | PASS |
| SpringBootTestcontainerApplicationTests | 1 | PASS |

## Failures

None.

## Comparison vs previous run (2026-10-20, PASS 8/0/0)

Unchanged — no newly-broken or newly-fixed tests. Still 8 passed / 0 failed / 0 skipped.

## Build notes

The first two `./mvnw clean package` attempts failed during dependency
resolution with transient Maven Central download glitches ("Attempted read
from closed stream") on the surefire / JUnit-platform jars — these were
network-transport aborts through the agent proxy, not test failures (the
tests never ran). Pre-fetching dependencies with Maven's HTTP retry handler
(`-Dmaven.wagon.http.retryHandler.count=10`) via `dependency:go-offline`,
then re-running the build, produced a clean `BUILD SUCCESS` with all tests
green.

## Google Sheet logging — NOT completed this run

The row below was prepared for the "spring-boot-testcontainer Test Log"
sheet but could NOT be appended: no Google Sheets editor connector is
available in this session (only Gmail and Google Drive are connected, and
Drive cannot append rows to a Sheet in place). The sheet was intentionally
left untouched rather than recreated as a new file.

Row to append at A54:

| date | time | verdict | passed | failed | skipped | duration | notes |
|---|---|---|---|---|---|---|---|
| 2026-10-21 | 09:47 UTC | PASS | 8 | 0 | 0 | 00:55 min | All 8 tests across 7 classes green (Total time 55s); unchanged vs 2026-10-20 run — no newly-broken or newly-fixed tests; first two build attempts hit transient Maven download glitches (Attempted read from closed stream) on the surefire/JUnit platform jars and passed clean after pre-fetching dependencies with the Maven HTTP retry handler |
