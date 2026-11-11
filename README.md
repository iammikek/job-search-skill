# Job search pipeline

A skill for Cursor and Claude Code. It runs a personal employment search. The agent drafts, scores, and keeps the log. The owner sends.

The procedure is public. The book is not. Applications, scores, cash figures, and contacts stay in a private workspace, in `docs/job-search/`. This repo ships the skill and the blank templates.

## One run of it

Counted on 11 November 2026, from the first weekly pass on 25 July 2026 through the week of 2 November 2026. The week of 9 November is not in these figures. A role is one named seat. The same role on a second board is not counted again. A board's own total is not a count.

| | |
|---|---|
| Weekly runs | 16 |
| Written passes | 39 |
| Roles seen | 307 |
| Roles screened | 302 |
| Applications sent | 66 |

A weekly run is one Monday-to-Sunday log. Some weeks also have a mid-week pass, which is why there are 39 written passes. Screened means the role received a score.

## Layout

```
skill/
  SKILL.md                 the procedure
  references/              blank index, rubric, pipeline, volume log, weekly report, rubric wizard, search sources
scripts/
  check-public.sh          fails if a template marker is missing, or a mailbox address is present
```

## Install

Symlink the skill so a change in this repo is live. Use one, or both. Do not copy onto the symlink: that writes back into this repo.

### Cursor

```bash
mkdir -p ~/.cursor/skills
ln -s /path/to/job-search-pipeline/skill ~/.cursor/skills/job-search-pipeline
```

### Claude Code

```bash
mkdir -p ~/.claude/skills
ln -s /path/to/job-search-pipeline/skill ~/.claude/skills/job-search-pipeline
```

In Claude Code the skill is also the `/job-search-pipeline` command. The private book path is the same for both.

In the private workspace, copy the blanks once and fill them:

```bash
mkdir -p docs/job-search/reports
cp /path/to/job-search-pipeline/skill/references/INDEX.md docs/job-search/INDEX.md
cp /path/to/job-search-pipeline/skill/references/scoring-rubric.md docs/job-search/scoring-rubric.md
cp /path/to/job-search-pipeline/skill/references/pipeline.md docs/job-search/pipeline.md
cp /path/to/job-search-pipeline/skill/references/volume.md docs/job-search/volume.md
```

Ask the agent to set up the rubric. It shows a fictional worked example first, then asks five groups (cash, work, seat, fit, pace) and writes the index and the rubric in the private book. It does not invent a figure, and it does not treat the example as the default.

## What a session does

Boot the index. Do one thing: set up the rubric, a weekly pass, a triage of pasted matches, a score, a log of something already sent, a follow-up draft, or a weekly report. Then stop.

The agent does not send email, a board form, or a message.

## Weekly automation

A weekly run is one scheduled prompt that says weekly pass, then stops. It drafts. The owner sends.

Point the schedule at the private workspace, the one with `docs/job-search/INDEX.md`. Do not point it at this repo. This repo has the procedure and the board list, and none of the book.

Run it on Monday morning, in the timezone on the index.

**Cursor.** The agent checks out the private workspace. The skill has to be visible there: the symlink in `~/.cursor/skills`, or a copy committed under `.cursor/skills/` in that private repo. A cloud run does not see a symlink that exists only on the laptop, so a cloud schedule needs the skill inside the repo it checks out.

**Claude Code.** Same prompt. A desktop scheduled task loads `~/.claude/skills`, so the symlink is enough. A cloud scheduled task does not. For a cloud run, enable the skill on the Claude account, or commit it under `.claude/skills/` in the private repo.

Use this prompt:

```text
Run the job-search weekly pass. Boot the index and obey it. Check every board in the skill's source list, plus any extra board on the target list. Score, shortlist inside the volume cap, and draft. Write docs/job-search/weekly-pass-YYYY-MM-DD.md and update the volume log. Do not send email, a board form, or a message. One mode, then stop.
```

The result is the pass: boards covered, scored seats, drafts inside the cap, at most two follow-ups on live threads, and the volume line. The owner reads it and sends what they choose.

If the pipeline, the volume log, or this week's pass file is already dirty, the run stops instead of writing over that work. If a measurement on the index is past its review date, the run stops and names the line.

## Check

```bash
sh scripts/check-public.sh
```
