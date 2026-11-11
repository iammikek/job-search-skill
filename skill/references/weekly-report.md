# Weekly report

Read the pipeline log, the volume log, and any company notes. Do not invent an application, a call, or a salary.

Week = Monday to Sunday in the owner's timezone. Default to the current week. If the owner names a week, use that week.

## What counts

| Kind | Count as |
|---|---|
| An application the owner submitted | Applied |
| A first outreach message the owner sent, which was not an application | Sent |
| A call that was held | Intro call |
| A seat scored or rescored in the week | Scored |

Do not count a draft, a follow-up bump, a call that was booked and not held, or a skip as Applied or Sent. Do not count an intro call as Applied.

For scores, use the latest average for that seat in the week. Report the mean of all scored seats, the mean of applied and sent seats, and the mean of skips, each to one decimal place.

## Save

`docs/job-search/reports/weekly-YYYY-MM-DD.md`, where the date is the Monday. Append one pipeline log line that links the report.

## Output

```markdown
# Job search week: YYYY-MM-DD to YYYY-MM-DD

## Summary
- Applications submitted: N
- Outreach sent (not an application): N
- Intro calls held: N
- Roles scored: N
- Mean average (all scored): X.X
- Mean average (applied and sent): X.X
- Mean average (skipped): X.X
- This week, from the volume log: Seen n, Screened n, Applied n, Rejected n
- Cumulative since the started line: Seen N, Screened N, Applied N, Rejected N

## Applied
| Date | Company | Role | Average | Stated cash | Notes |

## Sent
| Date | Company | Channel | Average | Notes |

## Intro calls
| Date | Company | With | Stage | Average | Notes |

## Scored
| Date | Company | Role | Verdict | Average |

## Insights
-
```

If a section is empty, write `_None._` under the heading.
