# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Framework Overview

The Content Creation Framework is a structured documentation and template system designed for content creators. It provides a complete workflow from strategy through production, optimization, distribution, and analytics. This is NOT a traditional code repository - it's a knowledge management and process framework built primarily with Markdown documentation, CSV trackers, and reusable templates.

## Core Architecture

### Sequential Phase System
The framework follows a deliberate 6-phase workflow:

1. **01_Strategy_and_Planning**: Foundation setting (positioning, audience, pillars, calendar)
2. **02_Content_Creation_and_Production**: Execution (scripts, gear, editing workflows, backups)
3. **03_Optimization_and_Distribution**: Reach (keywords, titles, thumbnails, repurposing)
4. **04_Analysis_and_Iteration**: Learning (retention analysis, A/B testing, experiments)
5. **05_Distribution_and_Promotion**: Amplification (distribution planner)
6. **06_Analytics**: Measurement (KPI tracking, A/B test logs)

Each phase contains exactly 10 numbered prompts (001-010) with corresponding user input forms.

### Central Nervous System: 00_ROOT/
The `00_ROOT/` folder (formerly `00_System/`) is mission control:
- **000_START-HERE.md**: Framework entry point
- **Content-ID-Map.csv**: Master content tracker using CCF-XXX identifiers
- **Conventions.md**: Naming standards, file organization, platform specs
- **Folder-Index.md**: Quick reference directory
- **UTM-Builder.csv**: Analytics tracking code generator

## Critical Conventions

### Content ID System
- Format: `CCF-XXX` (e.g., CCF-001, CCF-045)
- Three-digit zero-padded sequential numbering
- Tracked centrally in `00_ROOT/Content-ID-Map.csv`
- Never reuse IDs, even for deleted content
- Used across all tracking systems (UTM codes, analytics, distribution)

### File Naming Standards
**Prompts**: `00X_Descriptive-Name-Prompt_YYYY-MM-DD.md`
- Zero-padded to 3 digits (001-010 per phase)
- Kebab-case for multi-word names
- Date suffix when timestamping matters

**Master Files**: `<phase-kebab-case>-Master-File.md`
- Example: `Strategy-and-Planning-Master-File.md`
- Consolidates all 10 prompts for a phase

**User Input Forms**: `00X_Descriptive-Name_Inputs.md`
- Lives in `User-Input-Forms/` subfolder within each phase
- Matches corresponding prompt number

**Folders**: Phase folders use underscores (`01_Strategy_and_Planning`), support folders use hyphens (`Legal-and-Compliance`)

### Markdown Structure Requirements
All README.md files must include:
1. Phase/Folder Overview
2. What's Inside
3. How to Use This Folder
4. Key Files/Prompts
5. Next Steps

Master files require:
1. Table of Contents
2. Overview/Purpose
3. Detailed Breakdown (by prompt 001-010)
4. Implementation Guidance
5. Examples
6. Troubleshooting

## Working with This Framework

### When Adding New Content/Prompts
1. Determine the appropriate phase (01-06)
2. Follow sequential numbering (if adding an 11th prompt, update conventions first)
3. Create both the prompt file AND corresponding user input form
4. Update the phase's Master-File to include the new prompt
5. Update `00_ROOT/Folder-Index.md` if adding new folders
6. Follow naming conventions from `00_ROOT/Conventions.md`

### When Modifying Documentation
1. Maintain consistent Markdown heading hierarchy (no skipping levels)
2. Use `**bold**` for important terms, `*italic*` for emphasis, `` `backticks` `` for IDs/filenames
3. Cross-reference related files using relative paths
4. Update "Last Updated" dates at file bottoms when making substantive changes
5. Keep README files synchronized with folder contents

### When Creating Templates
Templates live in `/Templates/` and should:
- Include comprehensive instructions within the template itself
- Follow platform-specific standards documented in `00_ROOT/Conventions.md`
- Reference the Content ID system for tracking
- Be ready-to-use with minimal customization

## Common Workflows

### Adding a New Phase Prompt
```
1. Navigate to appropriate phase folder (e.g., 01_Strategy_and_Planning/)
2. Create: 011_New-Prompt-Name_YYYY-MM-DD.md
3. Create: User-Input-Forms/011_New-Prompt-Name_Inputs.md
4. Update: <phase>-Master-File.md with new section
5. Update: README.md to reference new prompt
6. Update: 00_ROOT/Conventions.md if changing numbering scheme
```

### Tracking New Content
```
1. Assign next sequential Content ID (CCF-XXX)
2. Add row to 00_ROOT/Content-ID-Map.csv
3. Generate UTM codes in 00_ROOT/UTM-Builder.csv
4. Update distribution tracking in 05_Distribution_and_Promotion/
5. Link analytics in 06_Analytics/ CSV files
```

### Maintaining Documentation Consistency
```
1. Check Conventions.md for current standards
2. Verify file naming matches patterns
3. Ensure all new folders have README.md
4. Cross-check Folder-Index.md reflects actual structure
5. Test all relative links in documentation
```

## Key File Locations

**Framework Entry**: `00_ROOT/000_START-HERE.md`
**Master Conventions**: `00_ROOT/Conventions.md`
**Content Tracking**: `00_ROOT/Content-ID-Map.csv`
**Terminology**: `GLOSSARY.md` (root level)
**Templates**: `/Templates/` (Script-Template.md, Content-Brief.md, etc.)
**Phase Documentation**: Each phase has README.md + Master-File.md

## Navigation Philosophy

This framework is designed for both sequential use (new creators: 01→02→03→04) and random access (experienced creators jumping to relevant phases). When helping users:
- New users: Direct to `00_ROOT/000_START-HERE.md`, then sequential phases
- Experienced users: Point to `00_ROOT/Folder-Index.md` and phase-specific README files
- Quick tasks: Leverage `/Templates/` for immediate starts

## Version Control Considerations

The `.gitignore` is configured to:
- Track all documentation (.md, .txt, .csv files)
- Exclude large media in `Assets/` subfolders
- Preserve folder structure via `.keep` files
- Protect credentials and secrets

When making changes, prioritize documentation files. Actual content assets (videos, images, audio) are intentionally excluded from version control.

## Current Status

Per FRAMEWORK_COMPLETENESS_REPORT.md:
- 100% complete against original specification
- 129+ files across 17 folders
- All 4 main phases have 10 prompts + 10 input forms + Master File
- All support systems operational (tracking CSVs, templates, legal docs)

Last comprehensive audit: 2025-11-08
Framework version: 1.4 (2025-11-09)
