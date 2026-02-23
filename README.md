# Claude Code Project Blueprint

Ein wiederverwendbares Template für Projekte die mit Claude Code entwickelt werden.
Extrahiert aus realen Projekterfahrungen und bewährten Patterns.

## Was ist das?

Dieses Blueprint enthält **projekt-agnostische** Best Practices, Templates und Konfigurationen für die Zusammenarbeit mit Claude Code:

- **Autonomie-Framework** mit Risk-Matrix (wann autonom handeln, wann fragen)
- **Memory-System** gegen Context-Verlust in langen Sessions
- **16 Custom Commands** für Code-Qualität, Testing, Security, Docker, Maintenance
- **8 AI-Instruktionen** für Critical Thinking, Code Quality, Testing, Deployment, Security, UI, Docker
- **Error-Learning System** für persistentes Lernen aus Fehlern
- **Git Hooks** gegen Secrets und gefährliche SQL-Patterns
- **CI/CD Pipeline** Template für GitHub Actions

## Struktur

```
blueprint-claude/
├── CLAUDE.md                        # Hauptanweisungen (10 Gebote, Risk-Matrix, Architektur)
├── MEMORY.md                        # Langzeit-Gedächtnis Template
├── LESSONS-LEARNED.md               # Error-Learning System
├── .claude/
│   ├── commands/                    # 16 Custom Commands
│   │   ├── cc-init.md              # Session-Initialisierung
│   │   ├── cc-health-check.md      # Projekt Health-Check
│   │   ├── cc-pre-commit.md        # Pre-Commit Checks
│   │   ├── cc-code-review.md       # Code Review
│   │   ├── cc-write-tests.md       # Tests schreiben
│   │   ├── cc-run-tests.md         # Tests ausführen
│   │   ├── cc-build-check.md       # Build prüfen
│   │   ├── cc-find-duplicates.md   # Duplicate Code finden
│   │   ├── cc-fix-code-smells.md   # Code Smells beheben
│   │   ├── cc-tech-debt.md         # Technical Debt analysieren
│   │   ├── cc-security-check.md    # Security Analyse
│   │   ├── cc-check-architecture.md # Architektur prüfen
│   │   ├── cc-maintenance.md       # Code-Wartung (Audit/Fix)
│   │   ├── cc-docker-up.md         # Docker starten
│   │   ├── cc-docker-logs.md       # Docker Logs
│   │   └── cc-docker-stop.md       # Docker stoppen
│   └── markdown/                    # 8 AI-Instruktionen
│       ├── INDEX.md                 # Welches Dokument wann lesen
│       ├── CRITICAL-THINKING.md     # Risk-Matrix, Red Flags, Pflicht-Pause
│       ├── CODE-QUALITY.md          # YAGNI, KISS, DRY, Code Smells
│       ├── TESTING-STRATEGY.md      # Test-Pyramide, Coverage
│       ├── DEPLOYMENT-RUNBOOK.md    # Deployment-Anleitung
│       ├── OPERATIONS-SECURITY.md   # Sicherheitsregeln, Umgebungen
│       ├── FOLDER-STRUCTURE.md      # Ordnerstruktur, 6-Ordner-Regel
│       ├── DESIGN-SYSTEM.md         # UI/UX Tokens und Regeln
│       ├── DOCKER-WORKFLOW.md       # Docker-First Development
│       └── adr/                     # ADR Template
│           └── 0000-template.md
├── .githooks/                       # Git Security Hooks
│   ├── pre-commit
│   ├── install.sh
│   └── README.md
├── .github/workflows/               # CI/CD Templates
│   └── ci.yml
└── projects/                        # Platzhalter für Projektcode
```

## Quick Start

### 1. Blueprint in neues Projekt kopieren

```bash
mkdir my-new-project && cd my-new-project && git init
cp -r /path/to/blueprint-claude/* .
cp -r /path/to/blueprint-claude/.* . 2>/dev/null || true
```

### 2. Placeholders ersetzen

Ersetze alle `{{PLACEHOLDER}}` in den Dateien (siehe CLAUDE.md Abschnitt "Placeholders ersetzen").

### 3. Git Hooks aktivieren

```bash
chmod +x .githooks/install.sh && ./.githooks/install.sh
```

### 4. Projektspezifisch anpassen

- **CLAUDE.md**: Tech-Stack, Domain Guards, Befehle
- **MEMORY.md**: Projekt-Essenz, Module, Entscheidungen
- **DESIGN-SYSTEM.md**: Farben, Typografie, Layout
- **DOCKER-WORKFLOW.md**: Services, Ports, Volumes

## Enthaltene Konzepte

### Risk-Matrix (NEU!)
4-stufiges Autonomie-Modell: `act_now` → `act_and_report` → `ask_first` → `forbidden`

### Domain Guards (NEU!)
Projekt-spezifische Schutzregeln die IMMER aktiv sind (z.B. "keine Kundendaten direkt").

### Proaktivität vs. Scope (NEU!)
Klare Formel: *Warnen und Quality-Fixes in bearbeiteten Dateien: ja. Neues anfangen: nein.*

### Memory-System
- **CLAUDE.md** als Schnellreferenz mit Status-Block
- **MEMORY.md** als Langzeit-Gedächtnis mit Session-Log
- Hierarchie bei Widersprüchen definiert

### Code-Qualität
- **YAGNI**: Gilt für Features, NICHT für Qualität/Tests/Docs
- **KISS**: Einfachste Lösung die funktioniert
- **DRY**: Erst bei 3. Duplikation abstrahieren

### Error-Learning
- **LESSONS-LEARNED.md** für persistentes Lernen
- Anti-Patterns und erfolgreiche Patterns dokumentiert

## Custom Commands

| Command | Beschreibung |
|---------|--------------|
| `/project:cc-init` | Session-Initialisierung (--quick, --refresh) |
| `/project:cc-health-check` | Projekt-Gesundheit prüfen |
| `/project:cc-pre-commit` | Vor Commit ausführen |
| `/project:cc-code-review` | Code reviewen |
| `/project:cc-write-tests` | Tests schreiben |
| `/project:cc-run-tests` | Tests ausführen |
| `/project:cc-build-check` | Build prüfen |
| `/project:cc-find-duplicates` | Duplikate finden |
| `/project:cc-fix-code-smells` | Code Smells beheben |
| `/project:cc-tech-debt` | Technical Debt analysieren |
| `/project:cc-security-check` | Security prüfen |
| `/project:cc-check-architecture` | Architektur prüfen |
| `/project:cc-maintenance` | Code-Wartung (Audit/Fix/Dry-Run) |
| `/project:cc-docker-up` | Docker starten (--rebuild, --prod) |
| `/project:cc-docker-logs` | Docker Logs (--errors, --follow) |
| `/project:cc-docker-stop` | Docker stoppen (--clean) |

## Empfohlene Routine

1. **Session-Start:** `/project:cc-init`
2. **Vor dem Coden:** `/project:cc-health-check` (wöchentlich)
3. **Nach dem Coden:** `/project:cc-code-review [datei]`
4. **Vor dem Commit:** `/project:cc-pre-commit`
5. **Mitten in Session:** `/project:cc-init --refresh` (bei Context-Drift)

## Lizenz

Frei verwendbar für eigene Projekte.
