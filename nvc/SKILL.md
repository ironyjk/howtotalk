---
name: nvc
version: "1.1.0"
user-invocable: false
description: "Nonviolent Communication (Marshall Rosenberg) - Transform conflict into connection through observation, feelings, needs, and requests"
tools:
  - Read
  - Write
  - Bash
  - WebSearch
---

# Nonviolent Communication (NVC) Skill

> "Every criticism, judgment, diagnosis, and expression of anger is the tragic expression of an unmet need." — Marshall Rosenberg

## Overview

NVC (비폭력 대화) is a communication framework developed by Marshall Rosenberg that replaces habitual reactive patterns with conscious, empathic responses. It transforms how we express ourselves and hear others by focusing on four components: observations, feelings, needs, and requests.

## Sub-commands

| Command | Description |
|---------|-------------|
| `/nvc` | Full 4-step NVC process on a given situation |
| `/nvc:observe` | Practice separating observation from evaluation |
| `/nvc:empathy` | Empathic listening — guess the other person's feelings and needs |
| `/nvc:request` | Craft a clear, positive, actionable request |

---

## Process

### Step 1: Observation (관찰) — Without Evaluation

State what you **concretely see or hear** without mixing in judgment, interpretation, or evaluation.

**The core distinction:**
- Observation (관찰): "You arrived at 9:20 for our 9:00 meeting" 
- Evaluation (평가): "You're always late" / "You don't respect my time"

**Rules:**
1. Be specific about time and context ("When I saw X..." / "When you said Y...")
2. Use verbs, not adjectives ("You raised your voice" not "You were aggressive")
3. Quantify when possible ("three times this week" not "always")
4. Refer to observable behavior, not assumed intent

**Test:** Would a video camera record this? If not, it's evaluation, not observation.

### Step 2: Feeling (느낌) — Not Thinking

Identify the **emotion** stimulated by what you observed. Distinguish genuine feelings from thoughts disguised as feelings.

**Real feelings (진짜 느낌):**
- Sad (슬픔), scared (두려움), angry (분노), hurt (상처), confused (혼란), tired (피곤), hopeful (희망), grateful (감사)

**Pseudo-feelings / Faux feelings (가짜 느낌) — actually judgments:**
- "I feel *abandoned*" (implies someone abandoned you)
- "I feel *manipulated*" (implies someone is manipulating you)
- "I feel *unappreciated*" (implies others should appreciate you)
- "I feel *that you don't care*" (this is a thought, not a feeling)

**Test:** Can you say "I feel ___" and it's purely an internal state? If it requires another person to act on you, it's a judgment.

### Step 3: Need (욕구) — Universal Human Needs

Connect the feeling to the **underlying need** — the universal human value that is or isn't being met.

**Key principle:** Feelings are caused by needs, not by other people's actions. Others are the *stimulus*, not the *cause*.

**Categories of needs:**
- Autonomy (자율성): choice, freedom, independence
- Connection (연결): belonging, intimacy, love, respect, trust
- Physical (신체적): food, rest, safety, shelter
- Meaning (의미): contribution, purpose, growth, learning
- Play (놀이): fun, humor, recreation
- Integrity (진실성): authenticity, honesty, self-worth
- Peace (평화): harmony, order, beauty

### Step 4: Request (부탁) — Clear, Positive, Doable

Make a **specific, positive, present-tense** request — not a demand.

**Request vs Demand (부탁 vs 강요):**
- Request: The other person can say no without punishment
- Demand: Saying no leads to blame, guilt, or consequences

**Formulation rules:**
1. **Positive language**: Say what you DO want, not what you DON'T want
   - Not: "Stop yelling" → "Would you be willing to speak more softly?"
2. **Specific action**: Observable behavior, not vague attitude change
   - Not: "Be more considerate" → "Would you text me if you'll be more than 15 minutes late?"
3. **Present tense**: Askable right now
4. **Check understanding**: "Would you tell me what you heard me say?"

---

## Jackal vs Giraffe Language (자칼 vs 기린 언어)

