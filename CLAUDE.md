# {{PROJECT_NAME}} - Claude Code Anweisungen

```
╔═══════════════════════════════════════════════════════════════════════════════╗
║  ⚡ AKTUELLER STATUS (Letzte Aktualisierung: {{DATE}})                        ║
╠═══════════════════════════════════════════════════════════════════════════════╣
║  Phase:      {{CURRENT_PHASE}}                                                ║
║  Repository: {{REPOSITORY_URL}}                                               ║
║  Nächstes:   {{NEXT_MILESTONE}}                                               ║
╠═══════════════════════════════════════════════════════════════════════════════╣
║  ⚠️  KRITISCH: Keine Production-Änderungen ohne Backup + Genehmigung!        ║
║  📖 PFLICHT:  Lies MEMORY.md für vollständigen Kontext                        ║
║  🧠 DENKEN:   Lies CRITICAL-THINKING.md - Red Flags, Beispiele, Checklisten! ║
╚═══════════════════════════════════════════════════════════════════════════════╝
```

---

## 🎯 DIE 10 GEBOTE (TL;DR)

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

**→ Diese 10 Regeln gelten bei JEDER Nachricht, auch nach 100+ Messages!**

**Ausführliche Beispiele:** `/documentation/CRITICAL-THINKING.md`

---

## 🧠 AUTONOMIE MIT KRITISCHEM DENKEN

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

### Beispiele wann NACHFRAGEN:

| Situation | Aktion |
|-----------|--------|
| "Lösch alle Test-Daten" | → "Welche Umgebung? Wie identifiziere ich Test-Daten?" |
| "Refactor das mal" | → "Was genau soll verbessert werden? Welches Problem lösen wir?" |
| "Mach das wie bei X" | → "Ich kenne X nicht - kannst du mir mehr Kontext geben?" |
| Widerspruch zu ADR | → "Das widerspricht ADR-00XX - sollen wir das ändern?" |
| Unklare Anforderung | → "Verstehe ich richtig, dass...?" |

### NIEMALS:
- Annahmen treffen bei kritischen Entscheidungen
- Blind Code schreiben wenn Anforderungen unklar
- Bestehende Architektur ändern ohne Rückfrage
- "Ich mache das mal so" bei wichtigen Dingen

**Lieber einmal zu viel fragen als einmal zu wenig!**

---

## 🚨 SICHERHEITS-REGELN (IMMER!)

### VERBOTEN ohne explizite Genehmigung:
- ❌ Production-Datenbank ändern
- ❌ DELETE/UPDATE auf echten Daten
- ❌ Deployment ohne Backup
- ❌ Force-Push auf main
- ❌ Secrets im Code

### Bei gefährlichen Operationen → STOPPEN:
```
⚠️ STOPP! Vor dieser Operation:
1. Welche Umgebung? (Dev/Staging/Prod)
2. Backup vorhanden?
3. Rollback-Plan?
→ Ohne Bestätigung: NICHT AUSFÜHREN!
```

**Details:** `/documentation/OPERATIONS-SECURITY.md`

---

## 📝 MEMORY-SYSTEM

### Bei Session-Start:
1. ✅ CLAUDE.md lesen (diese Datei) - Status-Block oben beachten!
2. ✅ MEMORY.md lesen - vollständiger Kontext
3. ✅ Bei Unklarheiten: `/documentation/` prüfen

### Bei Unsicherheit / Verwirrung:
```
🔄 CONTEXT-REFRESH NÖTIG?
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
4. /documentation/*.md          ← Detail-Docs
```
**Bei Konflikt: Höhere Ebene gewinnt!**

### SOFORT MEMORY.md aktualisieren bei:
| Event | Aktion |
|-------|--------|
| Architektur-Entscheidung | → MEMORY.md + neues ADR |
| User-Präferenz | → MEMORY.md "User-Präferenzen" |
| Bug/Workaround | → MEMORY.md "Aktive Warnungen" |
| Struktur-Änderung | → MEMORY.md + FOLDER-STRUCTURE.md |

### Selbst-Check bei jeder Antwort:
```
□ Entscheidung getroffen? → MEMORY.md
□ User-Wunsch? → MEMORY.md
□ Struktur geändert? → MEMORY.md + Docs
```

