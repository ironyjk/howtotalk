---
name: Radical Candor
version: "1.1.0"
description: |
  Radical Candor (Kim Scott) feedback framework — Care Personally while Challenging Directly.
  Navigate the 2x2 matrix to give praise and criticism that drives growth without destroying trust.
  Based on Kim Scott's experience at Google and Apple under Sheryl Sandberg and Steve Jobs.
tools:
  - Read
  - Write
  - WebSearch
---

# Radical Candor (래디컬 캔더)

> "It's not mean. It's clear." — Kim Scott

## Core Model: The 2x2 Matrix (2x2 매트릭스)

```
                    Challenge Directly (직접적으로 도전)
                         HIGH
                          |
         Obnoxious    |        Radical
         Aggression   |        Candor
         (불쾌한 공격)  |   (래디컬 캔더 - 솔직한 배려)
                          |
  LOW ----+---------------+---------------+---- HIGH
          |               |               |
  Care    |  Manipulative |   Ruinous     |  Care
  Person- |  Insincerity  |   Empathy     |  Person-
  ally    | (조작적 불성실) | (파멸적 공감)   |  ally
          |               |               |
                         LOW
                    Challenge Directly
```

### The Four Quadrants (4분면)

| Quadrant | Care | Challenge | Result |
|----------|------|-----------|--------|
| **Radical Candor** (래디컬 캔더) | HIGH | HIGH | Growth + Trust |
| **Ruinous Empathy** (파멸적 공감) | HIGH | LOW | Stagnation — "nice but unhelpful" |
| **Obnoxious Aggression** (불쾌한 공격) | LOW | HIGH | Fear — "brutal honesty without care" |
| **Manipulative Insincerity** (조작적 불성실) | LOW | LOW | Backstabbing, politics, passive-aggression |

### Prerequisite: Psychological Safety (Amy Edmondson)

Radical Candor only works in environments with **psychological safety** -- the belief that you won't be punished for speaking up.

Without psychological safety:
- "Challenge Directly" becomes career suicide
- Feedback flows only downward, never upward
- People perform Ruinous Empathy to survive

**How to build psychological safety (before attempting Radical Candor):**
1. **Leader goes first** -- share YOUR mistakes, ask for feedback on yourself
2. **Respond to bad news with curiosity, not punishment** -- "Tell me more" instead of "How did you let this happen?"
3. **Celebrate "useful failures" and learning** -- normalize that mistakes are data, not character flaws
4. **Make it safe to say "I don't know"** -- model intellectual humility from the top

Without this foundation, Radical Candor degenerates:
- In fear-based cultures, "Challenge Directly" reads as Obnoxious Aggression
- People who try Radical Candor upward get labeled as "difficult" or "not a team player"
- The 2x2 matrix becomes purely theoretical -- everyone defaults to Ruinous Empathy or Manipulative Insincerity for self-preservation

**Assessment:** Before rolling out Radical Candor in a team, ask: "Could the most junior person in this room tell the most senior person they're wrong -- and feel safe doing so?" If the answer is no, start with psychological safety.

Reference: Edmondson, A. (2019). *The Fearless Organization*. Wiley.

---

### The "Um" Story (김스콧의 결정적 순간)

After a successful presentation at Google, Sheryl Sandberg pulled Kim aside. She praised what went well, then said: "You said 'um' a lot. Were you aware of it?" Kim brushed it off. Sheryl escalated: "I can see I'm going to have to be more direct. When you say 'um' every third word, it makes you sound stupid." That directness — delivered with genuine care — changed Kim's career. Sheryl wasn't being mean; she cared enough to be clear.

---

## Process: Giving Feedback (피드백 제공 프로세스)

### Step 1: Check Your Quadrant (분면 확인)

Before speaking, ask yourself:
- Am I showing I **care personally** about this person? (개인적으로 관심을 보이는가?)
- Am I **challenging directly** — saying what I actually think? (직접적으로 도전하는가?)

If either answer is "no", adjust before proceeding.

### Step 2: Use the SBI Framework (SBI 프레임워크)

| Element | Description | Example |
|---------|-------------|---------|
| **S**ituation (상황) | When and where | "In yesterday's client meeting..." |
| **B**ehavior (행동) | What they did (observable) | "...you interrupted the client three times..." |
| **I**mpact (영향) | The effect | "...which made them visibly frustrated and they cut the meeting short." |

### Step 3: Be Humble, Not Arrogant (겸손하게, 오만하지 않게)

- State your perception, not "the truth": "I noticed..." not "You always..."
- Invite their perspective: "Am I reading this right?" (내가 맞게 보고 있나요?)
- Be open to being wrong

### Step 4: Give Feedback Immediately (즉시 피드백)

