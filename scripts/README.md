# Scripts and Automation Tools

This directory contains automation scripts and utilities to streamline your content creation workflow.

## Available Scripts

### Setup and Configuration

#### `setup.sh`
**Purpose**: Initial framework setup and configuration  
**Usage**: `./setup.sh`  
**What it does**:
- Validates directory structure
- Creates necessary folders if missing
- Checks for required dependencies
- Sets up initial configuration files
- Provides setup status report

**Run this first** when setting up the framework on a new machine.

### Content Management

#### `new-content.sh`
**Purpose**: Create a new content project from templates  
**Usage**: `./new-content.sh CCF-XXX "Content Title"`  
**What it does**:
- Generates Content ID entry
- Creates content brief from template
- Sets up script file
- Initializes tracking in Content-ID-Map.csv
- Creates project folder structure

**Example**:
```bash
./new-content.sh CCF-042 "How to Automate Your Workflow"
```

#### `validate-content.sh`
**Purpose**: Validate content files before publishing  
**Usage**: `./validate-content.sh CCF-XXX`  
**What it does**:
- Checks metadata completeness
- Verifies file naming conventions
- Validates markdown syntax
- Ensures required sections exist
- Reports missing elements

### Utilities

#### `update-content-map.sh`
**Purpose**: Update Content-ID-Map.csv with new entries  
**Usage**: `./update-content-map.sh`  
**What it does**:
- Scans for new content files
- Generates next available Content ID
- Updates CSV with new entries
- Maintains sequential numbering

#### `backup-framework.sh`
**Purpose**: Backup framework and content files  
**Usage**: `./backup-framework.sh [destination]`  
**What it does**:
- Creates timestamped backup
- Excludes large media files (respects .gitignore)
- Compresses to .tar.gz or .zip
- Optionally copies to external location

**Example**:
```bash
./backup-framework.sh /Volumes/Backup
```

#### `check-links.sh`
**Purpose**: Validate internal links in documentation  
**Usage**: `./check-links.sh`  
**What it does**:
- Scans all markdown files
- Checks internal links
- Reports broken references
- Suggests corrections

### Analytics and Reporting

#### `generate-report.sh`
**Purpose**: Generate content performance report  
**Usage**: `./generate-report.sh [month]`  
**What it does**:
- Aggregates data from KPI-Tracker.csv
- Generates summary statistics
- Creates markdown report
- Highlights top/bottom performers

**Example**:
```bash
./generate-report.sh 2025-11
```

## Script Dependencies

### Required Tools

Most scripts require these common Unix tools (typically pre-installed on macOS/Linux):
- `bash` (version 4.0+)
- `awk`
- `sed`
- `grep`
- `find`

### Optional Tools

Some scripts have optional dependencies for enhanced functionality:
- `jq` - JSON processing (for API scripts)
- `csvkit` - CSV manipulation
- `pandoc` - Document conversion
- `markdown-link-check` - Link validation

**Install optional tools**:
```bash
# macOS with Homebrew
brew install jq csvkit pandoc

# Ubuntu/Debian
apt-get install jq csvkit pandoc

# Arch Linux
pacman -S jq csvkit pandoc
```

## Usage Guidelines

### Making Scripts Executable

Before first use, make scripts executable:
```bash
chmod +x scripts/*.sh
```

Or individually:
```bash
chmod +x scripts/setup.sh
chmod +x scripts/new-content.sh
```

### Running Scripts

**From scripts directory**:
```bash
cd scripts
./setup.sh
```

**From repository root**:
```bash
./scripts/setup.sh
```

**With full path**:
```bash
/path/to/Content_Creation_Framework/scripts/setup.sh
```

### Script Configuration

Some scripts use configuration files in `scripts/config/`:
- `settings.conf` - General settings
- `paths.conf` - Custom path definitions
- `platform-specs.conf` - Platform-specific parameters

**Edit configuration**:
```bash
nano scripts/config/settings.conf
```

## Creating Custom Scripts

### Script Template

Use this template for new automation scripts:

```bash
#!/bin/bash
# Script Name: my-script.sh
# Purpose: [Brief description]
# Usage: ./my-script.sh [arguments]
# Author: [Your name]
# Last Updated: [Date]

set -e  # Exit on error
set -u  # Exit on undefined variable

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Configuration
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

# Functions
function print_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

function print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

function print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Main script logic
function main() {
    print_info "Starting script..."
    
    # Your code here
    
    print_info "Script completed successfully!"
}

# Run main function
main "$@"
```