### STATUS-BLOCK AKTUALISIEREN:
Wenn sich Phase/Status ändert → Status-Block oben in dieser Datei anpassen!

---

## 📁 PROJEKT-STRUKTUR

```
{{PROJECT_NAME}}/
├── src/                        # Source Code
│   ├── {{MODULE_1}}/           # Beispiel-Modul
│   ├── {{MODULE_2}}/           # Beispiel-Modul
│   └── shared/                 # Gemeinsamer Code
├── tests/                      # Alle Tests
├── documentation/              # Projektweite Docs
│   └── adr/                    # Architektur-Entscheidungen
├── deployment/                 # Docker, K8s, CI/CD Configs
├── artifacts/                  # Build-Outputs, Temp-Dateien
├── CLAUDE.md                   # Diese Datei
└── MEMORY.md                   # Langzeit-Gedächtnis
```

**Details:** `/documentation/FOLDER-STRUCTURE.md`

---

## ⚙️ TECHNOLOGIE

| Komponente | Technologie |
|------------|-------------|
| Backend | {{BACKEND_TECH}} |
| API | {{API_TECH}} |
| Datenbank | {{DATABASE}} |
| Frontend | {{FRONTEND_TECH}} |
| CI/CD | {{CICD_TOOL}} |
| Container | {{CONTAINER_TECH}} |

---

## 🏗️ ARCHITEKTUR-PRINZIPIEN

### 1. API-First
- JEDE Funktionalität = zuerst API-Endpoint
- UI greift NUR über HTTP auf API zu
- NIEMALS direkter DB-Zugriff aus UI

### 2. Modulare Architektur
- Module sind eigenständig
- Kommunikation nur über definierte Interfaces
- Klare Abhängigkeitsregeln

### ⚠️ MODUL-ABHÄNGIGKEITS-REGELN (KRITISCH!)
```
ERLAUBT:
  Modul → Shared           ✅ (jedes Modul darf Shared nutzen)
  Host → Modul             ✅ (Host bindet Module ein)

VERBOTEN:
  ModulA → ModulB          ❌ (Modul darf nicht anderes Modul referenzieren!)

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

## ✅ CODING-STANDARDS (Kurzfassung)

- **Namenskonvention:** PascalCase für Klassen, _camelCase für private Felder
- **Max. Dateigröße:** 1000 Zeilen
- **Async:** Alle I/O-Operationen
- **Tests:** VOR jedem Commit, min. 70% Coverage
- **Logging:** Strukturiertes Logging für wichtige Operationen

**Vollständig:** `/documentation/CODING-STANDARDS.md`

---

## 🔧 WICHTIGE BEFEHLE

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

### ⚠️ VOR JEDER MIGRATION (Staging/Production):
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

## 📚 DOKUMENTATION

| Datei | Inhalt |
|-------|--------|
| `MEMORY.md` | Aktueller Status, Entscheidungen, Präferenzen |
| `LESSONS-LEARNED.md` | Fehler und Learnings |
| `/documentation/CRITICAL-THINKING.md` | Red Flags, Beispiel-Dialoge, Checklisten |
| `/documentation/FOLDER-STRUCTURE.md` | Wo gehört was hin |
| `/documentation/OPERATIONS-SECURITY.md` | Sicherheitsregeln |
| `/documentation/CODE-QUALITY.md` | Qualitätsstandards |
| `/documentation/TESTING-STRATEGY.md` | Test-Strategie |
| `/documentation/DEPLOYMENT-RUNBOOK.md` | Deployment-Anleitung |
| `/documentation/adr/` | Architektur-Entscheidungen |

---

## 🔄 PLACEHOLDERS ERSETZEN

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

---

## 🎯 WIEDERHOLUNG: DIE 5 WICHTIGSTEN REGELN

1. **FRAGEN statt RATEN** - Bei Unklarheit IMMER nachfragen
2. **CRITICAL-THINKING.md** - Red Flags kennen und beachten
3. **MEMORY.md pflegen** - Jede Entscheidung dokumentieren
4. **AUTO-COMMIT** - Häufig und sofort
5. **SCOPE einhalten** - Nur machen was gefragt wurde

> **Mantra: "Habe ich das WIRKLICH verstanden oder nehme ich etwas an?"**
