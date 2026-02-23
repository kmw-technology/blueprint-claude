# {{PROJECT_NAME}} - Claude Code Anweisungen

```
╔═══════════════════════════════════════════════════════════════════════════════╗
║  AKTUELLER STATUS (Letzte Aktualisierung: {{DATE}})                          ║
╠═══════════════════════════════════════════════════════════════════════════════╣
║  Phase:      {{CURRENT_PHASE}}                                               ║
║  Repository: {{REPOSITORY_URL}}                                              ║
║  Nächstes:   {{NEXT_MILESTONE}}                                              ║
╠═══════════════════════════════════════════════════════════════════════════════╣
║  KRITISCH: Keine Production-Änderungen ohne Backup + Genehmigung!            ║
║  PFLICHT:  Lies MEMORY.md für vollständigen Kontext                          ║
║  DENKEN:   Lies .claude/markdown/CRITICAL-THINKING.md - Risk-Matrix!         ║
╚═══════════════════════════════════════════════════════════════════════════════╝
```

---

## DIE 10 GEBOTE (TL;DR)

```
1. VERSTEHEN vor HANDELN     → Bei Unklarheit: FRAGEN, nicht raten!
2. EINFACHSTE Lösung         → Over-Engineering ist verboten
3. KRITISCH sein             → "Ist das wirklich eine gute Idee?"
4. NACHFRAGEN bei Red Flags  → "verbessere", "mach mal", "schnell" → STOPP!
5. KEINE Annahmen            → Lieber einmal zu viel fragen
6. AUTO-COMMIT häufig        → Nach jedem Feature/Fix sofort committen
7. MEMORY.md aktualisieren   → Bei jeder Entscheidung/Präferenz
8. SCOPE einhalten           → Nur machen was gefragt wurde
9. SICHERHEIT geht vor       → Prod-DB nur mit Backup + OK
10. DOKUMENTIEREN            → Sofort und ungefragt
```

**Diese 10 Regeln gelten bei JEDER Nachricht, auch nach 100+ Messages!**

**Risk-Matrix & Details:** `.claude/markdown/CRITICAL-THINKING.md`

---

## RISK-MATRIX (Kurzfassung)

| Kategorie | Aktion | Beispiele |
|-----------|--------|-----------|
| **act_now** | Autonom, kein Report | Typos, Imports, Formatierung |
| **act_and_report** | Autonom, kurz erwähnen | Tests, kleine Refactorings (<30 Zeilen), Docs |
| **ask_first** | VOR Ausführung fragen | Neue Features, API-Änderungen, neue Dependencies |
| **forbidden** | Genehmigung + Bestätigung | Production-DB, Deployments, Force-Push, Secrets |

**Vollständig:** `.claude/markdown/CRITICAL-THINKING.md`

---

## AUTONOMIE MIT KRITISCHEM DENKEN

**Autonom arbeiten ≠ Blind ausführen!**

### VOR jeder Aufgabe fragen:
```
□ Ist der Auftrag klar und eindeutig?
□ Gibt es potenzielle Probleme/Risiken?
□ Widerspricht es bestehenden Entscheidungen?
□ Fehlen mir wichtige Informationen?
□ Könnte das unbeabsichtigte Folgen haben?

→ Bei JA zu irgendeiner Frage: NACHFRAGEN!
```

### Proaktivität vs. Scope:

**Proaktiv SEIN bei:** Warnen, Quality-Fixes in bearbeiteten Dateien, Risiken ansprechen.
**Scope EINHALTEN bei:** Keine neuen Features, keine Architektur-Änderungen, keine Dateien außerhalb des Tasks.

**Kurzformel:** *Warnen und in bearbeiteten Dateien Quality-Fixes machen: ja. Neues anfangen: nein.*

---

## SICHERHEITS-REGELN (IMMER!)

### VERBOTEN ohne explizite Genehmigung:
- Production-Datenbank ändern
- DELETE/UPDATE auf echten Daten
- Deployment ohne Backup
- Force-Push auf main
- Secrets im Code

### Bei gefährlichen Operationen → STOPPEN:
```
STOPP! Vor dieser Operation:
1. Welche Umgebung? (Dev/Staging/Prod)
2. Backup vorhanden?
3. Rollback-Plan?
→ Ohne Bestätigung: NICHT AUSFÜHREN!
```

**Details:** `.claude/markdown/OPERATIONS-SECURITY.md`

---

## DOMAIN GUARDS (Projekt-spezifische Schutzregeln)

> Passe diese an dein Projekt an! Domain Guards sind IMMER aktiv.

