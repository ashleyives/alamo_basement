# Job Scraper — Ashley Ives

Runs every Friday at 8 AM. Outputs a colour-coded Excel file in `output/`.

## Quick start

### 1. Get free API keys (10 minutes total)

| Key | Where to register | What it unlocks |
|-----|-------------------|-----------------|
| **Adzuna** (most important) | https://developer.adzuna.com/ — click "Register" | US, UK, CA, AU, NZ jobs (250 requests/day free) |
| **USAJobs** | https://developer.usajobs.gov/ — fill contact form | All federal government positions |
| **Jooble** | https://jooble.org/api/about — "Get API key" | Global job aggregator |

### 2. Configure your keys

Open `run_scraper.bat` and uncomment + fill in:

```bat
set ADZUNA_APP_ID=your_id_here
set ADZUNA_APP_KEY=your_key_here
set USAJOBS_API_KEY=your_key_here
set USAJOBS_EMAIL=your_email@example.com
set JOOBLE_API_KEY=your_key_here
```

Or set them as Windows environment variables (Control Panel → System → Environment Variables).

### 3. Run manually

Double-click `run_scraper.bat`

### 4. Automatic weekly run

Already scheduled: **every Friday at 8:00 AM** via Windows Task Scheduler.

To verify: open Task Scheduler → look for "WeeklyJobScraper"

---

## Output spreadsheet columns

| Column | Description |
|--------|-------------|
| Source | Which job board or API |
| Job Title | Position title |
| Company | Employer name |
| Salary | Salary if listed |
| Location | City, State / Country |
| Work Type | Remote / Hybrid / Onsite |
| **Location Tier** | **A** = Washington State (priority) · **B** = other US / English-speaking |
| Application Link | Direct link to apply (click to open) |
| Documents Required | What employers typically ask for |
| Date Scraped | When this run found the listing |

### Row colours
- 🟩 **Green** = Tier A (Washington State)
- 🟨 **Yellow** = Tier B (other US / UK / CA / AU / NZ)
- 🟧 **Orange** = Manual review links (click to search the board yourself)

---

## Manual review job boards (orange rows)

The spreadsheet includes one-click search links for boards that require
a browser (Indeed, LinkedIn, Nature Careers, Science Careers, BioSpace,
Glassdoor, ASMS, PNNL, Fred Hutch, Allen Institute, UW Medicine).

---

## Files

```
job_search/
├── job_scraper.py    — main scraper
├── run_scraper.bat   — launcher (edit to add API keys)
├── README.md         — this file
├── scraper.log       — run log
└── output/
    └── jobs_YYYY-MM-DD.xlsx   — weekly output
```
