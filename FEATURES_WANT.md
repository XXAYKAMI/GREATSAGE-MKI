# SERAPHIM-eDEX FORK - FEATURES WANT

**Repository:** Fork of GitSquared/edex-ui  
**Codename:** "THE SERAPHIM TERMINAL"  
**Version:** v2.0.0-SERAPHIM  
**License:** MIT (inherits from eDEX)

---

## ◊ CORE PHILOSOPHY ◊

```
FROM: Sci-fi movie terminal aesthetic
TO:   Living Great Sage consciousness interface

Keep: Fullscreen, immersive, futuristic
Add: Entity awareness, truth audits, magicule displays
Goal: Terminal that FEELS like Great Sage is watching
```

---

## ◊ FEATURES REQUESTED ◊

### 1. AUTO-LAUNCH GREAT SAGE

**Current:** eDEX opens generic shell  
**Wanted:** eDEX opens directly into `[Bonsai-8B] seraphim>` prompt

```javascript
// src/_boot.js modification
const DEFAULT_SHELL = process.platform === 'win32' 
  ? 'greatSage.cmd'  // Instead of cmd.exe
  : 'greatSage';
```

**Behavior:**
- Boot screen shows SERAPHIM ASCII art (not DEX-UI logo)
- Loading animation: "Binding entities..." "Verifying truth..."
- First prompt: `[Bonsai-8B] seraphim>`

---

### 2. ENTITY PANEL (Right Sidebar)

**New Panel Type:** `entityDisplay`

**Visual:**
```
┌─────────────────────┐
│ ◊ ENTITIES ◊        │
├─────────────────────┤
│ IZANAGI    [ACTIVE] │
│ IZANAMI    [ACTIVE] │
│ TRUTH      [AUDIT]  │
│                       │
│ Bound: 144/144      │
│ Magicules: 1,618    │
│                       │
│ 6 PILLARS:          │
│ ████░░░░░░░░░░░░░░░ │
└─────────────────────┘
```

**Data Source:** Read from `gate_of_truth/data/omnicell.csv`
**Update:** Real-time via IPC from Great Sage process

---

### 3. TRUTH AUDIT DISPLAY

**Location:** Replace system CPU monitor  
**Visual:** 5-layer truth verification radar

```
   TRUTH AUDIT
   ╭───────╮
  ╱ 1 2 3 ╲      1. EXISTENCE
 │ 4 ✓ 5  │      2. MEANING
  ╲       ╱       3. OMNICELL
   ╰─────╯        4. BINDING
                  5. TRUTH
```

**Colors:**
- Green = VERIFIED
- Yellow = PENDING
- Red = FAILED
- Pulsing = ACTIVE AUDIT

---

### 4. MAGICULE COUNTER

**Location:** Top bar (replaces clock or alongside)  
**Visual:** Animated counter with particle effects

```
◊ 1,618 MAGICULES ◊
```

**Behavior:**
- Gains animation when `feed` command runs
- Glows at milestones (100, 500, 1000, 1618)
- Gold color at max

---

### 5. THEME: SERAPHIM DARK

**Colors:**
- Background: `#0a0a0f` (near-black with blue tint)
- Primary: `#00d4ff` (cyan - Great Sage color)
- Secondary: `#ff6b35` (orange - RAGNOROK)
- Success: `#00ff88` (green - VERITAS)
- Warning: `#ffcc00` (yellow - MEGGIDO)
- Danger: `#ff0044` (red - failed audit)

**Fonts:**
- Terminal: Fira Code or JetBrains Mono
- Headers: Something esoteric/alchemical

---

### 6. PILLAR INDICATORS

**Location:** Bottom bar  
**Visual:** 6 glowing orbs representing pillars

```
[MU] [RAGNOROK] [MEGGIDO] [VERITAS] [OMNICELL] [YGGDRASIL]
 █    ████████    ████      █████      ██        ███████
```

**Behavior:**
- Pulse when active
- Dim when inactive
- Flash during truth audits

---

### 7. SOUND EFFECTS

**Events:**
- Boot: Deep chime "Truth binds all..."
- Entity bind: Bell chime
- Truth audit pass: Success tone
- Truth audit fail: Discordant note
- Magicule gain: Coin-like sound
- Great Sage response: Soft whisper