- Don't save it for the 1:1 or review cycle
- 2-3 minutes after the event, not 2-3 weeks
- In private for criticism, in public for praise (비판은 사석에서, 칭찬은 공석에서)

### Step 5: Praise More Than Criticize (비판보다 칭찬을 더 많이)

- Ratio: aim for 3-5 praise for every 1 criticism
- Praise must be **specific** — "great job" is Ruinous Empathy
- Radical Candor praise: SBI format with genuine enthusiasm

---

## Process: Receiving Feedback (피드백 수용 프로세스)

### Step 1: Embrace the Discomfort (불편함을 받아들여라)

- Your first instinct will be to defend. Resist it.
- Count to 6 before responding. (반응하기 전 6초를 세라)

### Step 2: Listen to Understand (이해하기 위해 들어라)

- Reward the candor: "Thank you for telling me this."
- Ask clarifying questions: "Can you give me an example?"
- Do NOT explain or justify yet.

### Step 3: Manage Your Response (반응을 관리하라)

- If you disagree: "I want to think about this. Can we talk again tomorrow?"
- If you agree: "You're right, and here's what I'll do differently."
- Either way: follow up. (어떤 경우든 후속 조치)

---

## Sub-commands

### /candor

Full diagnostic: Analyze a workplace situation through all 4 quadrants. Recommend which quadrant you're currently in and how to move toward Radical Candor.

**Input**: Describe the situation, your relationship, and what you want to say.

**Output**:
```
## Radical Candor Diagnosis

**Current Quadrant**: [which of the 4]
**Why**: [analysis]

**Care Personally Score**: [1-10] — [why]
**Challenge Directly Score**: [1-10] — [why]

## Recommended Script (SBI)
- Situation: ...
- Behavior: ...
- Impact: ...

## Delivery Notes
- Timing: ...
- Setting: ...
- Tone: ...

## Pitfalls to Avoid
- [ ] Don't slip into [quadrant] by...
```

### /candor:feedback

Generate a specific feedback script using SBI format.

**Input**: What happened, who it's for, and what outcome you want.

**Output**: Ready-to-use feedback script with SBI structure, opening line, and closing action.

### /candor:receive

Prepare to receive difficult feedback.

**Input**: What feedback you expect or just received.

**Output**: Emotional preparation guide, clarifying questions to ask, and follow-up plan.

### /candor:diagnose

Diagnose a team or relationship pattern across the 4 quadrants.

**Input**: Describe recurring communication patterns.

**Output**: Pattern analysis, dominant quadrant, root causes, and shift recommendations.

---

## Anti-patterns (하지 말아야 할 것들)

1. **The Feedback Sandwich** (피드백 샌드위치) — Praise-Criticism-Praise dilutes the message and feels manipulative. Just be direct.

2. **Waiting for the Annual Review** (연말 평가까지 기다리기) — Feedback has a half-life. Deliver within 48 hours or the moment is lost.

3. **"Just being honest"** ("그냥 솔직한 거야") — This is Obnoxious Aggression disguised as virtue. Honesty without care is cruelty.

4. **Vague Praise** (모호한 칭찬) — "Good job" teaches nothing. Specify what was good and why it mattered.

5. **Criticizing in Public** (공개적 비판) — Always criticize in private. Public criticism triggers shame, not growth.

6. **Personalizing the Feedback** (인격에 대한 피드백) — "You're lazy" vs "The report was submitted 3 days late." Attack the behavior, not the person.

7. **The Retrospective Dump** (과거 몰아치기) — Don't store up 6 months of grievances and unload them at once.

8. **Assuming Your Intent Is Obvious** (의도가 당연히 전달된다고 가정) — Always state your care explicitly: "I'm telling you this because I want you to succeed."

---

## Key Principles Summary

| Principle | Korean | One-liner |
|-----------|--------|-----------|
| Care Personally | 개인적으로 배려하라 | Show you give a damn about the whole person |
| Challenge Directly | 직접적으로 도전하라 | Say what you really think, clearly |
| Humble Feedback | 겸손한 피드백 | You might be wrong — say so |
| Immediate Feedback | 즉각적 피드백 | 2 minutes, not 2 months |
| Gauge, Don't Grade | 등급이 아닌 가늠 | It's a compass, not a scorecard |

---

## References

- Kim Scott, *Radical Candor: Be a Kick-Ass Boss Without Losing Your Humanity* (2017, revised 2019)
- Kim Scott, *Just Work: How to Root Out Bias, Prejudice, and Bullying to Build a Kick-Ass Culture* (2021)
- [radicalcandor.com](https://www.radicalcandor.com/)
- See: [references/feedback-guide.md](references/feedback-guide.md)