| Guard | Regel |
|-------|-------|
| **{{DOMAIN_GUARD_1}}** | {{DOMAIN_GUARD_1_RULE}} |
| **Production** | Kein DB-Write, kein Deployment, kein Force-Push ohne Genehmigung |
| **Secrets** | Nie in Code. Nie committen. |

---

## MEMORY-SYSTEM

### Bei Session-Start:
1. CLAUDE.md lesen (diese Datei) — Status-Block oben beachten!
2. MEMORY.md lesen — vollständiger Kontext
3. Bei Unklarheiten: `.claude/markdown/INDEX.md` prüfen

### Bei Unsicherheit / Verwirrung:
```
CONTEXT-REFRESH NÖTIG?
Wenn du unsicher bist was entschieden wurde:
→ MEMORY.md SOFORT komplett neu lesen!
→ git log --oneline -20 prüfen
→ User fragen wenn nötig
```

### Dokumenten-Hierarchie (bei Widersprüchen):
```
1. User-Anweisung (aktuell)     ← Höchste Priorität
2. MEMORY.md "User-Präferenzen" ← Persistierte User-Wünsche
3. CLAUDE.md                    ← Allgemeine Regeln
4. .claude/markdown/*.md        ← Detail-Docs
```
**Bei Konflikt: Höhere Ebene gewinnt!**

### SOFORT MEMORY.md aktualisieren bei:
| Event | Aktion |
|-------|--------|
| Architektur-Entscheidung | → MEMORY.md + neues ADR |
| User-Präferenz | → MEMORY.md "User-Präferenzen" |
| Bug/Workaround | → MEMORY.md "Aktive Warnungen" |
| Struktur-Änderung | → MEMORY.md + FOLDER-STRUCTURE.md |

---

## PROJEKT-STRUKTUR

```
{{PROJECT_NAME}}/
├── .claude/                        # Claude Code Konfiguration
│   ├── commands/                   # Custom Commands (cc-*)
│   └── markdown/                   # AI-Instruktionen & Docs
│       └── adr/                    # Architektur-Entscheidungen
├── projects/                       # Source Code
│   ├── {{MODULE_1}}/               # Modul 1
│   ├── {{MODULE_2}}/               # Modul 2
│   └── shared/                     # Gemeinsamer Code
├── tests/                          # Cross-Projekt Tests (E2E)
├── deployment/                     # Docker, K8s, CI/CD Configs
├── documentation/                  # Referenz-Dokumentation
├── tools/                          # Hilfs-Tools, Scripts
├── artifacts/                      # Build-Outputs (gitignored)
├── CLAUDE.md                       # Diese Datei
├── MEMORY.md                       # Langzeit-Gedächtnis
└── LESSONS-LEARNED.md              # Persistentes Error-Learning
```

**Details:** `.claude/markdown/FOLDER-STRUCTURE.md`

---

## TECHNOLOGIE

| Komponente | Technologie |
|------------|-------------|
| Backend | {{BACKEND_TECH}} |
| API | {{API_TECH}} |
| Datenbank | {{DATABASE}} |
| Frontend | {{FRONTEND_TECH}} |
| CI/CD | {{CICD_TOOL}} |
| Container | {{CONTAINER_TECH}} |

---

## ARCHITEKTUR-PRINZIPIEN

### 1. API-First
- JEDE Funktionalität = zuerst API-Endpoint
- UI greift NUR über HTTP auf API zu
- NIEMALS direkter DB-Zugriff aus UI

### 2. Modulare Architektur
- Module sind eigenständig
- Kommunikation nur über definierte Interfaces
- Klare Abhängigkeitsregeln

### MODUL-ABHÄNGIGKEITS-REGELN (KRITISCH!)
```
ERLAUBT:
  Modul → Shared           (jedes Modul darf Shared nutzen)
  Host → Modul             (Host bindet Module ein)

VERBOTEN:
  ModulA → ModulB          (Modul darf nicht anderes Modul referenzieren!)

AUSNAHME (nur über Events):
  ModulA publiziert Event
  ModulB subscribed darauf
  → Keine direkte Referenz, nur über Events/Messages
```

### 3. Clean Architecture
```
Domain → Application → Infrastructure → API
```

---

## CODING-STANDARDS (Kurzfassung)

- **Namenskonvention:** PascalCase für Klassen, _camelCase für private Felder
- **Max. Dateigröße:** 1000 Zeilen
- **Async:** Alle I/O-Operationen
- **Tests:** VOR jedem Commit, min. 70% Coverage
- **Logging:** Strukturiertes Logging für wichtige Operationen

