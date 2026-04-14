---
name: howtotalk
version: "1.1.0"
description: "Meta Communication Agent -- the router/orchestrator that selects the best communication framework(s) based on your situation. Analyzes context, routes to the optimal framework pipeline, resolves conflicts between approaches, and provides integrated guidance. Like /think but for human communication strategy."
tools:
  - Read
  - Write
  - Edit
  - WebSearch
  - Skill
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

HowToTalk is not a framework itself. It is the **intelligence layer** that sits above 13 communication frameworks and routes you to the right one(s) based on your specific situation.

Think of it as a communication strategist. You describe what you're facing — a tough conversation, a negotiation, a team conflict, a persuasion challenge — and HowToTalk analyzes the situation, selects the best framework(s), sequences them into a pipeline, and guides you through execution.

You don't need to know which framework to use. You just need to describe the problem.

---

## Installation

```bash
# Clone the full communication toolkit
git clone https://github.com/user/howtotalk.git ~/.claude/skills/howtotalk

# Or install individual frameworks
curl -sL https://raw.githubusercontent.com/user/howtotalk/main/install.sh | bash
```

**Requirements:** Claude Code with Skill tool access. All 13 framework SKILL.md files should be present in sibling directories.

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

## Situation-Based Routing (Multi-Framework Pipelines)

Complex situations require multiple frameworks in sequence. Each framework handles a different phase of the interaction.

### Pipeline 1: Having a Difficult Conversation
**Sequence:** Difficult Conversations (prepare) --> NVC (express) --> Active Listening (receive)

| Phase | Framework | Purpose |
|-------|-----------|---------|
| Before | **Difficult Conversations** | Map the Three Conversations (What Happened, Feelings, Identity). Prepare your contribution to the problem. |
| Express | **NVC** | Use Observation-Feeling-Need-Request to state your perspective without blame. |
| Receive | **Active Listening** | When they respond, paraphrase and reflect before reacting. Empathic listening de-escalates. |

### Pipeline 2: Negotiating a Deal
**Sequence:** Getting to Yes (BATNA) --> Never Split the Difference (tactics) --> Influence (close)

| Phase | Framework | Purpose |
|-------|-----------|---------|
| Prepare | **Getting to Yes** | Clarify your BATNA, identify interests behind positions, generate options for mutual gain. |
| Execute | **Never Split the Difference** | Use calibrated questions, tactical empathy, labeling, mirroring. "How am I supposed to do that?" |
| Close | **Influence** | Apply reciprocity, commitment/consistency, or social proof to seal the deal. |

### Pipeline 3: Giving Feedback
**Sequence:** SCARF (diagnose threat) --> Radical Candor (deliver) --> Active Listening (receive response)

| Phase | Framework | Purpose |
|-------|-----------|---------|
| Before | **SCARF** | Diagnose which domains might be threatened. Design the environment to minimize threat. |
| Deliver | **Radical Candor** | Care Personally + Challenge Directly. Be specific, kind, and immediate. |
| After | **Active Listening** | Hear their response without defensiveness. Reflect and validate before problem-solving. |

### Pipeline 4: Persuading a Group
**Sequence:** Influence (design) --> Storytelling (narrative) --> Socratic (engagement)

| Phase | Framework | Purpose |
|-------|-----------|---------|
| Design | **Influence** | Select the right influence principles for this audience (authority? social proof? scarcity?). |
| Deliver | **Storytelling** | Wrap your message in a compelling narrative. Facts tell, stories sell. |
| Engage | **Socratic** | Use questions to let the audience arrive at the conclusion themselves. Ownership > persuasion. |

### Pipeline 5: Resolving Team Conflict
**Sequence:** Crucial Conversations (safety) --> NVC (expression) --> Getting to Yes (agreement)

| Phase | Framework | Purpose |
|-------|-----------|---------|
| Open | **Crucial Conversations** | Establish mutual purpose and safety. "I want to find a solution that works for everyone." |
| Express | **NVC** | Each party states observations, feelings, needs. No blame, no diagnosis. |
| Resolve | **Getting to Yes** | Move from positions to interests. Generate options. Apply objective criteria. |

