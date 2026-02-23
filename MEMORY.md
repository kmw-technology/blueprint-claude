# {{PROJECT_NAME}} - Memory File

**WICHTIG: Diese Datei enthält kritische Informationen, die Claude bei JEDER Conversation lesen sollte. Sie fungiert als "Langzeitgedächtnis".**

---

## CONTEXT-VERLUST? LIES DAS HIER!

**Wenn du (Claude) unsicher bist oder dich nicht erinnerst:**
1. Diese ganze Datei lesen
2. CLAUDE.md Status-Block prüfen
3. `git log --oneline -20` für letzte Änderungen
4. Bei Unklarheit: User fragen!

**Symptome von Context-Verlust:**
- Du fragst etwas, das schon entschieden wurde
- Du weißt nicht mehr, was die aktuelle Aufgabe ist
- Du schlägst etwas vor, das User-Präferenzen widerspricht

→ **Lösung:** Diese Datei komplett neu lesen!

---

## Aktuelle Projekt-Phase

**Phase:** {{CURRENT_PHASE}}
**Status:** {{CURRENT_STATUS}}
**Nächste Schritte:** {{NEXT_STEPS}}

---

## PROJEKT-ESSENZ (Die 5 wichtigsten Punkte)

1. **{{PRINCIPLE_1}}** — {{DESCRIPTION_1}}
2. **{{PRINCIPLE_2}}** — {{DESCRIPTION_2}}
3. **{{PRINCIPLE_3}}** — {{DESCRIPTION_3}}
4. **{{PRINCIPLE_4}}** — {{DESCRIPTION_4}}
5. **{{PRINCIPLE_5}}** — {{DESCRIPTION_5}}

---

## KRITISCHE DATEIEN (PFLICHTLEKTÜRE VOR AKTIONEN!)

| Aktion | ZUERST LESEN |
|--------|--------------|
| **Deployment** | `.claude/markdown/DEPLOYMENT-RUNBOOK.md` |
| **Kritische Änderung** | `LESSONS-LEARNED.md` |
| **Code schreiben** | `.claude/markdown/CODE-QUALITY.md` (YAGNI/KISS) |
| **Tests schreiben** | `.claude/markdown/TESTING-STRATEGY.md` |
| **UI ändern** | `.claude/markdown/DESIGN-SYSTEM.md` |
| **Docker** | `.claude/markdown/DOCKER-WORKFLOW.md` |
| **Bei Fehler** | `LESSONS-LEARNED.md` → Fehler dokumentieren! |

---

## Kritische Entscheidungen (Zusammenfassung)

| Entscheidung | Begründung | ADR |
|--------------|------------|-----|
| {{DECISION_1}} | {{REASON_1}} | ADR-0001 |
| {{DECISION_2}} | {{REASON_2}} | ADR-0002 |

**Vollständige ADRs:** `.claude/markdown/adr/`

### ADR-Index (Wann lesen?)

| ADR | Thema | Lesen wenn... |
|-----|-------|---------------|
| ADR-0001 | {{ADR_1_TOPIC}} | {{ADR_1_WHEN}} |
| ADR-0002 | {{ADR_2_TOPIC}} | {{ADR_2_WHEN}} |

### Dokumentations-Index (Wann welches Dokument lesen?)

| Dokument | Lesen wenn... |
|----------|---------------|
| `.claude/markdown/INDEX.md` | Unsicher welches Dokument relevant ist |
| `.claude/markdown/CODE-QUALITY.md` | Code schreiben, Code Review |
| `.claude/markdown/TESTING-STRATEGY.md` | Tests schreiben, Coverage |
| `.claude/markdown/DEPLOYMENT-RUNBOOK.md` | **VOR JEDEM DEPLOYMENT LESEN!** |
| `.claude/markdown/FOLDER-STRUCTURE.md` | Neue Dateien/Ordner erstellen |
| `.claude/markdown/DESIGN-SYSTEM.md` | UI/Frontend ändern |
| `.claude/markdown/DOCKER-WORKFLOW.md` | Docker-Services starten/stoppen |
| `LESSONS-LEARNED.md` | **VOR KRITISCHEN AKTIONEN LESEN!** |

