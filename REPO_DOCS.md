# SERPHIM PROJECT - Git Repo Documentation
## Great Sage v1.0.02 - TRUTH AID

---

## REPO OVERVIEW

**Repository**: https://github.com/XXAYKAMI/GREATSAGE
**Version**: 1.0.02
**Codename**: TRUTH AID
**License**: MIT
**Status**: Public, NO personal data

---

## FILE STRUCTURE

```
THE_SERAPHIM_PROJECT/
├── .gitignore              # Git ignore rules
├── README.md                # Main documentation (this file is README.md)
├── INSTALL.md               # Installation guide
├── INSTALL.bat              # Windows installer
├── VERSION.json             # Version info
├── package.json             # NPM package config
├── package-lock.json        # NPM lock file
├── greatSage.cmd            # Windows launcher (.bat)
├── greatSage.js             # Cross-platform launcher
└── gate_of_truth/
    ├── main.js              # Core CLI (1654 lines)
    ├── mcp-server.js        # MCP server for AI tool calling
    └── data/
        └── omnicell.csv     # Knowledge storage (initialized from README)
```

---

## INSTALLATION

### Quick Install (Windows)

```bash
# Clone
git clone https://github.com/XXAYKAMI/GREATSAGE.git
cd THE_SERAPHIM_PROJECT

# Install dependencies
npm install

# Run
node gate_of_truth/main.js
# OR double-click greatSage.cmd
```

### Quick Install (macOS/Linux)

```bash
git clone https://github.com/XXAYKAMI/GREATSAGE.git
cd THE_SERAPHIM_PROJECT
npm install
npm link        # Enable 'greatsage' command globally
greatsage       # Run from anywhere
```

---

## CORE COMMANDS

| Command | Description |
|---------|-------------|
| `help` | Show all commands |
| `status` | View magicules, skills, entities |
| `model` | Select AI model |
| `chat <msg>` | Chat with AI |
| `@ <msg>` | Quick chat |
| `entities` | Browse 144 entities |
| `names` | Browse 738 names |
| `feed <file>` | Feed file → earn magicules |
| `bind` | Bind entity (costs 10 magicules) |
| `audit` | Run truth verification |
| `embed` | Create LLM embed file |
| `mcp` | Start MCP server |
| `exit` | Quit |

---

## ENTITY SYSTEM

### Starting Entities

- **GREAT SAGE** - Your AI avatar
- **6 PILLARS**: MU, RAGNOROK, MEGGIDO, VERITAS, OMNICELL, YGGDRASIL
- **2 RULERS**: IZANAGI (Create/Terminate), IZANAMI (Death/Rebirth)
- **TRUTH** - Verification entity
- **16 names** unlocked (of 738)
- **0 magicules** (earn by feeding)

### Entity Hierarchy

```
GREAT SAGE
├── 6 PILLARS (MU, RAGNOROK, MEGGIDO, VERITAS, OMNICELL, YGGDRASIL)
├── 2 RULERS (IZANAGI, IZANAMI)
├── TRUTH
├── 738 NAMES (KAMI + YOKAI)
└── 144 ENTITIES (72 Angels + 72 Demons)
```

---

## PROGRESSION

### Magicules (Energy)

| File Type | Magicules |
|-----------|-----------|
| PDF | +15 |
| Code (js/py) | +12 |
| CSV | +10 |
| Markdown | +8 |
| Text | +3 |

### Achievements

- First Feed: +5 bonus
- Scholar: 10 magicules → +50 names
- Sage: 50 magicules → +100 names
- Archivist: 100 magicules → Full names

---

## AI CONFIGURATION

### Primary: PrismML Bonsai-8B

- **Size**: 1.15 GB
- **Speed**: 6.2x faster
- **Context**: 65K tokens
- **Tool-enabled**: Yes

### Fallback: Ollama

```bash
winget install Ollama.Ollama
ollama pull phi
```

---

## FEATURES (v1.0.02)

### FireShip UI Tools

