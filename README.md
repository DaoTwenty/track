# Track

**Track** is a lightweight CLI tool for tracking time spent on projects. It supports starting/stopping work sessions, manual time entry, comments, reporting, and exporting data — all via a simple Bash script.

---

## Features

- Activate/deactivate projects with timestamps  
- Register projects before tracking  
- List all registered projects  
- Add comments on start/end or manual entries  
- Delete last session with confirmation  
- Manual time entry with optional start/end timestamps and comments  
- Generate CSV reports with date filters  
- Daily and weekly summaries and breakdowns  
- Support for GNU/Linux and macOS (BSD date compatibility)  
- Auto-completion support  
- Version embedded via `Makefile`  
- Easy installation via `Makefile` or Homebrew formula

---

## Installation

### From source using `Makefile`

```bash
git clone https://github.com/DaoTwenty/track.git
cd track
make install
```

This installs `track` to `~/.local/bin by default. Make sure this folder is in your `PATH`.

To uninstall:

```bash
make uninstall
```

### Via Homebrew

```bash
brew tap DaoTwenty/track
brew install track
```
