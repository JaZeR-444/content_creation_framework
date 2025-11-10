# 00_System - Framework Core

## Overview

The System folder contains essential tools, conventions, and reference materials used across all phases of the Content Creation Framework. This is your mission control for tracking, organizing, and navigating the entire system.

## What's Inside

### 1. **000_START-HERE.md**
Your entry point to the framework. Read this first to understand how to navigate and use the system effectively.

### 2. **Content-ID-Map.csv**
Master tracking spreadsheet for all your content pieces. Each piece of content gets a unique CCF-XXX identifier for consistent tracking across platforms and phases.

**Columns:**
- Content-ID
- Title
- Content-Type
- Primary-Pillar
- Publish-Date
- Platform
- Status
- UTM-Campaign
- Performance-Notes
- Archive-Link

### 3. **Conventions.md**
Comprehensive guide to naming conventions, file organization standards, and best practices used throughout the framework.

**Covers:**
- File naming rules
- Folder naming standards
- Content ID system
- UTM parameter conventions
- Document structure standards
- Markdown formatting
- Version control practices

### 4. **Folder-Index.md**
Quick reference directory showing the location and purpose of every file and folder in the system. Use this when you need to quickly find specific prompts or documentation.

### 5. **UTM-Builder.csv**
Template for generating UTM tracking codes for analytics. Track which links, campaigns, and content pieces drive traffic and conversions.

**Columns:**
- Content-ID
- Base-URL
- utm_source
- utm_medium
- utm_campaign
- utm_content
- Full-URL
- Notes

### 6. **README.md** (This File)
Documentation for the 00_System folder itself.

## How to Use This Folder

### For New Users:
1. Start with `000_START-HERE.md`
2. Read `Conventions.md` to understand the system's organizational logic
3. Reference `Folder-Index.md` when navigating
4. Use the CSV files as you create and publish content

### For Content Tracking:
1. Open `Content-ID-Map.csv`
2. Assign each new piece a unique CCF-XXX ID
3. Fill in all relevant columns
4. Update status and performance notes regularly
5. Link to `UTM-Builder.csv` for analytics tracking

### For Team Collaboration:
- Share `Conventions.md` with all team members
- Use `Content-ID-Map.csv` as the single source of truth
- Reference `Folder-Index.md` in documentation
- Standardize UTM parameters via `UTM-Builder.csv`

## Integration with Other Phases

### Phase 01: Strategy and Planning
- Use Content-ID-Map to track planned content from your calendar
- Reference Conventions when creating content pillars and calendars

### Phase 02: Content Creation and Production
- Assign Content-IDs when starting production
- Follow file naming conventions from Conventions.md

### Phase 03: Optimization and Distribution
- Generate UTM codes for all distribution links
- Track metadata in Content-ID-Map

### Phase 04: Analysis and Iteration
- Cross-reference Content-IDs with analytics data
- Update performance notes in Content-ID-Map
- Link to KPI-Tracker in 06_Analytics/

### Phase 05: Distribution and Promotion
- Use UTM-Builder for all promotional links
- Track distribution in Content-ID-Map

### Phase 06: Analytics
- Content-IDs connect to AB-Tests.csv and KPI-Tracker.csv
- UTM codes enable attribution analysis

## Maintenance

### Weekly:
- Update Content-ID-Map with new content
- Generate UTM codes for upcoming distributions

### Monthly:
- Review Content-ID-Map for accuracy
- Archive or remove outdated entries

### Quarterly:
- Review and update Conventions.md
- Audit Folder-Index.md for accuracy
- Assess whether system is meeting needs

## Best Practices

1. **Consistent Content IDs**: Never reuse IDs, even for deleted content
2. **Complete Records**: Fill all relevant columns in Content-ID-Map
3. **UTM Discipline**: Always use UTM codes for trackable links
4. **Follow Conventions**: Refer to Conventions.md before creating new files
5. **Keep Documentation Current**: Update this README when adding new system files

## Quick Reference

| Need to... | Use this file |
|------------|---------------|
| Get started | 000_START-HERE.md |
| Track content | Content-ID-Map.csv |
| Learn naming rules | Conventions.md |
| Find a file | Folder-Index.md |
| Create tracking links | UTM-Builder.csv |

---

**Next Steps:**
1. Read 000_START-HERE.md if you haven't already
2. Begin with Phase 01: Strategy and Planning
3. Return to this folder to track and organize as you create

---

Last Updated: 2025-11-07
