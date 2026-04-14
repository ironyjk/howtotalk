---
name: scarf
version: "1.0.0"
description: "SCARF Model (David Rock, NeuroLeadership) -- understand and manage the 5 social domains that trigger threat or reward responses in the brain. Use for team management, feedback, change leadership, negotiations, and any interpersonal interaction where emotions run high."
tools:
  - Read
  - Write
  - Edit
  - WebSearch
---

# SCARF Model — Social Threat & Reward Framework

> "Much of our motivation driving social behavior is governed by an overarching organizing principle of minimizing threat and maximizing reward." — David Rock, *Your Brain at Work*

## Overview

The SCARF model identifies **5 domains of social experience** that the brain treats with the same intensity as physical survival. A perceived threat in any domain activates the same neural circuits as physical pain; a perceived reward activates the same circuits as physical pleasure.

This means a clumsy comment about someone's status can literally shut down their prefrontal cortex (analytical thinking), while a well-designed interaction that boosts autonomy can unlock creativity and collaboration.

## The 5 Domains

### 1. Status — Relative Importance to Others
- **Threat triggers**: public criticism, unsolicited advice, being compared unfavorably, being ignored in meetings, someone taking credit for your work
- **Reward triggers**: public praise, being asked for expertise, positive feedback, learning new skills (self-competition), titles and recognition
- **Application**: Give feedback privately. Frame suggestions as questions. Celebrate individual contributions publicly.

### 2. Certainty — Ability to Predict the Future
- **Threat triggers**: ambiguous expectations, organizational restructuring, unclear deadlines, surprise changes, "we need to talk" with no context
- **Reward triggers**: clear agendas, transparent timelines, breaking big changes into small steps, sharing the "why" behind decisions, regular check-ins
- **Application**: Over-communicate plans. Provide written agendas before meetings. When change is unavoidable, name what IS certain.

### 3. Autonomy — Sense of Control Over Events
- **Threat triggers**: micromanagement, rigid processes with no flexibility, imposed decisions without input, surveillance, "just do what I say"
- **Reward triggers**: choice in how/when/where to work, input on decisions, self-directed goals, flexible deadlines, ownership of outcomes
- **Application**: Offer choices even when the decision is constrained. "Would you prefer to handle X or Y first?" gives autonomy within boundaries.

### 4. Relatedness — Sense of Safety with Others (Friend vs Foe)
- **Threat triggers**: new team members (unknown = foe by default), exclusion from groups, cold/formal interactions, perceived cliques, remote isolation
- **Reward triggers**: shared experiences, personal disclosure, small talk before business, team rituals, mentoring, using first names, shared meals
- **Application**: Invest in "warm-up" time. Introduce new people personally. Create shared identity markers (team name, inside jokes, rituals).

### 5. Fairness — Perception of Just Exchanges
- **Threat triggers**: unequal pay for equal work, favoritism, opaque decision-making, broken promises, inconsistent rule enforcement, hidden agendas
- **Reward triggers**: transparent processes, consistent rules, shared sacrifice, open-book management, involving people in rule-making, admitting mistakes
- **Application**: Make criteria explicit before decisions. When resources are scarce, explain the allocation logic. Keep promises or explain why you can't.

---

## Sub-Commands

### `/scarf` — Full SCARF Analysis
Analyze a situation across all 5 domains. Identify which domains are activated (threat or reward) and design an intervention.

**Process:**
1. Describe the situation, relationship, and context
2. Score each domain: Threat (-2 to -1) / Neutral (0) / Reward (+1 to +2)
3. Identify the dominant threat domain (the one causing the most friction)
4. Design 3 specific actions to convert threats to rewards
5. Predict the likely response

**Output format:**
```
SCARF ANALYSIS
==============

Situation: [summary]

Domain Scores:
  Status:    [score] [emoji] — [brief rationale]
  Certainty: [score] [emoji] — [brief rationale]
  Autonomy:  [score] [emoji] — [brief rationale]
  Relatedness: [score] [emoji] — [brief rationale]
  Fairness:  [score] [emoji] — [brief rationale]

Primary Threat: [domain]
Secondary Threat: [domain or none]

Recommended Actions:
1. [specific action targeting primary threat]
2. [specific action targeting secondary threat]
3. [action to amplify an existing reward domain]

Predicted Outcome: [what changes if actions are taken]
Risk: [what could still go wrong]
```