### Pipeline 6: Motivating Someone Resistant to Change
**Sequence:** SCARF (understand resistance) --> Motivational Interviewing (explore ambivalence) --> Socratic (guide insight)

| Phase | Framework | Purpose |
|-------|-----------|---------|
| Understand | **SCARF** | Why are they resisting? Autonomy threat? Certainty threat? Status threat? |
| Explore | **Motivational Interviewing** | Don't push. Explore their ambivalence. Roll with resistance. Elicit their OWN reasons for change. |
| Deepen | **Socratic** | Ask questions that help them see the implications of their own reasoning. |

### Pipeline 7: Saying No Without Burning Bridges
**Sequence:** Active Listening (hear the request fully) --> DESC (assert your boundary) --> NVC (maintain connection)

| Phase | Framework | Purpose |
|-------|-----------|---------|
| Hear | **Active Listening** | Before saying no, fully understand what they're asking and why. They need to feel heard. |
| Assert | **DESC** | Describe the situation, Express your constraint, Specify your boundary, positive Consequence. |
| Connect | **NVC** | Acknowledge their unmet need. Offer an alternative if possible. Preserve the relationship. |

---

## Conflict Resolution Between Frameworks

When frameworks give contradictory advice, apply these tiebreakers:

### Rule 1: Safety First
If one framework suggests an approach that could escalate the situation or make someone feel unsafe, defer to the framework that prioritizes psychological safety.

**Priority:** Crucial Conversations (safety) > SCARF (threat reduction) > DESC (assertion)

### Rule 2: Listen Before You Speak
If in doubt about whether to express or listen, listen first. You can always speak later. You can't un-say something.

**Priority:** Active Listening > NVC expression > Radical Candor directness

### Rule 3: Relationship Over Transaction
If there's a conflict between winning the point and preserving the relationship, preserve the relationship — unless the issue is a core boundary.

**Priority:** Long-term relationship health > short-term tactical win

### Rule 4: Context Determines Directness
High-context cultures (Korea, Japan) → lean toward SCARF, Active Listening, indirect approaches.
Low-context cultures (US, Germany, Netherlands) → lean toward DESC, Radical Candor, direct approaches.

### Rule 5: Emotional State Determines Sequence
If emotion is HIGH → Active Listening + SCARF first (de-escalate) → then use other frameworks.
If emotion is LOW → Go directly to the analytical framework (Getting to Yes, DESC, Radical Candor).

---

## Fallback Strategy

When the situation doesn't clearly map to any framework, use this universal fallback:

### The Universal Communication Sequence

1. **Observe** (from NVC): What are the objective facts?
2. **Listen** (from Active Listening): What is the other person experiencing?
3. **Empathize** (from SCARF): What social needs are at play?
4. **Express** (from DESC): State your perspective with I-statements
5. **Collaborate** (from Getting to Yes): Find a solution that meets both parties' interests
6. **Commit** (from Crucial Conversations): Agree on who does what by when

This sequence works for 80% of communication situations because it follows the natural rhythm of human interaction: understand first, then be understood, then solve together.

---

## Sub-Commands

### `/howtotalk` — Full Situation Analysis & Routing

The primary command. Describe your situation and receive a complete communication strategy.

**Process:**

1. **Intake:** Parse the situation description. Infer missing fields (relationship, goal, emotion level, constraints).

2. **Diagnosis:** Score the situation against all 13 frameworks using the detection matrix. Identify the top 3 most relevant frameworks.

3. **Pipeline Design:** If the situation requires multiple frameworks, design the sequence (which framework handles which phase).

4. **Strategy Generation:** For each selected framework, generate specific tactics, scripts, and language to use.

5. **Risk Assessment:** Identify what could go wrong and provide contingency responses.

6. **Delivery:** Present the integrated strategy in a clear, actionable format.

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

