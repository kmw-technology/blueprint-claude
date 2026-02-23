# {{PROJECT_NAME}} - Ordnerstruktur

## Übersicht

```
{{PROJECT_NAME}}/
├── .claude/                    # Claude Code Konfiguration
│   ├── commands/               # Custom Claude Commands (cc-*)
│   └── markdown/               # AI-Instruktionen & Dokumentation
├── .github/                    # GitHub Actions CI/CD
│   └── workflows/
├── .githooks/                  # Git Security Hooks
├── projects/                   # ALLE PROJEKTE
│   ├── {{MODULE_1}}/           # Projekt/Modul 1
│   ├── {{MODULE_2}}/           # Projekt/Modul 2
│   └── shared/                 # Gemeinsamer Code
├── documentation/              # Projektweite Referenz-Dokumentation
│   └── adr/                    # Architecture Decision Records
├── deployment/                 # Deployment-Konfiguration
│   ├── docker/
│   └── scripts/
├── tests/                      # Cross-Projekt Tests (E2E)
├── tools/                      # Hilfs-Tools, Scripts
├── artifacts/                  # Build-Outputs (gitignored)
├── CLAUDE.md                   # Claude Code Anweisungen
├── MEMORY.md                   # Langzeit-Gedächtnis
└── LESSONS-LEARNED.md          # Persistentes Error-Learning
```

---

## 6-Ordner-Struktur (ALLE Projekt-Ordner — PFLICHT!)

**JEDER** Projekt-Ordner unter `/projects/` hat die **gleiche 6-Ordner-Struktur**.
Das gilt für alle Sprachen und Frameworks — keine Ausnahmen!

```
/projects/{gruppe}/{projekt}/
├── src/                        # Source Code (Produktionscode)
├── tests/                      # Tests
├── documentation/              # Projekt-spezifische Docs
├── artifacts/                  # Build-Outputs, generierte Dateien
├── temporary/                  # Temporäre Dateien, Scratch
└── deployment/                 # Projekt-spezifische Deploy-Configs
```

| Ordner | Zweck | Beispiel-Inhalte |
|--------|-------|------------------|
| `src/` | Produktionscode | *.cs, *.ts, *.go, *.py |
| `tests/` | Testcode | Unit-Tests, Integration-Tests |
| `documentation/` | Projekt-Docs (modul-intern) | API-Docs, README |
| `artifacts/` | Build-Outputs | DLLs, Binaries, Reports |
| `temporary/` | Scratch/Temp | Debug-Dumps, lokale Tests |
| `deployment/` | Deploy-Configs | Dockerfiles, Helm Charts |

### Leere Ordner: `.gitkeep`

Leere Ordner werden mit einer `.gitkeep`-Datei im Git gehalten.
Sobald echte Dateien im Ordner landen, kann `.gitkeep` entfernt werden.

---

## Dokumenten-Trennung

### `.claude/markdown/` — AI-Instruktionen
Dateien die Claude bei der Arbeit leiten. Werden direkt von Claude gelesen und befolgt.

### `.claude/commands/` — Custom Commands
Ausführbare Workflows die per `/project:cc-*` aufgerufen werden.

### `/documentation/` — Referenz-Dokumentation
Technische Referenz die bei Bedarf on-demand gelesen wird (Architektur-Diagramme, API-Specs, ADRs).

---

## Wo lege ich neue Dateien ab?

| Dateityp | Ablageort |
|----------|-----------|
| Neue Source-Datei | `projects/{modul}/src/` |
| Neuer Test | `projects/{modul}/tests/` |
| AI-Instruktion | `.claude/markdown/` |
| Custom Command | `.claude/commands/` |
| ADR | `.claude/markdown/adr/` |
| Deployment-Config | `deployment/` oder `projects/{modul}/deployment/` |
| Temporäre Debug-Datei | `projects/{modul}/temporary/` |
| Cross-Projekt E2E-Test | `tests/` |
| Hilfs-Tool/Script | `tools/` |
| Build-Output | `artifacts/` (gitignored) |

---

## Regeln für Claude

### PFLICHT: 6-Ordner-Struktur einhalten!

Bei JEDEM neuen Projekt-Ordner unter `/projects/` müssen ALLE 6 Ordner angelegt werden:
`src/`, `tests/`, `documentation/`, `artifacts/`, `temporary/`, `deployment/`

Leere Ordner bekommen eine `.gitkeep`-Datei. Keine Ausnahmen!

### NIEMALS:
- Code direkt in `/projects/` ablegen (immer in Unterordner)
- Tests außerhalb von `/tests/` Ordnern
- Temporäre Dateien in `/src/`
- Produktionscode in `/temporary/`
- Einen der 6 Ordner weglassen bei neuen Projekten

### IMMER:
- Jeden neuen Code in den richtigen Ordner
- Tests parallel zum Source Code anlegen
- Bei neuem Projekt-Ordner: ALLE 6 Ordner anlegen (`.gitkeep` für leere)
- `.claude/markdown/` aktualisieren wenn sich Struktur ändert