### `/scarf:diagnose` — Quick Threat Diagnosis
When someone is reacting emotionally and you need to quickly identify which SCARF domain is threatened.

**Process:**
1. Describe the person's behavior/words
2. Map observable signals to likely threatened domains
3. Suggest an immediate de-escalation response

**Signal mapping:**
- Defensive about competence/ideas → **Status**
- Asking repeated questions, seeking reassurance → **Certainty**
- Pushing back on process/instructions → **Autonomy**
- Withdrawing, avoiding eye contact, not participating → **Relatedness**
- Complaining about "how things are done", comparing treatment → **Fairness**

### `/scarf:design` — Design a SCARF-Optimized Interaction
Proactively design a meeting, conversation, or change initiative to minimize threats and maximize rewards across all 5 domains.

**Process:**
1. Define the interaction (meeting, feedback session, announcement, etc.)
2. For each domain, identify potential threats in the planned interaction
3. Redesign elements to convert threats to rewards or at minimum neutralize them
4. Create a checklist for execution

**Output format:**
```
SCARF-OPTIMIZED DESIGN
======================

Interaction: [type and purpose]

Domain-by-Domain Design:

STATUS
  Potential threat: [what could threaten status]
  Mitigation: [design choice]

CERTAINTY
  Potential threat: [what could threaten certainty]
  Mitigation: [design choice]

AUTONOMY
  Potential threat: [what could threaten autonomy]
  Mitigation: [design choice]

RELATEDNESS
  Potential threat: [what could threaten relatedness]
  Mitigation: [design choice]

FAIRNESS
  Potential threat: [what could threaten fairness]
  Mitigation: [design choice]

Execution Checklist:
[ ] [pre-interaction step]
[ ] [during step]
[ ] [post-interaction step]
```

---

## Common Scenarios

### Giving Negative Feedback
- **Status threat** is dominant. Deliver privately, frame as growth, ask for self-assessment first.
- Boost **Certainty** by being specific about what needs to change.
- Preserve **Autonomy** by letting them choose how to improve.

### Organizational Change
- **Certainty threat** is dominant. Over-communicate the timeline and rationale.
- **Autonomy threat** is secondary. Involve people in implementation decisions.
- Boost **Relatedness** by having the announcement come from a trusted person.

### New Team Member Onboarding
- **Relatedness threat** is dominant. Assign a buddy, do personal introductions.
- **Status threat** exists if their role is ambiguous. Clarify their expertise area publicly.
- **Certainty**: Provide a clear first-week plan.

### Salary/Promotion Negotiations
- **Fairness** is dominant. Be transparent about criteria and process.
- **Status** is secondary. Acknowledge their contributions explicitly.
- Preserve **Autonomy** by presenting options, not ultimatums.

---

## Neuroscience Foundation

The SCARF model is grounded in social cognitive neuroscience research:

- **Anterior cingulate cortex (ACC)** activates for both physical pain and social rejection (Eisenberger et al., 2003)
- **Ventral striatum** (reward center) responds to both monetary rewards and social rewards like praise (Izuma et al., 2008)
- Threat responses are **faster, stronger, and longer-lasting** than reward responses (negativity bias)
- A threatened brain literally cannot think clearly — the prefrontal cortex (reasoning) is suppressed when the amygdala (threat) fires

This is why "just be rational" fails when someone feels socially threatened. You must address the threat FIRST before logic can work.

---

## References

- Rock, D. (2008). "SCARF: A brain-based model for collaborating with and influencing others." *NeuroLeadership Journal*, Issue 1.
- Rock, D. (2009). *Your Brain at Work*. HarperBusiness.
- Lieberman, M.D. (2013). *Social: Why Our Brains Are Wired to Connect*. Crown.
- NeuroLeadership Institute: https://neuroleadership.com/
- See also: `scarf/references/domain-guide.md`
