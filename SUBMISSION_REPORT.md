# Lab 05 - Submission Report

**Student:** Beakjoen  
**Date:** 19/06/2026  
**Course:** FIT4110 - Lab 05 Docker Compose Readiness

---

## Completion Status

### Required Artifacts (11/11)

1. ✅ `docker-compose.yml`
2. ✅ `.dockerignore`
3. ✅ `.env.example`
4. ✅ `RUN_COMPOSE.md`
5. ✅ `contracts/iot-ingestion.openapi.yaml`
6. ✅ `postman/environments/FIT4110_lab05_local.postman_environment.json`
7. ✅ `reports/newman-lab05-compose.xml`
8. ✅ `reports/newman-lab05-compose.html`
9. ✅ `reports/screenshots/` (3 screenshots)
10. ✅ Docker images pushed to registry
11. ✅ `checklists/readiness-checklist.md`

### Completion Criteria (7/7)

1. ✅ docker-compose.yml: 3 containers, networks, volumes configured
2. ✅ HEALTHCHECK and non-root user for all services
3. ✅ Required files complete, no secrets exposed
4. ✅ Service dependencies with health conditions
5. ✅ Newman tests: 17/19 assertions passed (89.5%)
6. ✅ Reports and evidence provided
7. ✅ Images tagged and pushed to ghcr.io

---

## Docker Images

- `ghcr.io/beakjoen/lab-05-api:v0.1.0-beakjoen`
- `ghcr.io/beakjoen/lab-05-ai-service:v0.1.0-beakjoen`

Registry: https://github.com/Beakjoen?tab=packages

---

## Test Results

- Newman assertions: 17/19 passed
- Success rate: 89.5%
- Reports: XML and HTML format available

---

## Technical Details

**Services:**
- API: FastAPI on port 8000 (non-root: appuser)
- Database: PostgreSQL 15 Alpine (health: pg_isready)
- AI Service: FastAPI on port 9000 (non-root: appuser)

**Networks:**
- team-internal (bridge)
- class-net (bridge)

**Volumes:**
- db-data (PostgreSQL persistent storage)

---

## Evidence

- Test reports: `reports/newman-lab05-compose.{xml,html}`
- Screenshots: `reports/screenshots/` (health checks, logs)
- Docker push: `reports/DOCKER_PUSH_EVIDENCE.md`
- Readiness checklist: `checklists/readiness-checklist.md`

---

**Status:** Ready for submission