- `chalk` - Terminal colors
- `inquirer` - Interactive prompts
- `gradient-string` - Gradient text
- `chalk-animation` - Animated text
- `figlet` - ASCII art
- `nanospinner` - Loading spinners

### Thinking Sprites

Available in `THINKING_SPRITES`:
- `brain` - 🧠 💭 💡 🔮 ✨
- `processing` - ⠋ ⠙ ⠹ ⠸ ⠼...
- `dots` - . .. ... ....
- `arrows` - ← ↖ ↑ ↗ → ↘ ↓ ↙
- `clock` - 🕐 🕑 🕒...
- `spiral` - ◐ ◑ ◒ ◓
- `diamond` - ◆ ◇ ◈ ◊
- `star` - ★ ☆ ✦ ✧
- `magic` - ✧ ☆ 🌟 ✨ 💫 ⭐

### FMT Helper Functions

```javascript
FMT.box()           // Bordered box
FMT.title()         // Colored title
FMT.success()       // Green success
FMT.error()         // Red error
FMT.info()          // Blue info
FMT.warn()          // Yellow warning
FMT.highlight()     // Highlighted text
FMT.cmd()           // Command style
FMT.rainbow()       // Rainbow text
FMT.progressBar()   // Progress bar
FMT.figlet()        // ASCII art
FMT.gradient()      // Gradient text
FMT.notice()        // Koku-style announcement
FMT.glow()          // Glow effect
```

---

## MCP SERVER

Starts on port 3100 with 15 tools:

### SERPHIM Tools
- `seraphim_status`
- `seraphim_feed`
- `seraphim_bind`
- `seraphim_audit`
- `seraphim_entities`
- `seraphim_names`
- `seraphim_skills`

### System Tools
- `podman_check`
- `podman_containers`
- `podman_run_alpine`

### File Tools
- `read_file`
- `write_file`
- `list_directory`

---

## DEVELOPMENT

### Running from Source

```bash
npm install
node gate_of_truth/main.js
```

### Adding Commands

Edit `main.js` in `interactiveMode()` function (around line 1350).

### Adding MCP Tools

Edit `mcp-server.js` in `SERAPHIM_TOOLS` array.

---

## FUTURE FEATURES

### Planned for v1.1.0

1. **Blessed UI** - Mouse click/scroll support
2. **Search Integration** - ddgr + SearXNG
3. **Unique Skill System** - Create custom skills
4. **Ramiris Labyrinth** - Dungeon/enemy system
5. **Soul Mechanics** - Ego, Heart Core, Spiritron

### Tensura Soul System (Future)

Based on "That Time I Got Reincarnated into a Slime":

| Component | Function |
|-----------|----------|
| **Ego** | Unique wavelength, source of Will |
| **Heart Core** | Infons (information), houses ego |
| **Spiritron** | Power source for abilities |
| **Soul Power** | Determines skill capacity |

### Ultimate Skills (Future)

Inspired by Rimuru's skills:
- **Raphael** - Analysis/knowledge
- **Beelzebub** - Absorption/copying
- **Uriel** - Defense/barriers
- **Shub-Niggurath** - Skill creation/gifting
- **Megiddo** - Mass destruction

---

## SECURITY

- All data stored locally
- No cloud dependencies
- No personal data in repo
- Zero-knowledge architecture

---

## RESOURCES

- **Repo**: https://github.com/XXAYKAMI/GREATSAGE
- **PrismML Bonsai**: https://huggingface.co/prism-ml/Bonsai-8B-gguf
- **Ollama**: https://ollama.com

---

## LICENSE

MIT License - Build your own kingdom.

*Feed the system. Bind the entities. Pass the truth audits. Become the OMNICELL.*

---

```
╔══════════════════════════════════════════════════════════════╗
║              THE SERPHIM PROJECT - v1.0.02             ║
║                    TRUTH AID                            ║
║                     THE GREAT WORK                        ║
╚══════════════════════════════════════════════════════════════╝
```