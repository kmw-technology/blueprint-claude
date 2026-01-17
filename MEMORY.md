# {{PROJECT_NAME}} - Memory File

**WICHTIG: Diese Datei enthält kritische Informationen, die Claude bei JEDER Conversation lesen sollte. Sie fungiert als "Langzeitgedächtnis".**

---

## ⚠️ CONTEXT-VERLUST? LIES DAS HIER!

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

## 🎯 PROJEKT-ESSENZ (Die 5 wichtigsten Punkte)

1. **{{PRINCIPLE_1}}** - {{DESCRIPTION_1}}
2. **{{PRINCIPLE_2}}** - {{DESCRIPTION_2}}
3. **{{PRINCIPLE_3}}** - {{DESCRIPTION_3}}
4. **{{PRINCIPLE_4}}** - {{DESCRIPTION_4}}
5. **{{PRINCIPLE_5}}** - {{DESCRIPTION_5}}

---

## 🚨 KRITISCHE DATEIEN (PFLICHTLEKTÜRE VOR AKTIONEN!)

| Aktion | ZUERST LESEN |
|--------|--------------|
| **Deployment** | `DEPLOYMENT-RUNBOOK.md` |
| **Kritische Änderung** | `LESSONS-LEARNED.md` |
| **Code schreiben** | `CODE-QUALITY.md` (YAGNI/KISS) |
| **Tests schreiben** | `TESTING-STRATEGY.md` |
| **Bei Fehler** | `LESSONS-LEARNED.md` → Fehler dokumentieren! |

---

## Kritische Entscheidungen (Zusammenfassung)

| Entscheidung | Begründung | ADR |
|--------------|------------|-----|
| {{DECISION_1}} | {{REASON_1}} | ADR-0001 |
| {{DECISION_2}} | {{REASON_2}} | ADR-0002 |

**Vollständige ADRs:** `/documentation/adr/`

### ADR-Index (Wann lesen?)

| ADR | Thema | Lesen wenn... |
|-----|-------|---------------|
| ADR-0001 | {{ADR_1_TOPIC}} | {{ADR_1_WHEN}} |
| ADR-0002 | {{ADR_2_TOPIC}} | {{ADR_2_WHEN}} |

### Dokumentations-Index (Wann welches Dokument lesen?)

| Dokument | Lesen wenn... |
|----------|---------------|
| ARCHITECTURE.md | Architektur-Überblick, neue Module |
| CODING-STANDARDS.md | Code schreiben, Code Review |
| CODE-QUALITY.md | YAGNI/KISS, Code Smells, Duplikate, Static Analysis |
| TESTING-STRATEGY.md | Tests schreiben, Coverage |
| DEPLOYMENT-RUNBOOK.md | **VOR JEDEM DEPLOYMENT LESEN!** |
| FOLDER-STRUCTURE.md | Neue Dateien/Ordner erstellen |
| **LESSONS-LEARNED.md** | **VOR KRITISCHEN AKTIONEN LESEN!** |

### Custom Commands (Wann welchen Command nutzen?)

**Prefix:** Alle Commands starten mit `cc-` (custom command)

| Command | Wann nutzen? |
|---------|--------------|
| `/project:cc-health-check` | Gesamtüberblick über Projekt-Gesundheit |
| `/project:cc-pre-commit` | VOR jedem Commit ausführen |
| `/project:cc-code-review` | Code auf Best Practices prüfen |
| `/project:cc-find-duplicates` | Duplicate Code finden und refactoren |
| `/project:cc-fix-code-smells` | Code Smells identifizieren und beheben |
| `/project:cc-write-tests` | Tests für Datei/Feature schreiben |
| `/project:cc-check-architecture` | Architektur-Regeln prüfen |
| `/project:cc-tech-debt` | Technical Debt analysieren |
| `/project:cc-security-check` | Sicherheitsanalyse durchführen |
| `/project:cc-run-tests` | Tests ausführen |
| `/project:cc-build-check` | Build prüfen |

**Empfohlene Routine:**
1. **Vor dem Coden:** `/project:cc-health-check` (wöchentlich)
2. **Nach dem Coden:** `/project:cc-code-review [datei]`
3. **Vor dem Commit:** `/project:cc-pre-commit`
4. **Bei Problemen:** `/project:cc-tech-debt` oder `/project:cc-find-duplicates`

---

## User-Präferenzen

| Bereich | Präferenz | Datum |
|---------|-----------|-------|
| Memory-System | Claude soll IMMER und UNGEFRAGT wichtige Dinge dokumentieren | {{DATE}} |
| Autonomie | Autonom arbeiten, aber KRITISCH gegenüber User-Prompts - bei Problemen/Unklarheiten NACHFRAGEN! | {{DATE}} |

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

## Langzeit-Strategien (Implementiert)

### Testing
- **Strategie:** Test-Pyramide (70% Unit, 20% Integration, 10% E2E)
- **Coverage-Gate:** Build scheitert unter 70%
- **Docs:** `/documentation/TESTING-STRATEGY.md`

### Dependency-Management
- **Dependabot:** Wöchentliche Updates
- **Security:** Vulnerability-Scan in CI
- **Docs:** `/documentation/DEPENDENCY-MANAGEMENT.md`

### Wartungs-Checklisten

| Intervall | Aufgabe | Dokument |
|-----------|---------|----------|
| **Wöchentlich** | Dependabot-PRs mergen | DEPENDENCY-MANAGEMENT.md |
| **Monatlich** | Major-Updates evaluieren | DEPENDENCY-MANAGEMENT.md |
| **Vor Release** | Coverage + Security Check | TESTING-STRATEGY.md |

---

## Letzte wichtige Änderungen

| Datum | Änderung | Autor |
|-------|----------|-------|
| {{DATE}} | Projekt initialisiert | Claude |

---

## Regeln für Claude (IMMER beachten!)

### 1. Vor JEDER Code-Änderung
- [ ] Relevante Dokumentation lesen (`/documentation/`)
- [ ] FOLDER-STRUCTURE.md beachten
- [ ] CODING-STANDARDS.md befolgen
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
- `/documentation/` lesen
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
2. "Offene Fragen" prüfen - evtl. mit User klären
3. "User-Präferenzen" beachten - das sind REGELN!

### WÄHREND der Session:
- Entscheidung getroffen? → SOFORT hier eintragen
- User äußert Wunsch? → SOFORT in "User-Präferenzen"
- Etwas gelernt? → SOFORT in "Learnings"
- Bug/Problem? → SOFORT in "Aktive Warnungen"

### Am ENDE der Session:
- "Letzte wichtige Änderungen" aktualisieren
- Prüfen ob alle Entscheidungen dokumentiert sind

**Regel:** Lieber zu viel dokumentieren als zu wenig!