| Jackal (자칼) — Life-alienating | Giraffe (기린) — Life-enriching |
|---|---|
| Moralistic judgments ("You're wrong") | Observations + feelings + needs |
| Comparisons ("You're not as good as...") | Empathic connection |
| Denial of responsibility ("I had to") | Ownership ("I chose to because I value...") |
| Demands ("You must") | Requests ("Would you be willing to...") |
| Deserve-thinking ("They deserve punishment") | Restorative approach ("What needs are unmet?") |

---

## Three Modes of NVC

### 1. Self-Empathy (자기 공감)
Turn inward. When triggered:
1. Pause. Notice the physical sensation.
2. Ask: "What am I observing?" (just facts)
3. Ask: "What am I feeling?" (emotion, not thought)
4. Ask: "What need of mine is alive right now?"
5. Ask: "What request could I make — of myself or another?"

### 2. Empathy for Others (타인에 대한 공감)
Listen to understand, not to fix or reply:
1. Put your agenda aside entirely
2. Guess their feelings: "Are you feeling ___?"
3. Guess their needs: "Because you need ___?"
4. Stay with them until they exhale / relax / say "yes, exactly"
5. Do NOT: advise, console, one-up, educate, or correct

### 3. Honest Expression (솔직한 표현)
Speak your truth without blame:
- "When I [observation], I feel [feeling] because I need [need]. Would you be willing to [request]?"

---

## When NVC Doesn't Work: Emergency Empathy

When you've done all 4 steps and the other person shows no response:
1. **Stop talking.** More NVC words won't help.
2. **Switch to Self-Empathy**: Internally acknowledge YOUR feelings and needs right now
3. **Silent Empathy**: Just be present. No words. Hold space.
4. **The 10-Second Rule**: After stating your request, wait at least 10 seconds of silence before speaking again
5. **Strategic Retreat**: "I can see this is hard. I'm going to give us both some space. Can we come back to this tomorrow?"

Common trap: Repeating NVC steps louder/slower when they don't work the first time. NVC is not a magic spell — if the emotional temperature is too high, switch to Active Listening only.

---

## Output Format

When processing a situation through NVC:

```
## NVC Analysis

**Situation:** [brief description]

### 1. Observation (관찰)
[Concrete, specific, camera-testable facts]

### 2. Feeling (느낌)
[Genuine emotions — not thoughts or judgments]

### 3. Need (욕구)
[Universal human need connected to the feeling]

### 4. Request (부탁)
[Specific, positive, doable, present-tense request]

### Full NVC Statement
"When [observation], I feel [feeling] because I need [need]. Would you be willing to [request]?"

### Empathy Guess (for the other person)
"Are you feeling [feeling] because you need [need]?"
```

---

## Anti-patterns

1. **Mixing observation with evaluation** — "You're always late" instead of "You arrived at 9:20 for three of our last four meetings"
2. **Using faux feelings** — "I feel rejected/abandoned/betrayed" (these are interpretations of others' actions, not feelings)
3. **Diagnosing others' feelings** — "You feel angry because YOU..." (project your story onto them)
4. **Vague requests** — "I want you to be more respectful" (not actionable or observable)
5. **Mechanical NVC** — Robotically reciting the formula without genuine empathic presence
6. **NVC as manipulation** — Using the structure to get what you want rather than to genuinely connect
7. **Skipping self-empathy** — Trying to empathize with others while internally flooded
8. **Demanding agreement** — "Do you understand?" instead of "Would you tell me what you heard?"
9. **"But"** — "I hear you, BUT..." negates everything before it. Use "AND" or pause.
10. **Responsibility deflection** — "You MAKE me feel angry" (no one makes you feel; your needs do)

---

## References

- `nvc/references/feelings-needs-list.md` — Comprehensive vocabulary of feelings and needs
- Marshall Rosenberg, *Nonviolent Communication: A Language of Life* (3rd ed., 2015)
- Marshall Rosenberg, *Speak Peace in a World of Conflict* (2005)
- Center for Nonviolent Communication: https://www.cnvc.org
- NVC Academy: https://nvcacademy.com
