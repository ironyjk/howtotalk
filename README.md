# howtotalk — Communication Frameworks for AI Agents

13 communication, persuasion, and conversation frameworks with one auto-routing entry point.
Describe your situation — `/howtotalk` picks the best approach.

## `/howtotalk` — One Command, 13 Frameworks

```
/howtotalk My boss keeps taking credit for my work and I need to address it
```

The AI automatically:
1. Analyzes the situation (emotion level, power dynamic, cultural context)
2. Selects the best 1-3 frameworks
3. Designs a phase-by-phase pipeline
4. Generates specific scripts and language to use

## Commands

| Command | What It Does |
|---------|-------------|
| `/howtotalk` | Full analysis → framework selection → strategy with scripts |
| `/howtotalk:select` | Quick framework recommendation (don't generate full strategy) |
| `/howtotalk:practice` | Role-play simulation with coaching and debrief |

## The 13 Frameworks

### Persuasion & Negotiation

| Framework | Creator | Use When |
|-----------|---------|----------|
| **NVC** | Marshall Rosenberg | Expressing needs without blame, resolving conflicts |
| **Crucial Conversations** | Patterson, Grenny et al. | High-stakes conversations, strong emotions |
| **Never Split the Difference** | Chris Voss (FBI) | Negotiations, salary talks, deals |
| **Getting to Yes** | Fisher & Ury (Harvard) | Win-win negotiations, finding mutual interests |
| **Influence** | Robert Cialdini | Ethical persuasion, marketing, detecting manipulation |

### Feedback & Leadership

| Framework | Creator | Use When |
|-----------|---------|----------|
| **Radical Candor** | Kim Scott (Google/Apple) | Giving tough feedback with care |
| **Difficult Conversations** | Stone, Patton, Heen (Harvard) | Conversations you've been avoiding |
| **Motivational Interviewing** | Miller & Rollnick | Motivating someone who resists change |

### Presentation & Teaching

| Framework | Creator | Use When |
|-----------|---------|----------|
| **Storytelling** | Campbell, Duarte, Pixar | Presentations, pitches, compelling narratives |
| **Socratic Method** | Socrates | Teaching, coaching, leading to insight |

### Self-Awareness & Listening

| Framework | Creator | Use When |
|-----------|---------|----------|
| **SCARF** | David Rock | Understanding reactions, managing team dynamics |
| **Active Listening** | Carl Rogers | When you need to truly hear someone |
| **DESC** | Bower & Bower | Setting boundaries, standing up for yourself |

## Architecture

```
/howtotalk (meta-router — user-invocable)
└── 13 frameworks (internal, auto-selected by /howtotalk)
    ├── nvc, crucial-conversations, never-split
    ├── getting-to-yes, influence, radical-candor
    ├── difficult-conversations, motivational-interviewing
    ├── storytelling, socratic
    └── scarf, active-listening, desc
```

The 13 frameworks have `user-invocable: false` — they don't appear in the slash menu but are called internally by `/howtotalk` via the Skill tool. You just describe your situation and the router handles the rest.

## Multi-Framework Pipelines

Complex situations use multiple frameworks in sequence:

| Situation | Pipeline |
|-----------|----------|
| Difficult conversation | Difficult Conversations → NVC → Active Listening |
| Negotiating a deal | Getting to Yes → Never Split → Influence |
| Giving feedback | SCARF → Radical Candor → Active Listening |
| Persuading a group | Influence → Storytelling → Socratic |
| Resolving team conflict | Crucial Conversations → NVC → Getting to Yes |
| Motivating resistant person | SCARF → Motivational Interviewing → Socratic |
| Saying no gracefully | Active Listening → DESC → NVC |

## Installation

> 💡 **짧은 이름**: [래퍼 설정](https://github.com/ironyjk/claude-frameworks-marketplace#짧은-이름으로-쓰기-optional) 후 `/howtotalk`으로 호출 가능

### One-Line Install

```bash
cd /path/to/your/project
curl -fsSL https://raw.githubusercontent.com/ironyjk/howtotalk/master/install.sh | bash
```

With auto-update hook:
```bash
curl -fsSL https://raw.githubusercontent.com/ironyjk/howtotalk/master/install.sh | bash -s -- --with-hook
```

### Other Platforms

Works with any LLM — see [strategy-frameworks](https://github.com/ironyjk/strategy-frameworks) for Cursor, ChatGPT, Gemini setup.

## Usage

```
/howtotalk My team member keeps missing deadlines but gets defensive when I bring it up
→ SCARF (diagnose threat) + Radical Candor (deliver) + Motivational Interviewing

/howtotalk I need to negotiate a 20% raise at my annual review
→ Getting to Yes (BATNA) + Never Split (tactics) + Influence (close)

/howtotalk:practice Saying no to a client's unreasonable request
→ Interactive role-play with coaching after each exchange
```

## Related Projects

- **[strategy-frameworks](https://github.com/ironyjk/strategy-frameworks)** — 9 strategy frameworks + `/think` meta-agent
- **[toc-agents](https://github.com/ironyjk/toc-agents)** — Theory of Constraints, 10 tools
- **[triz-agents](https://github.com/ironyjk/triz-agents)** — TRIZ, 9 tools

## Attribution & Trademarks

This project implements well-known communication frameworks for educational purposes. The following trademarks are acknowledged:

- **Crucial Conversations®** is a registered trademark of Crucial Learning (formerly VitalSmarts). Based on *Crucial Conversations* by Patterson, Grenny, McMillan & Switzler.
- **Radical Candor®** is a registered trademark of Radical Candor LLC. Based on *Radical Candor* by Kim Scott.
- **Nonviolent Communication® (NVC)** is a registered service mark of the Center for Nonviolent Communication (CNVC). Based on the work of Marshall B. Rosenberg.
- **SCARF Model™** is a trademark of the NeuroLeadership Institute. Developed by David Rock.
- **Never Split the Difference™** is associated with the Black Swan Group. Based on the work of Chris Voss.
- **Motivational Interviewing™** is associated with the Motivational Interviewing Network of Trainers (MINT). Based on the work of William R. Miller & Stephen Rollnick.

All other framework names (Getting to Yes, Difficult Conversations, DESC, Active Listening, Storytelling, Socratic Method, Influence) reference published academic works and are used descriptively.

This project is not affiliated with, endorsed by, or sponsored by any of the above trademark holders.

## License

MIT

## Author

@ironyjk × Claude Code