When you already know the general area but want help choosing between frameworks. Faster than full analysis.

**Process:**
1. Describe the situation in one sentence
2. Agent returns top 3 frameworks with a one-line rationale for each
3. Ask the user which to proceed with, or auto-select the best match

**Output format:**
```
FRAMEWORK SELECTION
===================

Situation: [one-line summary]

Recommended:
  1. [Framework] — [one-line rationale] [confidence %]
  2. [Framework] — [one-line rationale] [confidence %]
  3. [Framework] — [one-line rationale] [confidence %]

Auto-selection: [#1 framework] (confidence: [X]%)

Proceed with [framework]? Or specify a different choice.
```

### `/howtotalk:practice` — Role-Play Simulation

The most powerful learning tool. Simulate a conversation using the selected framework(s).

**Process:**

1. **Setup:**
   - User describes the situation OR selects from preset scenarios
   - Agent determines the appropriate framework pipeline
   - Agent takes the role of the "other person" (boss, partner, client, etc.)

2. **Simulation (5-10 exchanges):**
   - Agent plays the other person realistically (including resistance, deflection, emotion)
   - After each user response, agent provides brief coaching (what worked, what to adjust)
   - Agent gradually increases difficulty (pushback, emotional escalation, curve balls)

3. **Debrief:**
   - Overall performance assessment
   - Framework adherence score
   - Specific moments that were strong
   - Specific moments that could improve
   - One key insight for next time

**Preset Scenarios:**

| # | Scenario | Framework Pipeline |
|---|----------|-------------------|
| 1 | Asking your boss for a raise | Never Split + Getting to Yes |
| 2 | Telling a friend their behavior hurts you | NVC + Active Listening |
| 3 | Giving negative feedback to a direct report | SCARF + Radical Candor |
| 4 | Negotiating a contract with a vendor | Getting to Yes + Never Split |
| 5 | Confronting a partner about a recurring issue | Difficult Conversations + NVC |
| 6 | Saying no to a client request | DESC + Active Listening |
| 7 | Mediating a conflict between two team members | Crucial Conversations + Getting to Yes |
| 8 | Persuading leadership to fund your project | Influence + Storytelling |
| 9 | Dealing with a passive-aggressive colleague | SCARF + DESC |
| 10 | Having "the talk" about relationship direction | Difficult Conversations + NVC |

**Debrief output format:**
```
PRACTICE DEBRIEF
================

Scenario: [description]
Framework(s) Used: [list]
Exchanges: [number]

Overall Score: [1-10]

Strengths:
- [specific moment]: [why it worked]
- [specific moment]: [why it worked]

Growth Areas:
- [specific moment]: [what happened] → [what would be better]
- [specific moment]: [what happened] → [what would be better]

Framework Technique Usage:
  [Technique 1]: [used / missed opportunity]
  [Technique 2]: [used / missed opportunity]

Key Insight: [the one thing that would most improve your communication]

Suggested Next Practice: [scenario that targets the growth area]
```

---

## The 13 Frameworks — Quick Reference

| # | Framework | Core Idea | Best For |
|---|-----------|-----------|----------|
| 1 | **NVC** | Observation-Feeling-Need-Request | Expressing without blame |
| 2 | **Radical Candor** | Care Personally + Challenge Directly | Feedback and management |
| 3 | **Crucial Conversations** | Make it safe to talk about anything | High-stakes disagreements |
| 4 | **Difficult Conversations** | Three Conversations (What Happened, Feelings, Identity) | Emotionally loaded topics |
| 5 | **Never Split the Difference** | Tactical empathy + calibrated questions | Negotiations and hostage-style standoffs |
| 6 | **Getting to Yes** | Interests, not positions; BATNA | Principled negotiation |
| 7 | **Influence** | 6 principles of persuasion | Ethical persuasion and marketing |
| 8 | **Storytelling** | Narrative structure for persuasion | Presentations, pitches, leadership |
| 9 | **Motivational Interviewing** | Roll with resistance, elicit change talk | Helping people change |
| 10 | **Socratic Method** | Questions that lead to insight | Teaching, coaching, workshops |
| 11 | **SCARF** | 5 social threat/reward domains | Team dynamics, change management |
| 12 | **Active Listening** | Empathic presence + reflection techniques | Any conversation, especially emotional |
| 13 | **DESC** | Describe-Express-Specify-Consequences | Assertive boundary-setting |

