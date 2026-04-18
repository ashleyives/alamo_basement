@echo off
:: Job Scraper Launcher
:: Runs job_scraper.py with Python 3.12

set PYTHON=C:\Users\ashle\AppData\Local\Programs\Python\Python312\python.exe
set SCRIPT_DIR=%~dp0

:: ── API keys (uncomment and fill in after registering) ──────────────────
:: Adzuna  (https://developer.adzuna.com/):
set ADZUNA_APP_ID=13bc35eb
set ADZUNA_APP_KEY=e7d95a94686c031ea747357362691400

:: USAJobs (https://developer.usajobs.gov/):
set USAJOBS_API_KEY=auBZ1fWLkpvtpPrNqB7KCiDLhu/unr5lFadMRi/MQpA=
set USAJOBS_EMAIL=your_email@example.com

:: Jooble  (https://jooble.org/api/about):
:: set JOOBLE_API_KEY=your_key_here

:: SerpAPI (https://serpapi.com/) — covers Indeed, BioSpace, LinkedIn, Glassdoor:
set SERPAPI_KEY=1210831b18136831290b9082654a2c8b402d00de7bed4903497e8ff2c23ff651

echo Starting job scraper...
"%PYTHON%" "%SCRIPT_DIR%job_scraper.py"

echo.
echo Output saved to: %SCRIPT_DIR%output\
echo Log file:        %SCRIPT_DIR%scraper.log
pause