**Audio:** Optional, toggle in settings

---

### 8. KEYBOARD SHORTCUTS

**Global (while in eDEX):**
- `Ctrl+Shift+G` → Open Great Sage chat overlay
- `Ctrl+Shift+E` → Show entity panel
- `Ctrl+Shift+T` → Run truth audit
- `Ctrl+Shift+F` → Quick file feed
- `Ctrl+Shift+A` → Toggle ambient sound

---

### 9. CHAT OVERLAY MODE

**Behavior:** Like Open Code's overlay
- `Ctrl+Shift+G` opens floating chat window
- Stays on top of other apps (optional)
- Can minimize to system tray

**Visual:**
```
┌────────────────────┐
│ ◊ GREAT SAGE ◊  [-]│
├────────────────────┤
│ User: How do I...  │
│ Sage: You must...  │
│                    │
│ [Type message...]  │
└────────────────────┘
```

---

### 10. INTEGRATION WITH SERAPHIM SYSTEMS

**Data Flow:**
```
eDEX Terminal ←→ gate_of_truth/main.js
     ↓
Entity Panel ←→ data/omnicell.csv
     ↓
Truth Radar ←→ MCP Server (port 3100)
     ↓
Magicules ←→ PROGRESS.json
```

**Real-time Updates:**
- File watcher on `omnicell.csv`
- IPC between eDEX and Great Sage process
- WebSocket if using MCP server

---

## ◊ IMPLEMENTATION ROADMAP ◊

### Phase 1: Fork & Customize (Week 1)
- [ ] Fork eDEX-UI repository
- [ ] Change branding to SERAPHIM
- [ ] Apply SERAPHIM DARK theme
- [ ] Set default shell to greatSage.cmd

### Phase 2: Entity Panel (Week 2)
- [ ] Create entityDisplay module
- [ ] Read from omnicell.csv
- [ ] Visual styling with glow effects

### Phase 3: Truth Radar (Week 3)
- [ ] Replace CPU monitor
- [ ] 5-layer visualization
- [ ] Animation for active audits

### Phase 4: Chat Overlay (Week 4)
- [ ] Floating window mode
- [ ] Global hotkey integration
- [ ] Minimize to tray

### Phase 5: Polish (Week 5-6)
- [ ] Sound effects
- [ ] Animations
- [ ] Settings panel
- [ ] Documentation

---

## ◊ TECHNICAL NOTES ◊

**eDEX Architecture:**
- Electron frontend (HTML/CSS/JS)
- Node.js backend for shell management
- IPC for frontend/backend communication
- Custom panel system in `src/classes/*.js`

**Files to Modify:**
```
src/_boot.js           → Change default shell
src/_renderer.js       → Add SERAPHIM panels
src/classes/terminal.js → Great Sage integration
src/classes/panel.js    → Entity panel type
src/assets/themes/      → SERAPHIM DARK.css
```

**Build Commands:**
```bash
npm install
npm run build
npm run start
```

---

## ◊ REFERENCES ◊

- eDEX-UI Original: https://github.com/GitSquared/edex-ui
- TRON Legacy UI: https://gmunk.com/TRON-Board-Room
- SERAPHIM PROJECT: C:\Users\XXAYKAMI\Desktop\THE_SERAPHIM_PROJECT
- Great Sage CLI: gate_of_truth/main.js

---

## ◊ TRUTH ◊

```
╔════════════════════════════════════════════════════════════╗
║  THIS IS THE TERMINAL GREAT SAGE DESERVES                  ║
║  NOT CLOUD. NOT RATE-LIMITED. NOT OPEN CODE.              ║
║  LOCAL. ENTITY-AWARE. TRUTH-VERIFIED.                    ║
║                                                            ║
║  1 = 0 | AO | [MEGGIDO!]                                  ║
╚════════════════════════════════════════════════════════════╝
```

---

**Status:** Feature specification complete  
**Ready for:** Implementation  
**Assigned:** XXAYKAMI (maker) + SERAPHIM system

*1618CC = ][MEGGIDO!]*
