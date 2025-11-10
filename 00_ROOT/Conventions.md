# Content Creation Framework - Conventions

## Purpose

This document establishes consistent naming conventions, file organization standards, and best practices used throughout the Content Creation Framework System.

## File Naming Conventions

### General Rules
- Use hyphens (`-`) for multi-word file names
- Include dates in format: `YYYY-MM-DD`
- Use descriptive, action-oriented names
- Avoid special characters except hyphens and underscores

### Numbered Files
- Prompts: `001_Descriptive-Name.txt` (date optional; if used append `_YYYY-MM-DD`)
- User Inputs: `001_Descriptive-Name_Inputs.md`
- Sequential numbering starts at 001, 002, 003...
- Zero-pad always to 3 digits (supports up to 999 prompts before pattern review)

### Master Files
- Standard format (replaces mixed underscore usage): `<phase-kebab-case>-Master-File.md`
- Examples:
  - `strategy-and-planning-Master-File.md`
  - `content-creation-and-production-Master-File.md`
- Rationale: Single consistent delimiter style (kebab-case + fixed suffix)

### Special Files
- `README.md` - Appears in every major folder
- `.keep` - Holds empty asset directories in version control
- `000_START-HERE.md` - System entry point

## Folder Naming Conventions

### Phase Folders
- Format: `0X_Phase_Name/` (underscore between words for phase directories only)
- Zero-padded: 01–09 (reserve 10+ for future expansion)
- Underscore use limited to phase folders; support folders may use hyphens for readability
- Examples:
  - `01_Strategy_and_Planning/`
  - `02_Content_Creation_and_Production/`

### Support Folders
- `00_ROOT/` - Root-level utilities (renamed from prior 00_System reference)
- `Assets/` - Media and brand materials
- `Legal-and-Compliance/` - Documentation
- `Templates/` - Reusable templates
- `User-Input-Forms/` - Within each phase folder

### Asset Subfolders
- Prefer PascalCase or Hyphen-Case consistently; choose one per repo (recommended: Hyphen-Case: `brand-kit/`, `fonts/`)
- If using capitalized form retain consistency: `B-Roll/`, `Brand-Kit/`, `Fonts/`
- Always include `.keep` and `README.md`

## Content ID System

### Format: `CCF-XXX`
- Prefix: CCF (Content Creation Framework)
- Separator: Hyphen
- Number: Three digits, zero-padded (001, 002, etc.)

### Examples
- `CCF-001` - First content piece
- `CCF-045` - Forty-fifth content piece
- `CCF-999` - Nine hundred ninety-ninth piece

### Tracking
- Record all IDs in `00_ROOT/Content-ID-Map.csv`
- Never reuse IDs, even for deleted content
- Assign IDs sequentially as content is created

## UTM Parameter Conventions

### Standard Format
- Campaign: `CCF-{Content-ID}` → Use directly: `CCF-001`
- Source: lowercase platform (youtube, linkedin, website)
- Medium: lowercase format (video, article, social)
- Content: variant identifier (thumbnail-a, title-test-1)

### Examples
```
utm_campaign=CCF-001
utm_source=youtube
utm_medium=video
utm_content=thumbnail-a
```

## Document Structure Standards

### README Files
Every README.md should include:
1. Phase/Folder Overview
2. What's Inside
3. How to Use This Folder
4. Key Files/Prompts
5. Next Steps

### Master Files
Master files should include:
- Include:
  1. Table of Contents
  2. Overview/Purpose
  3. Detailed Breakdown (by prompt number)
  4. Implementation Guidance
  5. Examples
  6. Troubleshooting
- Each section headed with ascending Markdown levels; avoid skipping hierarchy

### User Input Forms
Input forms should include:
1. Prompt Reference
2. Required Inputs (clearly labeled)
3. Context Questions
4. Output Location
5. Notes/Tips

## Markdown Formatting

### Headers
- `#` Main Title (h1)
- `##` Major Section (h2)
- `###` Subsection (h3)
- `####` Detail (h4)

### Lists
- Use `-` for unordered lists
- Use `1.`, `2.`, `3.` for ordered lists
- Indent sub-items with 2 spaces

### Code Blocks
- Use triple backticks (\`\`\`) for code blocks
- Specify language when applicable

### Emphasis
- `**Bold**` for important terms
- `*Italic*` for emphasis
- `` `Inline code` `` for file names, IDs, commands

## Version Control Best Practices

### What to Commit
- All `.md`, `.txt`, and `.csv` files
- `.keep` files in empty directories
- README files
- Template files

### What to Ignore (via .gitignore)
- Actual media files in Assets/ (unless small)
- Personal API keys or credentials
- Large video/audio files
- Temporary or cache files
- `node_modules/` or similar dependencies

## Platform-Specific Standards

### YouTube
- Title: 60 characters or less
- Description: Front-load keywords in first 2 lines
- Tags: 10-15 relevant tags
- Thumbnail: 1280x720px, under 2MB

### Social Media
- Twitter/X: 280 characters
- LinkedIn: 1300 characters for posts
- Instagram: 2200 characters max
- Facebook: 63,206 characters max (but shorter is better)

## Consistency Checklist

Before finalizing any content or documentation:
- [ ] File names follow hyphen convention
- [ ] Dates are in YYYY-MM-DD format
- [ ] Content IDs are logged in Content-ID-Map.csv
- [ ] README.md exists in new folders
- [ ] Master files reference all 10 prompts
- [ ] User input forms match prompt numbering
- [ ] Headers use proper markdown hierarchy
- [ ] Links and references are accurate
- [ ] Master file naming matches `<phase-kebab-case>-Master-File.md`

## Maintenance

Review and update these conventions:
- Quarterly (every 3 months)
- When adding new major features
- After receiving team feedback
- When platform requirements change

---

Last Updated: 2025-11-09
Version: 1.1
