# Project: spring-boot-testcontainer

Spring Boot demo with Testcontainers integration tests (MySQL).

## Build & Test
- Build: `./mvnw clean package`
- Java 17, use the Maven wrapper (./mvnw), not system mvn

## Testcontainers
- Tests start a MySQL 8 container via `jdbc:tc:mysql:8:///test`
- A working Docker daemon is REQUIRED. Run `docker info` first.

## Done when
- `./mvnw clean package` ends with BUILD SUCCESS and all tests pass
