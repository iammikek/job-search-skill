---
name: job-search-pipeline
description: >-
  Runs a personal employment job search from a private book the owner keeps
  outside this skill. Boot the index before any mode and obey it. Draft only.
  Use when the user asks for a weekly job search pass, to score a role, to
  triage job-board matches, to log an application, outreach, or reply, to
  draft a follow-up, to report the week's applications and scores, to set up
  a scoring rubric, or mentions the job-search pipeline.
when_to_use: >-
  Weekly pass, score a role, triage board matches, log an application or
  reply, draft a follow-up, weekly report, or set up the rubric.
  Also /job-search-pipeline.
allowed-tools: Read Grep Glob Edit Write Bash
---

# Job search pipeline

The same directory is the skill for Cursor and for Claude Code.

Personal employment search. The book (applications, scores, cash, contacts) stays in the owner's private workspace. This skill is the procedure. Do not copy the book into the skill repo.

## Boot

Read `docs/job-search/INDEX.md` in full before any mode. Obey it. Open a note only when the index line names it.

If that index is missing, run the rubric wizard in [references/rubric-wizard.md](references/rubric-wizard.md). Do not start a hunt from the blank templates.

One mode, then stop. Do not open the next mode in the same turn.

## Before a score or a write

**Review date.** Read every review date on the index. If the date is today or earlier, that measurement is not in force. Name the line and ask the owner to keep it or delete it. Do not shortlist under it. Do not invent the next phase.

**In flight.** Before editing the pipeline, the volume log, a week strategy, or a weekly pass, check those files are clean and that no other pass branch is open. If either check prints a path or a branch, name them. Do not edit those files. Stop.

End every reply with:

```markdown
Priority served: <the priority number from the index>
Left alone: <what this session did not touch>
```

## Book

| File | Purpose |
|---|---|
| `docs/job-search/INDEX.md` | Boot. Priorities, constraints, measurements. Obey this. |
| `docs/job-search/scoring-rubric.md` | C1 to C7. Open when a mode scores. |
| `docs/job-search/pipeline.md` | Living tracker and log |
| `docs/job-search/volume.md` | Seen, Screened, Applied, Rejected |
| `docs/job-search/reports/` | Weekly reports. Procedure: [references/weekly-report.md](references/weekly-report.md) |
| `docs/job-search/target-list.md` | Employers the owner wants checked. Extra boards, if any |
| `docs/case-studies/<slug>/README.md` | Company note. Pattern: [references/company-note.md](references/company-note.md) |
| [references/sources.md](references/sources.md) | Boards to check every week |

The blanks to copy once are in [references/](references/). After the book exists, read the book, not the blanks.

## Language

Use the language the owner writes in. The templates are British English. No emoji. No em dashes.

## Non-negotiables

- Draft only. The owner sends. Do not claim a message was sent unless the owner says they sent it.
- The index sets the cash floor, the stacks, the places, the sectors, and the employers to leave out. Do not import figures from memory or from another person's book.
- Do not name the pass floor in an application.
- A stated cap under the floor is a hard skip.
- Discovery is wide. Score a title before dropping it.
- Collaborations and meetups stay out of this pipeline unless the index points at their own files. Do not score them with C1 to C7.
- Do not pitch a side practice in an employment application unless the owner asks.

## Mode

| Mode | Triggers |
|---|---|
| Weekly pass | "weekly pass", "find roles", "run job search" |
| Weekly report | "weekly report", "what did we apply for", "how many jobs" |
| Feed triage | a paste of board matches, "triage these" |
| Score role | a job description or a careers URL, "score this" |
| Log outreach | "I applied", "I messaged", "no reply" |
| Follow-ups | "what is due", "follow up" |
| Rubric wizard | "set up the rubric", "rubric wizard", a missing index |

If the request names no mode, ask which one.

## Rubric wizard

Follow [references/rubric-wizard.md](references/rubric-wizard.md). Show [references/rubric-example.md](references/rubric-example.md) first. Ask one group, then wait. Write the answers only into the private book. Show the filled bands, then stop. Do not start a hunt in the same turn.

## Weekly pass