---

## Framework Compatibility Matrix

Some frameworks pair naturally; others create tension.

### High Synergy Pairs
- **NVC + Active Listening:** Listen empathically, then express without blame. The foundation combo.
- **SCARF + Radical Candor:** Understand what threatens them, then deliver candid feedback safely.
- **Getting to Yes + Never Split:** Principled structure + tactical execution. The negotiation powerhouse.
- **Crucial Conversations + Difficult Conversations:** Safety framework + depth framework. For the hardest talks.
- **Motivational Interviewing + Socratic:** Both use questions to guide insight. Non-directive power duo.

### Tension Pairs (Use Carefully)
- **Radical Candor + NVC:** Candor pushes directness; NVC pushes gentle expression. Resolve by being direct about observations and feelings, gentle about requests.
- **Never Split + Getting to Yes:** Voss (Never Split) distrusts rational joint problem-solving; Fisher/Ury (Getting to Yes) builds on it. Resolve by using Getting to Yes for structure and Never Split for emotional tactics.
- **DESC + Active Listening:** DESC is about speaking; Active Listening is about receiving. Resolve by sequencing: listen first, then DESC.
- **Influence + NVC:** Influence can feel manipulative; NVC is about authenticity. Resolve by using Influence principles ethically and transparently.

---

## Decision Flowchart

```
START
  |
  v
Is someone in immediate danger or crisis?
  YES --> Crisis response (not a communication framework problem)
  NO  --> Continue
  |
  v
What is the primary goal?
  |
  +--> UNDERSTAND someone --> Active Listening
  +--> EXPRESS your needs --> NVC or DESC
  +--> PERSUADE someone --> Influence + Storytelling
  +--> NEGOTIATE an agreement --> Getting to Yes + Never Split
  +--> GIVE FEEDBACK --> SCARF + Radical Candor
  +--> RESOLVE CONFLICT --> Crucial Conversations + NVC
  +--> HAVE A HARD TALK --> Difficult Conversations + Active Listening
  +--> MOTIVATE CHANGE --> Motivational Interviewing + Socratic
  +--> SET BOUNDARIES --> DESC + Radical Candor
  +--> BUILD RAPPORT --> Active Listening + SCARF
  +--> TEACH/COACH --> Socratic + Storytelling
  +--> NOT SURE --> Universal Fallback Sequence
```

---

## Advanced: Combining Frameworks in Real Time

In real conversations, you don't stop and switch frameworks. The skill is fluid integration. Here's how experienced communicators blend them:

### The Opening (0-2 minutes)
- **Active Listening** mode: Let them speak first. Understand before being understood.
- **SCARF** awareness: Watch for threat signals. Adjust environment to feel safe.

### The Middle (2-10 minutes)
- **NVC** or **DESC** for expressing your perspective
- **Crucial Conversations** if safety breaks down (pause, restore mutual purpose)
- **Socratic** questions if you need them to think deeper
- **Never Split** techniques if it's a negotiation (mirroring, labeling, calibrated questions)

### The Close (last 2 minutes)
- **Getting to Yes** for concrete agreements
- **Active Listening** to confirm they feel heard
- **Influence** (commitment principle) to lock in next steps

### The Meta-Skill
The ultimate communication skill is **reading the room in real time** and adjusting your approach. No framework can tell you exactly when to switch. That comes from practice, self-awareness, and genuine care for the other person.

---

## Emotion Level Routing

The emotional temperature of the situation changes which frameworks are available.

### Crisis (Emotion Level: 10/10)
**Available:** Active Listening ONLY. Nothing else works when the amygdala has fully hijacked the prefrontal cortex.
**Goal:** De-escalate to HIGH before using any other framework.