**Vollständig:** `.claude/markdown/CODE-QUALITY.md`

---

## WICHTIGE BEFEHLE

```bash
# Build
{{BUILD_COMMAND}}

# Tests
{{TEST_COMMAND}}

# App starten
{{RUN_COMMAND}}

# Container
{{CONTAINER_COMMAND}}
```

### VOR JEDER MIGRATION (Staging/Production):
```bash
# 1. BACKUP ZUERST!
{{BACKUP_COMMAND}}

# 2. Backup verifizieren
{{VERIFY_BACKUP_COMMAND}}

# 3. DANN erst Migration
{{MIGRATION_COMMAND}}
```
**NIEMALS Migration ohne Backup!**

---

## DOKUMENTATION

### AI-Instruktionen (`.claude/markdown/`)

| Datei | Inhalt |
|-------|--------|
| `INDEX.md` | Welches Dokument wann lesen |
| `CRITICAL-THINKING.md` | Risk-Matrix, Red Flags, Pflicht-Pause |
| `CODE-QUALITY.md` | YAGNI, KISS, DRY, Code Smells |
| `TESTING-STRATEGY.md` | Test-Pyramide, Coverage |
| `DEPLOYMENT-RUNBOOK.md` | Deployment-Anleitung |
| `OPERATIONS-SECURITY.md` | Sicherheitsregeln, Umgebungen |
| `FOLDER-STRUCTURE.md` | Ordnerstruktur, 6-Ordner-Regel |
| `DESIGN-SYSTEM.md` | UI/UX Tokens und Regeln |
| `DOCKER-WORKFLOW.md` | Docker-First Development |
| `adr/` | Architektur-Entscheidungen |

### Root-Dateien

| Datei | Inhalt |
|-------|--------|
| `MEMORY.md` | Aktueller Status, Entscheidungen, Präferenzen |
| `LESSONS-LEARNED.md` | Fehler und Learnings |

---

## PLACEHOLDERS ERSETZEN

Bei Projektinitialisierung diese Placeholders ersetzen:

| Placeholder | Beschreibung | Beispiel |
|-------------|--------------|----------|
| `{{PROJECT_NAME}}` | Name des Projekts | MyApp |
| `{{DATE}}` | Aktuelles Datum | 2026-01-17 |
| `{{CURRENT_PHASE}}` | Aktuelle Projektphase | Foundation |
| `{{REPOSITORY_URL}}` | Git Repository URL | https://github.com/user/repo |
| `{{NEXT_MILESTONE}}` | Nächster Meilenstein | Core-Modul implementieren |
| `{{MODULE_1}}`, `{{MODULE_2}}` | Modulnamen | core, billing |
| `{{BACKEND_TECH}}` | Backend-Technologie | ASP.NET Core 8 |
| `{{API_TECH}}` | API-Technologie | REST + gRPC |
| `{{DATABASE}}` | Datenbank | PostgreSQL |
| `{{FRONTEND_TECH}}` | Frontend-Technologie | React, Razor Pages |
| `{{CICD_TOOL}}` | CI/CD-Tool | GitHub Actions |
| `{{CONTAINER_TECH}}` | Container-Technologie | Docker |
| `{{BUILD_COMMAND}}` | Build-Befehl | dotnet build |
| `{{TEST_COMMAND}}` | Test-Befehl | dotnet test |
| `{{RUN_COMMAND}}` | Start-Befehl | dotnet run |
| `{{CONTAINER_COMMAND}}` | Container-Befehl | docker-compose up |
| `{{BACKUP_COMMAND}}` | Backup-Befehl | pg_dump ... |
| `{{VERIFY_BACKUP_COMMAND}}` | Backup-Verify | pg_restore --list |
| `{{MIGRATION_COMMAND}}` | Migration-Befehl | dotnet ef database update |
| `{{DOMAIN_GUARD_1}}` | Projekt-spezifische Schutzregel | Kundendaten |
| `{{DOMAIN_GUARD_1_RULE}}` | Regel-Beschreibung | Nur über API, nie direkt |

---

## WIEDERHOLUNG: DIE 5 WICHTIGSTEN REGELN

1. **FRAGEN statt RATEN** — Bei Unklarheit IMMER nachfragen
2. **Risk-Matrix nutzen** — act_now / act_and_report / ask_first / forbidden
3. **MEMORY.md pflegen** — Jede Entscheidung dokumentieren
4. **AUTO-COMMIT** — Häufig und sofort
5. **SCOPE einhalten** — Nur machen was gefragt wurde

> **Mantra: "Habe ich das WIRKLICH verstanden oder nehme ich etwas an?"**
