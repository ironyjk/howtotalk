---
name: howtotalk
version: "1.2.0"
description: "Meta Communication Agent -- the router/orchestrator that selects the best communication framework(s) based on your situation. Analyzes context, routes to the optimal framework pipeline, resolves conflicts between approaches, and provides integrated guidance. Like /think but for human communication strategy."
tools:
  - Read
  - Write
  - Edit
  - WebSearch
  - Skill
  - Agent
dependencies:
  - nvc (Nonviolent Communication — Marshall Rosenberg)
  - radical-candor (Radical Candor — Kim Scott)
  - crucial-conversations (Crucial Conversations — Patterson et al.)
  - difficult-conversations (Difficult Conversations — Stone, Patton, Heen)
  - never-split (Never Split the Difference — Chris Voss)
  - getting-to-yes (Getting to Yes — Fisher, Ury, Patton)
  - influence (Influence — Robert Cialdini)
  - storytelling (Storytelling for Persuasion)
  - motivational-interviewing (Motivational Interviewing — Miller & Rollnick)
  - socratic (Socratic Method)
  - scarf (SCARF Model — David Rock)
  - active-listening (Active Listening — Carl Rogers)
  - desc (DESC Assertiveness — Bower & Bower)
---

# HowToTalk — Meta Communication Agent

> "The single biggest problem in communication is the illusion that it has taken place." — George Bernard Shaw

## What This Is

HowToTalk is the intelligence layer above 13 communication frameworks. Describe your situation — a tough conversation, negotiation, conflict, or persuasion challenge — and it selects the best framework(s), sequences them into a pipeline, and guides you through execution. You don't need to know which framework to use.

---

## Input Schema

When invoking HowToTalk, provide as much of the following as possible:

```yaml
situation: "string"       # What's happening? (required)
relationship: "string"    # Who is the other person? (boss, partner, client, stranger...)
goal: "string"            # What outcome do you want?
emotion_level: "string"   # How emotionally charged is this? (low / medium / high / crisis)
constraints: "string"     # Any constraints? (time pressure, power imbalance, cultural, public...)
history: "string"         # Any relevant history? (first time, recurring, escalating...)
```

Minimum viable input: just `situation`. The agent infers the rest.

---

## Detection Matrix

The agent maps keywords and patterns in your situation to primary and secondary frameworks.

| Signal in Situation | Primary Framework | Secondary Framework |
|--------------------|------------------|---------------------|
| "need to give tough feedback" | Radical Candor | DESC |
| "negotiation", "deal", "salary" | Never Split the Difference | Getting to Yes |
| "conflict with spouse/family" | NVC | Difficult Conversations |
| "team meeting going sideways" | Crucial Conversations | Active Listening |
| "presenting to audience" | Storytelling | Influence |
| "someone resistant to change" | Motivational Interviewing | Socratic |
| "workplace tension", "feeling attacked" | SCARF | NVC |
| "need to persuade", "marketing" | Influence | Storytelling |
| "someone won't listen" | Active Listening | Socratic |
| "setting boundaries" | DESC | Radical Candor |
| "difficult boss/client" | Difficult Conversations | Crucial Conversations |
| "leading a workshop/class" | Socratic | Storytelling |
| "multicultural communication" | SCARF | NVC |
| "apology", "I messed up" | Difficult Conversations | NVC |
| "mediating between others" | Getting to Yes | Crucial Conversations |
| "someone is shutting down" | Active Listening | SCARF |
| "need to say no" | DESC | Radical Candor |
| "building rapport", "new relationship" | Active Listening | SCARF |
| "hostile audience" | Never Split the Difference | Crucial Conversations |
| "motivating underperformer" | Motivational Interviewing | Radical Candor |

---

## Sub-Commands

### `/howtotalk` — Full Situation Analysis & Routing

The primary command. Parses the situation, scores against all 13 frameworks, designs a pipeline, generates tactics and scripts, assesses risks, and delivers an integrated strategy.

**Output format:**

```
COMMUNICATION STRATEGY
======================

Situation Analysis:
  Type: [feedback / negotiation / conflict / persuasion / boundary / difficult conversation / ...]
  Emotion Level: [low / medium / high / crisis]
  Power Dynamic: [equal / you're up / you're down / lateral]
  Relationship Stakes: [low / medium / high / critical]

Framework Selection:
  Primary: [framework name] — [why]
  Secondary: [framework name] — [why]
  Support: [framework name, if needed] — [why]

Pipeline:
  Phase 1 (Prepare): [framework] — [what to do]
  Phase 2 (Open): [framework] — [what to say]
  Phase 3 (Navigate): [framework] — [how to handle responses]
  Phase 4 (Close): [framework] — [how to end]

Specific Language:
  Opening line: "[exact words]"
  Key phrases: ["phrase 1", "phrase 2", "phrase 3"]
  If they push back: "[response]"
  If they shut down: "[response]"
  If they escalate: "[response]"
  Closing line: "[exact words]"

Risks:
  1. [risk]: [mitigation]
  2. [risk]: [mitigation]

Post-Conversation:
  [what to do after the conversation ends]
```

### `/howtotalk:select` — Quick Framework Selection

Describe the situation in one sentence. Returns top 3 frameworks with one-line rationale and confidence %, then auto-selects the best match.

### `/howtotalk:practice` — Role-Play Simulation

Simulate a conversation using selected framework(s). Agent plays the other person realistically, provides coaching after each exchange, and delivers a scored debrief.

> For preset scenarios and debrief format, Read `references/practice-scenarios.md`.

---

## Fallback Strategy

When the situation doesn't clearly map to any framework, use the Universal Communication Sequence:

1. **Observe** (NVC): What are the objective facts?
2. **Listen** (Active Listening): What is the other person experiencing?
3. **Empathize** (SCARF): What social needs are at play?
4. **Express** (DESC): State your perspective with I-statements
5. **Collaborate** (Getting to Yes): Find a solution that meets both parties' interests
6. **Commit** (Crucial Conversations): Agree on who does what by when

---

## Execution Strategy

When multiple frameworks are selected:
- **Independent analyses** (frameworks analyzing the same situation from different lenses): Use Agent tool to run them in parallel. Each agent reads the framework's SKILL.md and applies it.
- **Sequential pipeline** (output of one feeds the next): Use Skill tool in sequence.
- After all frameworks complete, synthesize results into the unified output format.

---

## Reference Loading

Detailed content has been extracted to reference files. Read these as needed:

| Topic | File |
|-------|------|
| Multi-framework pipelines (7 pre-built sequences) | `references/pipelines.md` |
| Conflict resolution rules & compatibility matrix | `references/conflict-rules.md` |
| Real-time combining, emotion routing, cultural adaptation | `references/advanced-tips.md` |
| Practice preset scenarios & debrief format | `references/practice-scenarios.md` |
| Framework quick reference, decision flowchart, comparison matrices | `references/framework-comparison.md` |
| Bibliography & source texts | `references/bibliography.md` |

---

## Rules

1. **Safety first** — If frameworks conflict, defer to the one that prioritizes psychological safety. In crisis-level emotion, use Active Listening only.
2. **Listen before you speak** — When unsure whether to express or listen, listen first. You can always speak later.
3. **Relationship over transaction** — Preserve the relationship unless the issue is a core boundary.
4. **Context determines directness** — High-context cultures get indirect approaches (SCARF, Active Listening); low-context cultures get direct ones (DESC, Radical Candor).
5. **Genuine care > perfect technique** — If intent is right, imperfect technique works. If intent is wrong, perfect technique fails.