**If someone is in danger of self-harm or harming others, communication frameworks are NOT the answer. Connect to professional help immediately:**
- Korea: 1393 (자살예방상담전화) / 1366 (여성긴급전화) / 112 (경찰)
- US: 988 (Suicide & Crisis Lifeline) / 911 (Emergency)
- Japan: 0570-064-556 (いのちの電話)
- International: befrienders.org/find-support

### High (Emotion Level: 7-9/10)
**Available:** Active Listening, SCARF, NVC (observation + feeling only, no requests yet)
**Goal:** Validate, reflect, create safety. Then transition to analytical frameworks.

### Medium (Emotion Level: 4-6/10)
**Available:** All frameworks. This is the productive zone.
**Goal:** Use the right framework pipeline for the situation.

### Low (Emotion Level: 1-3/10)
**Available:** All frameworks, but emotional connection frameworks (NVC feelings, Active Listening reflection) may feel forced.
**Goal:** Use direct, analytical frameworks (DESC, Getting to Yes, Radical Candor).

---

## Cultural Adaptation Layer

Communication norms vary dramatically across cultures. The meta-agent adjusts framework selection based on cultural context.

### High-Context Cultures (Korea, Japan, China, Arab world)
- Indirect communication preferred
- Lean toward: SCARF, Active Listening, Storytelling
- Lean away from: DESC (too direct), Radical Candor (face-threatening)
- Adaptation: Express feelings through metaphor. Request through suggestion. Give face.

### Low-Context Cultures (US, Germany, Scandinavia, Australia)
- Direct communication expected
- Lean toward: DESC, Radical Candor, Getting to Yes
- Lean away from: Excessive indirection (may be seen as evasive)
- Adaptation: Be clear and specific. State intentions explicitly.

### Power-Distance Cultures
- High power distance: Never challenge a superior publicly. Use SCARF (Status) awareness. Approach through intermediaries.
- Low power distance: Direct conversation with anyone is normal. DESC and Radical Candor work across hierarchy.

---

## References

### Core Texts (The 13 Frameworks)
1. Rosenberg, M. (2003). *Nonviolent Communication*. PuddleDancer Press.
2. Scott, K. (2017). *Radical Candor*. St. Martin's Press.
3. Patterson, K. et al. (2012). *Crucial Conversations*. McGraw-Hill.
4. Stone, D., Patton, B., Heen, S. (2010). *Difficult Conversations*. Penguin.
5. Voss, C. (2016). *Never Split the Difference*. HarperBusiness.
6. Fisher, R., Ury, W., Patton, B. (2011). *Getting to Yes*. Penguin. 3rd ed.
7. Cialdini, R. (2021). *Influence: The Psychology of Persuasion*. Harper Business. New & Expanded.
8. Duarte, N. (2010). *Resonate*. Wiley.
9. Miller, W.R. & Rollnick, S. (2013). *Motivational Interviewing*. Guilford Press. 3rd ed.
10. Paul, R. & Elder, L. (2019). *The Thinker's Guide to Socratic Questioning*. Foundation for Critical Thinking.
11. Rock, D. (2009). *Your Brain at Work*. HarperBusiness.
12. Rogers, C. (1961). *On Becoming a Person*. Houghton Mifflin.
13. Bower, S.A. & Bower, G.H. (1976). *Asserting Yourself*. Da Capo Press.

### Meta/Integration
- Watzlawick, P. et al. (1967). *Pragmatics of Human Communication*. Norton.
- Tannen, D. (1990). *You Just Don't Understand*. William Morrow.
- Ting-Toomey, S. (1999). *Communicating Across Cultures*. Guilford Press.
- Goleman, D. (1995). *Emotional Intelligence*. Bantam Books.

### Framework Reference Docs
- `scarf/references/domain-guide.md`
- `active-listening/references/techniques.md`
- `desc/references/assertiveness-techniques.md`
- `howtotalk/references/framework-comparison.md`
