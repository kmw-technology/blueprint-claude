# Claude Code Project Blueprint

Ein wiederverwendbares Template für Projekte die mit Claude Code entwickelt werden.

## Was ist das?

Dieses Blueprint enthält **projekt-agnostische** Best Practices, Templates und Konfigurationen für die Zusammenarbeit mit Claude Code. Es wurde aus realen Projekterfahrungen extrahiert.

## Enthaltene Komponenten

```
blueprint-claude/
├── CLAUDE.md                    # Claude Code Anweisungen Template
├── MEMORY.md                    # Langzeit-Gedächtnis Template
├── LESSONS-LEARNED.md           # Error-Learning System Template
├── .claude/commands/            # Custom Commands für Code-Qualität
│   ├── cc-health-check.md       # Projekt Health-Check
│   ├── cc-pre-commit.md         # Pre-Commit Checks
│   ├── cc-code-review.md        # Code Review
│   ├── cc-write-tests.md        # Tests schreiben
│   ├── cc-find-duplicates.md    # Duplicate Code finden
│   ├── cc-fix-code-smells.md    # Code Smells beheben
│   ├── cc-tech-debt.md          # Technical Debt analysieren
│   ├── cc-security-check.md     # Security Analyse
│   └── cc-check-architecture.md # Architektur prüfen
├── .githooks/                   # Git Hooks für Sicherheit
│   ├── pre-commit               # Security-Check vor Commits
│   ├── install.sh               # Installation Script
│   └── README.md                # Hook Dokumentation
├── .github/workflows/           # CI/CD Templates
│   └── ci.yml                   # CI Pipeline
└── documentation/               # Dokumentations-Templates
    ├── CODE-QUALITY.md          # YAGNI, KISS, DRY
    ├── TESTING-STRATEGY.md      # Test-Pyramide, Coverage
    └── DEPLOYMENT-RUNBOOK.md    # Deployment-Anleitung
```

## Quick Start

### 1. Blueprint in neues Projekt kopieren

```bash
# Neues Projekt erstellen
mkdir my-new-project
cd my-new-project
git init

# Blueprint kopieren
cp -r /path/to/blueprint-claude/* .
cp -r /path/to/blueprint-claude/.* . 2>/dev/null || true
```

### 2. Placeholders ersetzen

Ersetze alle `{{PLACEHOLDER}}` in den Dateien:

| Placeholder | Beschreibung | Beispiel |
|-------------|--------------|----------|
| `{{PROJECT_NAME}}` | Projektname | MyApp |
| `{{DATE}}` | Aktuelles Datum | 2026-01-17 |
| `{{REPOSITORY_URL}}` | Git Repository | https://github.com/user/repo |
| `{{BACKEND_TECH}}` | Backend Technologie | ASP.NET Core 8 |
| `{{DATABASE}}` | Datenbank | PostgreSQL |
| `{{BUILD_COMMAND}}` | Build Befehl | dotnet build |
| ... | (siehe CLAUDE.md für alle) | |

### 3. Git Hooks aktivieren

```bash
chmod +x .githooks/install.sh
./.githooks/install.sh
```

### 4. Projektspezifische Anpassungen

- **CLAUDE.md**: Architektur-Prinzipien, Tech-Stack, Befehle anpassen
- **MEMORY.md**: Projekt-Essenz, Module, Entscheidungen dokumentieren
- **CI/CD**: Solution-Name und Datenbank-Config anpassen

## Enthaltene Learnings

### Memory-System

- **CLAUDE.md** als Schnellreferenz mit Status-Block
- **MEMORY.md** als Langzeit-Gedächtnis
- Hierarchie bei Widersprüchen definiert
- Sofortige Dokumentation von Entscheidungen

### Code-Qualität

- **YAGNI**: Gilt für Features, NICHT für Qualität/Tests/Docs
- **KISS**: Einfachste Lösung die funktioniert
- **DRY**: Erst bei 3. Duplikation abstrahieren
- Automatische Static Analysis

### Testing

- Test-Pyramide: 70% Unit, 20% Integration, 10% E2E
- Coverage-Gate: Build scheitert unter 70%
- Flaky-Test-Quarantäne
- Playwright für UI-Tests mit data-testid

### Sicherheit

- Pre-Commit Hook blockiert Secrets, gefährliche SQL
- Security-Scan in CI
- Production-Änderungen nur mit Backup + Approval

### Error-Learning

- LESSONS-LEARNED.md für persistentes Lernen aus Fehlern
- Anti-Patterns dokumentiert
- Erfolgreiche Patterns dokumentiert

## Custom Commands

Alle Commands starten mit `cc-` (custom command):

| Command | Beschreibung |
|---------|--------------|
| `/project:cc-health-check` | Projekt-Gesundheit prüfen |
| `/project:cc-pre-commit` | Vor Commit ausführen |
| `/project:cc-code-review` | Code reviewen |
| `/project:cc-write-tests` | Tests schreiben |
| `/project:cc-find-duplicates` | Duplikate finden |
| `/project:cc-fix-code-smells` | Code Smells beheben |
| `/project:cc-tech-debt` | Technical Debt analysieren |
| `/project:cc-security-check` | Security prüfen |
| `/project:cc-check-architecture` | Architektur prüfen |

## Empfohlene Routine

1. **Vor dem Coden:** `/project:cc-health-check` (wöchentlich)
2. **Nach dem Coden:** `/project:cc-code-review [datei]`
3. **Vor dem Commit:** `/project:cc-pre-commit`
4. **Bei Problemen:** `/project:cc-tech-debt` oder `/project:cc-find-duplicates`

## Best Practices für Claude Code

### Autonomie mit kritischem Denken

- Claude arbeitet autonom, aber hinterfragt kritisch
- Bei Unklarheiten: NACHFRAGEN statt raten
- Dokumentation SOFORT und UNGEFRAGT

### Bei Fehlern

1. SOFORT in LESSONS-LEARNED.md dokumentieren
2. Root Cause analysieren
3. Prävention vorschlagen
4. MEMORY.md aktualisieren

### Vor kritischen Aktionen

1. LESSONS-LEARNED.md lesen
2. Anti-Patterns prüfen
3. User-Approval einholen
4. Backup sicherstellen

## Erweiterung

Das Blueprint kann erweitert werden mit:

- Zusätzlichen Custom Commands für projektspezifische Aufgaben
- Weiteren CI/CD Workflows (Staging, Production)
- Domain-spezifischen Dokumentationen
- Projekt-spezifischen Pre-Commit Checks

## Lizenz

Frei verwendbar für eigene Projekte.