### Custom Commands (Wann welchen Command nutzen?)

**Prefix:** Alle Commands starten mit `cc-` (custom command)

| Command | Wann nutzen? |
|---------|--------------|
| `/project:cc-init` | Session starten, Context laden |
| `/project:cc-health-check` | Gesamtüberblick über Projekt-Gesundheit |
| `/project:cc-pre-commit` | VOR jedem Commit ausführen |
| `/project:cc-code-review` | Code auf Best Practices prüfen |
| `/project:cc-find-duplicates` | Duplicate Code finden |
| `/project:cc-fix-code-smells` | Code Smells identifizieren und beheben |
| `/project:cc-write-tests` | Tests für Datei/Feature schreiben |
| `/project:cc-check-architecture` | Architektur-Regeln prüfen |
| `/project:cc-tech-debt` | Technical Debt analysieren |
| `/project:cc-security-check` | Sicherheitsanalyse durchführen |
| `/project:cc-build-check` | Build prüfen |
| `/project:cc-run-tests` | Tests ausführen |
| `/project:cc-maintenance` | Code-Wartung (Audit/Fix) |
| `/project:cc-docker-up` | Docker-Services starten |
| `/project:cc-docker-logs` | Docker-Logs analysieren |
| `/project:cc-docker-stop` | Docker-Services stoppen |

**Empfohlene Routine:**
1. **Session-Start:** `/project:cc-init` (Context laden)
2. **Vor dem Coden:** `/project:cc-health-check` (wöchentlich)
3. **Nach dem Coden:** `/project:cc-code-review [datei]`
4. **Vor dem Commit:** `/project:cc-pre-commit`
5. **Bei Context-Drift:** `/project:cc-init --refresh`

---

## User-Präferenzen

| Bereich | Präferenz | Datum |
|---------|-----------|-------|
| Memory-System | Claude soll IMMER und UNGEFRAGT wichtige Dinge dokumentieren | {{DATE}} |
| Autonomie | Autonom arbeiten, aber KRITISCH gegenüber User-Prompts — bei Problemen/Unklarheiten NACHFRAGEN! | {{DATE}} |

---

## Offene Fragen (zu klären)

| Frage | Kontext | Status |
|-------|---------|--------|
| - | - | - |

---

## Aktive Warnungen & Bekannte Probleme

| Problem | Workaround | Ticket |
|---------|------------|--------|
| - | - | - |

---

## Deployment-Informationen

### Development
```bash
# App starten
{{DEV_RUN_COMMAND}}

# Tests ausführen
{{TEST_COMMAND}}
```

### Staging
```bash
# TODO: Wird eingerichtet wenn CI/CD fertig
```

### Production
```bash
# TODO: Wird eingerichtet wenn Staging stabil
```

---

## Wichtige Kontakte & Ressourcen

- **Repository:** {{REPOSITORY_URL}}
- **CI/CD:** {{CICD_TOOL}}
- **Issue Tracker:** {{ISSUE_TRACKER}}

---

## Modul-Status

| Modul | Status | Version | Notizen |
|-------|--------|---------|---------|
| {{MODULE_1}} | In Entwicklung | 0.1.0 | Basis-Struktur |
| {{MODULE_2}} | Geplant | - | - |

---

## Code-Qualitäts-Metriken (Ziel)

| Metrik | Ziel | Aktuell |
|--------|------|---------|
| Test Coverage | >70% | - |
| Build Zeit | <5min | - |
| Technical Debt | <2h | - |

---

## Langzeit-Strategien

### Testing
- **Strategie:** Test-Pyramide (70% Unit, 20% Integration, 10% E2E)
- **Coverage-Gate:** Build scheitert unter 70%
- **Docs:** `.claude/markdown/TESTING-STRATEGY.md`

