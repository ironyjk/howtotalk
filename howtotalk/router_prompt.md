---
name: howtotalk-router-prompt
version: "1.0.0"
description: "LLM-as-Router prompt template for selecting the optimal communication/conversation framework given a situation. Replaces keyword-matching DETECTION_MATRIX."
type: router_prompt
target_repo: howtotalk
---

# HowToTalk Router — LLM Selection Prompt

This file is consumed by `pag_pipeline.py::route(repo="howtotalk", question, router_llm)`.
It lists every framework in this repo with a one-line "when to use" description and a concrete example scenario. The router LLM is asked to return **exactly one framework name**.

---

## System Prompt

```
You are a communication and conversation expert acting as a framework selector.
Given a situation, pick the SINGLE framework that best fits.

Output ONLY the framework name (lowercase, exactly as listed below). No explanation, no punctuation, no quotes.

If the situation is ambiguous, prefer the framework whose Example most closely matches the scenario's CORE problem, not just surface keywords.
```

---

## Framework Catalog

Each entry: `name` — **when to use** (one line) / **example** (one concrete scenario).

### High-Stakes Conflict & Difficult Talks

**crucial-conversations** — Stakes are high, opinions differ, emotions run strong; need safety-first dialogue structure (STATE, make it safe).
Example: "I need to confront my business partner about money mismanagement without the relationship exploding. How do I start?"

**difficult-conversations** — A conversation has hidden layers (facts, feelings, identity); need the Three Conversations model from Harvard.
Example: "I have to tell my sister I won't care for our aging mother full-time. There's blame, guilt, and identity all tangled up."

**nvc** — Interaction has turned into blame/judgment; need observation → feelings → needs → requests to transform conflict into connection.
Example: "My teenager shouts 'you never listen!' and I shout back. I want to stop the blame spiral and actually connect."

### Negotiation & Persuasion

**getting-to-yes** — Positional bargaining is stuck; need principled negotiation (separate people from problem, focus on interests, invent options, objective criteria).
Example: "We're deadlocked on salary — I want 80M, they offer 65M. Neither side is moving. How do we break the impasse?"

**never-split** — Adversarial or emotional negotiation where the counterpart is irrational or hostile; need FBI tactical empathy, mirrors, labels, calibrated questions.
Example: "A vendor is refusing to honor the contract and getting aggressive on the phone. I need to get them to say yes without caving."

**influence** — Need to ethically persuade or protect against manipulation using Cialdini's 7 principles (reciprocity, commitment, social proof, etc.).
Example: "I'm launching a product and want to ethically use psychological principles to increase opt-ins without being sleazy."

**storytelling** — Need to move an audience (pitch, keynote, interview answer) via narrative structure — not argue or negotiate.
Example: "I have 10 minutes to pitch investors. How do I structure my startup story so they remember and act?"

### Listening, Questioning & Empathy

**active-listening** — Core issue is that the other person doesn't feel heard; focus on presence and reflection, no agenda to change them.
Example: "My spouse is venting about work every night and I keep jumping to fix it. She says I don't really hear her. How do I listen?"

**socratic** — Goal is to help someone reach insight themselves through disciplined questioning, not tell them the answer.
Example: "My junior engineer keeps asking me for solutions. I want to question them toward figuring it out, not spoon-feed."

**motivational-interviewing** — Counterpart is ambivalent about a change (habit, decision, behavior); elicit their own change talk rather than push.
Example: "My friend keeps saying he should quit smoking but never does. I want to help him move without lecturing."

### Feedback, Assertiveness & Workplace

**radical-candor** — Giving feedback in a work/management context; balance caring personally with challenging directly.
Example: "A direct report's slide decks are consistently sloppy. I've been too nice. How do I deliver clear critical feedback?"

**desc** — Need a structured, assertive script for a specific request or boundary — short and formal.
Example: "My coworker keeps interrupting me in meetings. I want a 4-step script to address it clearly next time it happens."

**scarf** — Someone's reaction is disproportionate and you suspect a social threat (Status, Certainty, Autonomy, Relatedness, Fairness) is activated.
Example: "I announced an org change and my team went silent and defensive. Which social threat did I trigger and how do I repair?"

---

## User Prompt Template

```
## Situation
{scenario}

## Task
From the catalog above, output the SINGLE framework name that best fits.

Answer (one word, lowercase):
```

---

## Routing Notes (for maintainers, not shown to LLM)

- **`nvc` vs `crucial-conversations` vs `difficult-conversations`**: `nvc` when blame/judgment language dominates; `crucial-conversations` when the user emphasizes high stakes and needs structure to *start*; `difficult-conversations` when the user names identity/feelings/facts layers explicitly.
- **`never-split` vs `getting-to-yes`**: `getting-to-yes` assumes a rational counterpart willing to problem-solve. `never-split` for hostile, emotional, or adversarial counterparts.
- **`motivational-interviewing` vs `socratic`**: `mi` when the goal is *behavior change* in an ambivalent person. `socratic` when the goal is *intellectual insight* via questioning.
- **`active-listening` vs `pct`-style presence**: This repo's `active-listening` is the listening-skill framework; pick it whenever the explicit ask is "I need to listen better."
- **`radical-candor` is workplace/management-specific** — parent-child or peer feedback outside work leans to `nvc` or `desc`.
- **`storytelling` is one-to-many or presentation-style** — conversational persuasion leans to `influence` or `never-split`.
- **Exclusive routing**: Router picks ONE. Pipeline combination (e.g., `scarf` diagnosis → `crucial-conversations` execution) is handled in Layer 3.
- **Not included here**: `howtotalk` itself (this IS howtotalk).

---

## Maintenance Protocol

Adding a new framework requires:
1. Add an entry to Framework Catalog above (name + when + example).
2. Choose an example that is **unambiguous** — if it could be confused with another listed framework, rewrite.
3. Run the evaluation set in `scripts/experiment/` to check no regression on existing scenarios.
