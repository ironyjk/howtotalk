# howtotalk — Communication Frameworks for AI Agents

13 classic communication, persuasion, and conversation frameworks as Claude Code skills.
Describe your situation and `/howtotalk` auto-selects the best approach.

## Frameworks

### Persuasion & Negotiation
| Skill | Creator | Use When |
|-------|---------|----------|
| `/nvc` | Marshall Rosenberg | Expressing needs without blame, resolving conflicts with empathy |
| `/crucial` | Patterson, Grenny et al. | High-stakes conversations where emotions run strong |
| `/negotiate` | Chris Voss (FBI) | Negotiations, salary talks, deals, hostage-style tactics |
| `/principled` | Fisher & Ury (Harvard) | Win-win negotiations, finding mutual interests |
| `/influence` | Robert Cialdini | Ethical persuasion, marketing, detecting manipulation |

### Feedback & Leadership
| Skill | Creator | Use When |
|-------|---------|----------|
| `/candor` | Kim Scott (Google/Apple) | Giving tough feedback with care |
| `/difficult` | Stone, Patton, Heen (Harvard) | Conversations you've been avoiding |
| `/mi` | Miller & Rollnick | Motivating someone who resists change |

### Presentation & Teaching
| Skill | Creator | Use When |
|-------|---------|----------|
| `/story` | Campbell, Duarte, Pixar | Presentations, pitches, compelling narratives |
| `/socratic` | Socrates | Teaching, coaching, leading to insight through questions |

### Self-Awareness & Listening
| Skill | Creator | Use When |
|-------|---------|----------|
| `/scarf` | David Rock | Understanding why people react, managing team dynamics |
| `/listen` | Carl Rogers | When you need to truly hear someone |
| `/assert` | DESC Framework | Setting boundaries, standing up for yourself |

### Meta-Agent
| Skill | Description |
|-------|-------------|
| `/howtotalk` | **Auto-selects** the best framework(s) for your communication situation |

## Installation

### One-Line Install (all 14 skills)

```bash
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
/howtotalk [describe your situation]     — auto-select best framework
/howtotalk:select [situation]            — just recommend (don't execute)
/howtotalk:practice [situation]          — role-play simulation

/nvc "I need to tell my coworker their work is affecting the team"
/negotiate "salary negotiation with HR tomorrow"
/candor:feedback "team member keeps missing deadlines"
/story:pitch "3-minute investor pitch for our new service"
/socratic "teaching a junior about code review"
```

## Related Projects

- [strategy-frameworks](https://github.com/ironyjk/strategy-frameworks) — 9 strategy frameworks + `/think` meta-agent
- [toc-agents](https://github.com/ironyjk/toc-agents) — Theory of Constraints 11 tools
- [triz-agents](https://github.com/ironyjk/triz-agents) — TRIZ 9 tools

## License

MIT

## Author

@ironyjk × Claude Code