1. Boot. Run **Before a score or a write**. Read the active pipeline rows, the current volume week, the target list, and the current week strategy. Open the rubric. Open a cash or place note only when the index names it.
2. Find 5 to 10 seats: the places the index allows, the stacks it prefers, and every board in [references/sources.md](references/sources.md), plus any extra board on the target list. Check every one of those boards in the week. Do not rotate a subset. Skip seats the index excludes. Obey freshness. A seat already in process stays.
3. Score C1 to C7. Unknown pay is C1 = 3. Do not name the pass floor in a draft.
4. Shortlist inside the volume cap. Include the contract shape the index allows.
5. Draft applications inside the volume cap. Prefer the live application form. Obey the channel line.
6. Propose pipeline rows. Do not claim anything was sent. For each newly scored seat, create or update the company note in [references/company-note.md](references/company-note.md).
7. Suggest at most two follow-ups, and only on a live thread. Do not bump a cold note. Do not bump an application the silent-apply line has already paused.
8. Update the volume log when a new named seat was seen, screened, applied, or declined. Print this week and the running totals.

### Output

```markdown
### Volume since <started line>
This week (Monday YYYY-MM-DD): Seen +n, Screened +n, Applied +n, Rejected +n
Cumulative: Seen N, Screened N, Applied N, Rejected N

### Boards covered this week
<every board in references/sources.md, plus extras, marked covered or not>

### Discovery
Company | Why | Stack | Location | Sector | C1-C7 | Average | Recommend

### Drafts (inside the volume cap)

### Pipeline rows to add or update

### Follow-ups
Company | Last contact | Draft bump

Priority served: <n>
Left alone: <what this session did not touch>
```

Write `docs/job-search/weekly-pass-YYYY-MM-DD.md` when the owner wants the pass saved.

## Volume

Read [references/volume.md](references/volume.md) for the counter rules. The owner's `docs/job-search/volume.md` is the log. A rescore does not increment. A note on a live thread is not a new Seen or Applied. Rejected is only an employer decline of a seat that was applied to.

## Feed triage

The owner pastes the matches. Score them. The owner sends.

1. Take a batch. Do not skip a title before scoring.
2. Score C1 to C7. Note the board. Obey freshness and the cash lines.
3. Recommend one of: **apply** (draft the note), **skip** (after scoring), or **convert** (the company is interesting and this posting is the wrong shape). Convert only when a better live application, or an existing warm thread, exists at that company. Do not convert into a cold message.
4. Keep drafts inside the volume cap.
5. Propose pipeline rows only for seats the owner intends to act on.
6. Increment Seen, and Screened when scored, for each new named seat.

```markdown
### Triage
Source | Company | Role | C1-C7 | Average | apply / skip / convert | Why

### Drafts

### Pipeline rows
```

Do not scrape a board and do not submit an application.

## Score role

1. Take the company, title, place, pay, stack, and management load from the description. If the page hides the text, ask the owner for it. Do not invent the pay.
2. For a day rate, convert with the factor on the index before scoring C1.
3. Score C1 to C7 with one line each.
4. Verdict: `outreach`, `watch`, or `reject`, using the rubric.
5. Create or update the company note in [references/company-note.md](references/company-note.md). Do not write a sales pitch.
6. A new named seat increments Seen and Screened.

| Criterion | Score | Reasoning |
|---|---|---|
| C1 to C7 | n | |

**Average** · **Verdict** · **Next question**

## Log outreach

When the owner reports a send, an application, a reply, or silence:

1. Confirm the date, the channel, the company, and what was sent.
2. Update the pipeline status, the next action, and the date.
3. Append a log line.
4. Create or update the company note. Append the log with the summary the owner gave.
5. Increment Applied or Rejected on the current Monday row when this was a first application or an employer decline. Recompute the totals.

`Idea` · `Researching` · `Outreach drafted` · `Sent` · `Applied` · `Replied` · `In process` · `Follow-up due` · `Paused` · `Closed` · `Rejected fit`

Seven days of silence on a live thread moves the row to `Follow-up due`. After one short bump and further silence, recommend `Paused`.

## Follow-ups

1. Read the pipeline for `Applied`, `In process`, and `Follow-up due` older than 7 days, on a live thread only. Skip cold notes.
2. Draft one short bump each. No full re-pitch.
3. Cap at two or three unless the owner asks for more.
4. After a bump is recorded, set the next action. If it stays silent, recommend a pause. A paused application is not an employer decline.

## Weekly report

Follow [references/weekly-report.md](references/weekly-report.md). Read the book. Do not invent events.

## Anti-patterns

- Dropping a title at discovery, before scoring
- Filling the week with cold email or an unsolicited message the channel line has ruled out
- Turning a wrong-shaped posting into a speculative note
- Inventing a salary band
- Treating silence, a skip, or the owner walking away as an employer decline
- Counting the same seat again when it appears on a second board
- Editing the index or this skill to make the current seat easier to accept
- Writing the owner's applications, cash, or contacts into this skill repo
