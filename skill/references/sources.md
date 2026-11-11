# Search sources

Check every secondary board each week. Do not rotate a subset. A board total is not a Seen count.

Filter to the place and the stack on the index. Score before applying. Obey freshness. A seat already in process stays. Unknown pay stays C1 = 3. Do not name the pass floor.

A careers page that is a challenge, or empty because the list is loaded by script, is not an empty board.

## Primary

Company careers pages the owner keeps in the private target list. Prefer the employer's own application form.

When the HTML is empty, use the board's public list:

| Board | List |
|---|---|
| Workable | `https://apply.workable.com/api/v1/widget/accounts/{slug}` |
| BambooHR | `{host}/careers/list`, then `{host}/careers/{id}/detail` |
| Greenhouse | `https://boards-api.greenhouse.io/v1/boards/{board}/jobs` |

Dedupe Greenhouse twins by `internal_job_id`. A Phenom page that returns a challenge is not an empty board. Do not page a global list of hundreds. Filter to the place on the index first.

## Secondary boards

Check all of these every week.

- **Haystack** ([web.haystackapp.io](https://web.haystackapp.io/)). UK tech matching. Ask the band when pay says competitive.
- **HubMub** ([hubmub.com](https://www.hubmub.com)). Score the listing. Do not pay to apply. Skip the send unless a first-party application exists.
- **Otta** / Welcome to the Jungle ([otta.com](https://otta.com), [app.welcometothejungle.com](https://app.welcometothejungle.com)). Product companies. Stack and pay are often on the card.
- **LaraJobs** ([larajobs.com](https://larajobs.com)) and **UK Laravel Jobs** ([uklaraveljobs.com](https://www.uklaraveljobs.com)). Laravel. Keep employers who can hire in the owner's country. Skip a timezone the owner cannot work.
- **Symfony Jobs** ([jobs.symfony.com](https://jobs.symfony.com)). Symfony and PHP.
- **VueJobs** ([vuejobs.com](https://vuejobs.com)). Vue and front-end, where the description names a real stack.
- **LinkedIn Jobs** and **Jack & Jill**. Engineering titles. Reply only on a thread that already exists.
- **Workable, Ashby, Greenhouse, Lever** public search. First-party applications. Prefer these over an agency mirror of the same seat.
- **Civil Service Jobs** ([civilservicejobs.service.gov.uk](https://www.civilservicejobs.service.gov.uk)). Public digital, engineering, and data.
- **CWJobs** and **Reed**. Broad volume. Ask the band. Agency noise is high.
- **ByteHire** ([bytehire.io/open-roles](https://bytehire.io/open-roles)). Permanent and contract. Ask the employer name, the cash, and whether the seat is hands-on. Obey freshness.
- **Digital Waffle** ([digitalwaffle.co/jobs](https://www.digitalwaffle.co/jobs)). The jobs HTML is empty until cookies. Skim with POST `https://www.digitalwaffle.co/_sf/api/v1/jobs/search.json` and body `{"job_search":{"query":"","location":{},"filters":{},"commute_filter":{},"offset":0,"jobs_per_page":100}}`. Dedupe by title.
- **Guardian Jobs.** Closed. [An update on Guardian Jobs](https://www.theguardian.com/help/insideguardian/2026/sep/02/an-update-on-guardian-jobs). Do not skim `jobs.theguardian.com`.
- **CharityJob** ([charityjob.co.uk](https://www.charityjob.co.uk)). Filter to IT, digital, or engineering.
- **Tech for Good jobs** ([techforgoodjobs.com](https://techforgoodjobs.com)). The old `tech4goodjobs.co.uk` host does not resolve. If the board itself is down, skip it for that week and try the next.
- **Remote OK** and **We Work Remotely**. Skip a seat limited to a country the owner cannot work, after scoring.
- **Himalayas** ([himalayas.app/jobs](https://himalayas.app/jobs)). Public JSON, no auth. `GET https://himalayas.app/jobs/api/search?q=php&country=GB&sort=recent`. Repeat for the other stacks on the index. Send a normal user agent. Skip a country the owner cannot work. Dedupe the same seat on LinkedIn, Jobgether, or Greenhouse. Docs: [Remote Jobs API](https://himalayas.app/docs/remote-jobs-api).

## Background profiles

Leave these live. They are not the weekly hunt.

- **Hired** ([hired.com](https://hired.com))
- **Cord** ([cord.co](https://cord.co))

## Lower priority

Score them if opened. Do not make them the week's hunt.

Indeed, Glassdoor, Adzuna, Totaljobs, Jobsite, CV-Library, Wellfound.

## Adding a source

A board the owner wants on top of this list goes in the private target list. The weekly pass checks this file and those extras. An employer to leave out stays on the index, not here.