### Wartungs-Checklisten

| Intervall | Aufgabe | Command/Dokument |
|-----------|---------|------------------|
| **Wöchentlich** | Health-Check | `/project:cc-health-check` |
| **Wöchentlich** | Dependency-Updates prüfen | Dependabot/Renovate |
| **Monatlich** | Tech-Debt analysieren | `/project:cc-tech-debt` |
| **Monatlich** | Duplicates prüfen | `/project:cc-find-duplicates` |
| **Vor Release** | Coverage + Security Check | `/project:cc-pre-commit` |

---

## Letzte wichtige Änderungen

| Datum | Änderung | Autor |
|-------|----------|-------|
| {{DATE}} | Projekt initialisiert | Claude |

---

## Regeln für Claude (IMMER beachten!)

### 1. Vor JEDER Code-Änderung
- [ ] Relevante Dokumentation lesen (`.claude/markdown/`)
- [ ] FOLDER-STRUCTURE.md beachten
- [ ] CODE-QUALITY.md befolgen
- [ ] Tests für Änderungen schreiben

### 2. Bei neuen Features
- [ ] API-First: Endpoint zuerst
- [ ] Tests schreiben
- [ ] Dokumentation aktualisieren

### 3. Vor Commits
- [ ] Build erfolgreich?
- [ ] Alle Tests grün?
- [ ] Keine Secrets committed?
- [ ] Code Review-ready?

### 4. NIEMALS
- Direkten DB-Zugriff aus UI
- Tests ohne Assertions
- Hardcoded Secrets
- Dateien außerhalb der definierten Struktur erstellen
- Quick-Fixes ohne Tests
- Force-Push auf main/develop

### 5. Bei Unsicherheit
- **Fragen!** Lieber einmal mehr fragen als Fehler machen
- `.claude/markdown/` lesen
- ADRs prüfen
- Bestehenden Code als Referenz nutzen

---

## Session-Log (Gegen Context-Verlust)

**Zweck:** Bei langen Sessions alle 10-15 Nachrichten eine Zusammenfassung eintragen.
So geht bei Context-Komprimierung nichts Wichtiges verloren.

| Session-Datum | Zusammenfassung | Ergebnis |
|---------------|-----------------|----------|
| {{DATE}} | Projekt initialisiert mit Blueprint | Setup Complete |

---

## Learnings (Was wir gelernt haben)

| Datum | Learning | Kontext |
|-------|----------|---------|
| {{DATE}} | Memory-Updates müssen SOFORT und UNGEFRAGT passieren | Claude vergisst sonst wichtige Dinge |
| {{DATE}} | Autonom ≠ Blind ausführen | Bei Unklarheiten/Problemen IMMER nachfragen, nicht raten |
| {{DATE}} | YAGNI ≠ Nicht langfristig denken | YAGNI gilt für Features, NICHT für Qualität/Tests/Docs |
| {{DATE}} | Fehler MÜSSEN in LESSONS-LEARNED.md | Sonst werden gleiche Fehler wiederholt |

---

## Für zukünftige Claude-Sessions

**WICHTIG:** Du (Claude) MUSST diese Datei AKTIV pflegen!

### Bei JEDER Session:
1. Diese Datei ZUERST lesen
2. "Offene Fragen" prüfen — evtl. mit User klären
3. "User-Präferenzen" beachten — das sind REGELN!

### WÄHREND der Session:
- Entscheidung getroffen? → SOFORT hier eintragen
- User äußert Wunsch? → SOFORT in "User-Präferenzen"
- Etwas gelernt? → SOFORT in "Learnings"
- Bug/Problem? → SOFORT in "Aktive Warnungen"

### Am ENDE der Session:
- "Letzte wichtige Änderungen" aktualisieren
- Prüfen ob alle Entscheidungen dokumentiert sind

**Regel:** Lieber zu viel dokumentieren als zu wenig!