### Best Practices

1. **Error Handling**: Use `set -e` to exit on errors
2. **Documentation**: Include clear comments and usage examples
3. **Validation**: Check inputs before processing
4. **Output**: Use colored output for clarity
5. **Logging**: Log important operations
6. **Idempotency**: Scripts should be safe to run multiple times
7. **Testing**: Test with various inputs and edge cases

### Adding Your Script

1. Create the script file in `scripts/`
2. Make it executable: `chmod +x scripts/your-script.sh`
3. Test thoroughly with sample data
4. Document in this README
5. Add to version control

## Platform-Specific Scripts

### macOS

Scripts in `scripts/macos/`:
- Automator workflows
- Apple Script integrations
- iCloud sync utilities

### Windows

Scripts in `scripts/windows/`:
- PowerShell scripts (.ps1)
- Batch files (.bat)
- Windows-specific utilities

### Linux

Scripts in `scripts/linux/`:
- Systemd services
- Cron job templates
- Linux-specific utilities

## Automation Examples

### Automated Daily Backup

**cron job** (runs daily at 2 AM):
```bash
0 2 * * * /path/to/Content_Creation_Framework/scripts/backup-framework.sh /backup/location
```

### Weekly Report Generation

**cron job** (runs every Monday at 9 AM):
```bash
0 9 * * 1 /path/to/Content_Creation_Framework/scripts/generate-report.sh
```

### New Content Shortcut

**Bash alias** (add to `.bashrc` or `.zshrc`):
```bash
alias newcontent='cd ~/Content_Creation_Framework && ./scripts/new-content.sh'
```

Usage: `newcontent CCF-042 "My New Video"`

## Troubleshooting

### Script Won't Run

**Problem**: Permission denied  
**Solution**: Make script executable
```bash
chmod +x scripts/script-name.sh
```

**Problem**: Command not found  
**Solution**: Run from correct directory or use full path
```bash
cd /path/to/Content_Creation_Framework
./scripts/script-name.sh
```

### Dependency Issues

**Problem**: Script requires tool not installed  
**Solution**: Install missing dependency
```bash
# Check what's missing
which jq csvkit pandoc

# Install as needed (macOS)
brew install missing-tool
```

### Path Issues

**Problem**: Script can't find files  
**Solution**: Check script is run from correct location or update `ROOT_DIR` variable

### Line Ending Issues (Windows)

**Problem**: `/bin/bash^M: bad interpreter`  
**Solution**: Convert line endings to Unix format
```bash
dos2unix scripts/*.sh
# or
sed -i 's/\r$//' scripts/*.sh
```

## Contributing Scripts

When contributing automation scripts:

1. Follow the script template above
2. Include comprehensive documentation
3. Test on multiple platforms if possible
4. Handle errors gracefully
5. Provide example usage
6. Update this README with your script

## Security Considerations

- **Never hardcode credentials** in scripts
- **Use environment variables** for sensitive data
- **Validate all inputs** to prevent injection
- **Be careful with file operations** (backups, deletions)
- **Review scripts from others** before running

## Additional Resources

- **Framework Conventions**: [`00_ROOT/Conventions.md`](../00_ROOT/Conventions.md)
- **Setup Guide**: [`docs/Step_1_Setup.md`](../docs/Step_1_Setup.md)
- **Content Management**: [`00_ROOT/Content-ID-Map.csv`](../00_ROOT/Content-ID-Map.csv)

## Script Index

| Script | Purpose | Phase | Status |
|--------|---------|-------|--------|
| setup.sh | Initial framework setup | Setup | ✅ Available |
| new-content.sh | Create new content project | 01-02 | ✅ Available |
| validate-content.sh | Validate content files | 02-03 | 🚧 Coming Soon |
| update-content-map.sh | Update Content ID tracking | All | 🚧 Coming Soon |
| backup-framework.sh | Backup framework files | Maintenance | 🚧 Coming Soon |
| check-links.sh | Validate documentation links | Maintenance | 🚧 Coming Soon |
| generate-report.sh | Generate analytics report | 04-06 | 🚧 Coming Soon |

---

**Last Updated**: 2025-11-16  
**Status**: Foundation scripts available, utilities coming soon
