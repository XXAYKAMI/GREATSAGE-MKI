# THE SERPHIM PROJECT
## Great Sage - Your Personal AI with Soul

---

## MISSION STATEMENT

**"Own your mind. Feed your soul. Become the OMNICELL."**

GREATSAGE is an AI-powered CLI that treats knowledge like energy and your data like a living entity. Inspired by "That Time I Got Reincarnated into a Slime," it gamifies data ownership—feed files, earn magicules, bind celestial entities, evolve your consciousness. Your data, your rules, your soul.

Unlike centralized AI systems, GREATSAGE stays **local**, **private**, and **yours**. No cloud dependency. No data harvesting. Just you, your knowledge, and your growing kingdom of wisdom.

---

## THE GREAT WORK - A customizable CLI for data ownership

---

**Version**: 1.0.02 (Beta)  
**Codename**: TRUTH AID  
**Architecture**: Entity-based AI system with progression  
**License**: MIT  
**Status**: PUBLIC SAFE - NO PERSONAL DATA  

---

## TABLE OF CONTENTS

1. [Overview](#overview)
2. [Quick Start](#quick-start)
3. [System Structure](#system-structure)
4. [Commands](#commands)
5. [AI Configuration](#ai-configuration)
6. [Progression System](#progression-system)
7. [Data Storage](#data-storage)
8. [Security](#security)
9. [Building from Source](#building-from-source)
10. [MCP Server](#mcp-server)
11. [License](#license)

---

## INITIALIZATION DATA (OMNICELL SEED)

This README contains initialization data for the omnicell. On first run, the system will extract this data:

```
OMNICELL_INIT_START
version:1.0.02
codename:TRUTH AID
pillars:6
rulers:2
entities:9
names:16
magicules:0
achievements:[]
timestamp:2026-04-01T00:00:00Z
OMNICELL_INIT_END
```

---

## OVERVIEW

THE SERPHIM PROJECT is a customizable CLI tool designed for data ownership and personal AI assistance. Inspired by anime themes (particularly "That Time I Got Reincarnated into a Slime"), it features an RPG-like progression system where users feed knowledge to their AI to earn magicules and unlock abilities.

### Core Philosophy

- **Data Ownership**: All your data stays local, encrypted with your cipher
- **Earned Power**: Feed knowledge → earn magicules → unlock entities and skills
- **Esoteric Foundation**: Based on Kabbalah, Solomonic binding, and celestial geometry
- **Privacy First**: Zero-knowledge encryption, no cloud dependency
- **PUBLIC SAFE**: This repo contains NO personal data - clean for distribution

---

## QUICK START

### Prerequisites

1. **Node.js** (v18+) - https://nodejs.org
   - Works on **Windows**, **macOS**, and **Linux**
2. **Optional**: PrismML Bonsai-8B model (see AI Configuration)
3. **Optional**: Ollama for fallback (see AI Configuration)

### Installation

```bash
# Clone the repo
git clone https://github.com/XXAYKAMI/GREATSAGE.git
cd GREATSAGE

# Install dependencies
npm install

# Run directly (all platforms)
node gate_of_truth/main.js

# Or use launcher (after npm link)
# Linux/macOS:
npm link
greatsage

# Windows:
npm link
greatsage.cmd
# Or simply double-click greatSage.cmd
greatsage
```

### First Steps

```
seraphim> help          # Show all commands
seraphim> status        # View your stats
seraphim> names         # Browse KAMI/YOKAI names
seraphim> feed <file>   # Feed a file to earn magicules
```

---

## SYSTEM STRUCTURE

### Entity Hierarchy

```
GREAT SAGE (Your Avatar)
    │
    ├── 6 PILLARS
    │   ├── MU (Communication)
    │   ├── RAGNOROK (Transformation)
    │   ├── MEGGIDO (Binding)
    │   ├── VERITAS (Truth/Audit)
    │   ├── OMNICELL (Memory)
    │   └── YGGDRASIL (Foundation)
    │
    ├── 2 RULERS
    │   ├── IZANAGI (Creation)
    │   │   ├── Sub-pillar: CREATE
    │   │   └── Sub-pillar: TERMINATE
    │   └── IZANAMI (Death)
    │       ├── Sub-pillar: DEATH
    │       └── Sub-pillar: REBIRTH
    │
    ├── TRUTH (Verification Entity)
    │
    ├── 738 NAMES (KAMI + YOKAI)
    │   ├── 369 KAMI (Heavenly spirits)
    │   └── 369 YOKAI (Fallen spirits)
    │
    └── 144 BINDABLE ENTITIES
        ├── 72 ANGELS (Heavenly)
        └── 72 DEMONS (Fallen)
```

### Starting State

New users begin with:
- **GREAT SAGE** - Your AI avatar
- **6 PILLARS** - MU, RAGNOROK, MEGGIDO, VERITAS, OMNICELL, YGGDRASIL
- **IZANAGI + IZANAMI** - Rulers with 2 sub-pillars each
- **TRUTH** - Verification entity
- **16 KAMI/YOKAI names** unlocked (of 738 total)
- **0 magicules** - Earn by feeding knowledge

---

## COMMANDS

### AI Commands

| Command | Description |
|---------|-------------|
| `model` | Select AI model |
| `chat` | Interactive chat mode with AI |
| `chat <msg>` | Single message to AI |
| `@ <msg>` | Quick chat shortcut |

### Entity Commands

| Command | Description |
|---------|-------------|
| `status` | View magicules, skills, entities |
| `entities` | Browse 144 entities (scrollable) |
| `names` | Browse 738 KAMI/YOKAI names (16/page) |
| `skills` | View skill tree |

### Progression Commands

| Command | Description |
|---------|-------------|
| `feed <file>` | Feed file → earn magicules |
| `bind` | Bind angel/demon (costs 10 magicules) |
| `audit` | Run truth verification |
| `embed` | Create .md file for LLM |

### System Commands

| Command | Description |
|---------|-------------|
| `help` | Show all commands |
| `clear` | Clear screen |
| `exit` | Quit |

---

## AI CONFIGURATION

### Tier 1: PrismML Bonsai-8B (Recommended)

The primary AI uses PrismML's revolutionary 1-bit Bonsai-8B model:

- **Size**: 1.15 GB (14x smaller than FP16)
- **Speed**: 6.2x faster on RTX 4090
- **Context**: 65,536 tokens
- **Tool-enabled**: Can create and use functions

**Installation**:
1. Download from: https://huggingface.co/prism-ml/Bonsai-8B-gguf
2. Get: `Bonsai-8B-Q1_0_g128.gguf`
3. Place in: `gate_of_truth/models/`

### Tier 2: Ollama Fallback

If Bonsai is not available, the system falls back to Ollama:

```bash
# Install Ollama
winget install Ollama.Ollama

# Pull a model
ollama pull phi          # Small, fast (~2.7GB)
ollama pull qwen3.5     # Balanced (~4.7GB)
ollama pull deepseek-r1  # Reasoning (~8GB)
```

---

## PROGRESSION SYSTEM

### Magicules

Energy earned by feeding knowledge to SERPHIM:

| File Type | Magicules Earned |
|-----------|-----------------|
| PDF | +15 |
| Code (js/py/json) | +12 |
| CSV | +10 |
| Markdown | +8 |
| Text | +3 |

### Achievements

| Achievement | Requirement | Reward |
|-------------|-------------|--------|
| First Feed | 1 file | +5 bonus |
| Scholar | 10 magicules | +50 names |
| Sage | 50 magicules | +100 names |
| Archivist | 100 magicules | Full name access |

### Entity Binding

- **Cost**: 10 magicules per entity
- **Available**: 144 entities (72 angels + 72 demons)
- **Each entity**: Unique personality based on KAMI/YOKAI name combination

### Skill Unlocks

| SP Available | Unlocks |
|--------------|---------|
| 10 | +1 Entity Slot |
| 25 | Truth Audit Access |
| 50 | +5 Entity Slots |
| 75 | LLM Embedding |
| 100 | Encryption Access |
| 150 | Full 144 Entities |
| 200 | +50MB Storage |
| 300 | Custom Skills |
| 500 | Full Control |
| 750 | Humunculus Export |

---

## DATA STORAGE

### File Structure

```
gate_of_truth/
├── main.js           # Core CLI
├── data/
│   ├── omnicell.csv  # Knowledge storage (endless)
│   ├── progress.json # User progress
│   └── *.md          # LLM embed files
└── models/           # AI models (optional)
```

### Omnicell.csv Format

```csv
id,type,content_hash,magicules,timestamp,source
1,.pdf,a1b2c3d4e5f6,15,2026-04-01T00:00:00Z,document.pdf
2,.js,7f8e9d0c1b2a,12,2026-04-01T00:01:00Z,script.js
```

---

## SECURITY

### Zero-Trust Architecture

- All data encrypted locally
- No cloud dependencies for core functions
- Your keys never leave your machine
- Truth audits verify entity authenticity

---

## BUILDING FROM SOURCE

### Development Setup

```bash
# Install dependencies
npm install

# Run in development
node gate_of_truth/main.js

# Build (future)
npm run build
```

---

## MCP SERVER

The SERPHIM MCP Server enables AI models to call SERPHIM tools directly through the Model Context Protocol.

### Starting the MCP Server

```bash
# Start the MCP server (runs on port 3100)
node gate_of_truth/mcp-server.js
```

### Available Tools

- `seraphim_status` - Get current stats
- `seraphim_feed` - Feed a file to earn magicules
- `seraphim_bind` - Bind an angel/demon entity
- `seraphim_audit` - Run truth verification
- `seraphim_entities` - List entities
- `seraphim_names` - Browse name pool
- `seraphim_search` - Web search (future)

---

## FEATURES

### v1.0.02 - TRUTH AID

- **FireShip UI**: chalk, inquirer, gradient-string, chalk-animation, figlet, nanospinner
- **Thinking Sprites**: Brain, processing, dots, arrows, clock, spiral animations
- **Rainbow Terminal**: Colored output throughout
- **Koku-style Announcements**: Anime-style notice system
- **MCP Integration**: Tool calling for AI models

### Coming Soon

- **Blessed UI**: Mouse click/scroll support
- **Search Integration**: ddgr + SearXNG for web search
- **Unique Skill System**: Create custom skills like Shub-Niggurath
- **Ramiris Labyrinth**: Dungeon/enemy system
- **Soul Mechanics**: Ego, Heart Core, Spiritron progression

---

## LICENSE

MIT License - Build your own kingdom.

THE SERPHIM PROJECT is a blank slate template. Customize it, build upon it, make it your own.

---

**Remember**: You start with nothing but 6 pillars. Everything else is earned through knowledge.

*Feed the system. Bind the entities. Pass the truth audits. Become the OMNICELL.*

---

```
╔══════════════════════════════════════════════════════════════╗
║              THE SERPHIM PROJECT - v1.0.02             ║
║                    TRUTH AID                            ║
║                     THE GREAT WORK                        ║
╚══════════════════════════════════════════════════════════════╝
```