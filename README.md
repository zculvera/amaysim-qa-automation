# amaysim-qa-automation
This project contains test cases for testing the scenario of failed purchase of a 7-day mobile plan.

# Installation
## Dependencies
1. Python 3.7.x or higher. Download and install from this link: https://www.python.org/downloads/. Make sure to add Python.exe to path.Check if installed successfully by running `python --version`.
2. pip, which is the package installer included during Python installation. Check if installed successfully by running `pip --version`.
3. Latest version of Chromedriver. To install, run `pip install chromedriver` in terminal.
## Download Project
1. Given you have Git installed in your local machine (if not, see https://www.atlassian.com/git/tutorials/install-git for installation instructions on Mac and Windows) and have basic knowledge of Git (if not, see https://docs.github.com/en/get-started/quickstart/set-up-git), download the repository via HTTPS by running `git clone https://github.com/zculvera/amaysim-qa-automation.git` or SSH `git clone git@github.com:zculvera/amaysim-qa-automation.git`.
2. After cloning the repo successfully, run `$ pip install -r requirements.txt` to install the dependencies.
## Run Project
1. Run `runner/run_in_prod.sh test` in terminal. If in staging use `run_in_staging.sh` instead of `run_in_prod.sh`.
2. View test results which can be found in `results\log.html`.