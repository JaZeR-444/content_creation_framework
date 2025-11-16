# Step 2: Template Creation and Usage

This guide explains how to effectively use the existing templates in the framework and create your own custom templates for your content workflow.

## Understanding Templates

Templates in the Content Creation Framework serve as reusable starting points that:
- Save time by eliminating repeated work
- Ensure consistency across content pieces
- Provide structure for complex tasks
- Include best practices and guidelines
- Can be customized for your specific needs

## Template Location and Structure

All templates are located in the `Templates/` directory at the root of the framework:

```
Templates/
├── README.md                   - Template documentation
├── Script-Template.md          - Video/content script structure
├── Content-Brief.md            - Content planning document
├── Platform-Metadata.csv       - Platform-specific requirements
└── Short-Form-Checklist.md     - Quick content checklist
```

## Working with Existing Templates

### 1. Script Template

**Location**: `Templates/Script-Template.md`

**Purpose**: Standardized structure for video scripts and long-form content

**How to Use**:

1. **Copy the template**:
   ```bash
   cp Templates/Script-Template.md Assets/Scripts/CCF-001_Script.md
   ```

2. **Fill in the sections**:
   - **Metadata**: Content ID, title, platform, duration
   - **Hook** (0-5 seconds): Grab attention immediately
   - **Intro** (5-30 seconds): Set expectations
   - **Main Content**: Core value delivery
   - **CTA**: Call to action
   - **Outro**: Closing and next steps

3. **Customize for your style**:
   - Adjust section lengths
   - Add/remove sections as needed
   - Include your brand voice guidelines

**Example Usage**:
```markdown
# Script: How to Use Templates Effectively
**Content ID**: CCF-001
**Platform**: YouTube
**Target Duration**: 8:00

## Hook (0-5s)
"Stop wasting hours on repetitive tasks..."

## Intro (5-30s)
"Today I'll show you the exact template system I use..."

[Continue with your content]
```

### 2. Content Brief Template

**Location**: `Templates/Content-Brief.md`

**Purpose**: Comprehensive planning document for any content piece

**How to Use**:

1. **Create a new brief** for each content piece:
   ```bash
   cp Templates/Content-Brief.md 01_Strategy_and_Planning/Briefs/CCF-001_Brief.md
   ```

2. **Complete all sections**:
   - Content ID and metadata
   - Target audience
   - Key message and objectives
   - Research and references
   - Production requirements
   - Distribution plan
   - Success metrics

3. **Review before production**:
   - Share with team members
   - Get stakeholder approval
   - Reference during creation

**Best Practice**: Create briefs during Phase 01 (Strategy) before starting production in Phase 02.

### 3. Platform Metadata CSV

**Location**: `Templates/Platform-Metadata.csv`

**Purpose**: Track platform-specific requirements (dimensions, formats, limits)

**How to Use**:

1. **Open in spreadsheet application**:
   ```bash
   open Templates/Platform-Metadata.csv
   ```

2. **Review platform requirements**:
   - Video dimensions and aspect ratios
   - File size limits
   - Duration limits
   - Recommended formats
   - Thumbnail sizes

3. **Add your platforms**:
   - Custom platforms
   - Internal requirements
   - Client specifications

**Example Content**:
| Platform | Aspect Ratio | Max Duration | Max File Size | Thumbnail Size |
|----------|--------------|--------------|---------------|----------------|
| YouTube  | 16:9        | No limit     | 256 GB        | 1280x720       |
| Instagram| 1:1, 4:5, 9:16| 60 min     | 650 MB        | N/A            |
| TikTok   | 9:16        | 10 min       | 287.6 MB      | Auto-generated |

### 4. Short-Form Checklist

**Location**: `Templates/Short-Form-Checklist.md`

**Purpose**: Quick reference for short-form content (Shorts, Reels, TikToks)

**How to Use**:

1. **Print or keep open** during production
2. **Check off items** as you complete them
3. **Customize** for your workflow

**Typical Checklist Items**:
- [ ] Hook in first 1 second
- [ ] Vertical format (9:16)
- [ ] Captions enabled
- [ ] Text overlays readable
- [ ] Trending audio (if applicable)
- [ ] Clear CTA
- [ ] Proper hashtags

## Creating Custom Templates

### Step-by-Step Template Creation Process

#### 1. Identify the Need

Create a template when you find yourself:
- Repeating the same structure multiple times
- Writing similar content with only details changing
- Onboarding team members who need structure
- Ensuring consistency across content pieces

#### 2. Document Your Best Version

1. **Create the content normally** once or twice
2. **Identify the patterns** that repeat
3. **Extract the reusable structure**
4. **Add instructions and examples**

#### 3. Build the Template

**Template Anatomy**:
```markdown
# [Template Name]

**Purpose**: [One sentence describing what this template is for]
**When to Use**: [Situations where this template applies]
**Estimated Time**: [How long it takes to complete]

---

## Instructions

[Step-by-step guide for using this template]

1. First step
2. Second step
3. Third step

---

## Template Content

[The actual template content with placeholders]

### Section 1: [Name]
[Placeholder text or instructions]

### Section 2: [Name]
[Placeholder text or instructions]

---

## Examples

[Show 1-2 examples of completed templates]

---

## Tips and Best Practices

- Tip 1
- Tip 2
- Tip 3

**Last Updated**: [Date]
```

#### 4. Test the Template

- Use it yourself for 3-5 content pieces
- Get feedback from team members
- Refine based on real usage
- Update instructions as needed

#### 5. Store Properly

**Naming Convention**: `[Purpose]-Template.md`

**Location Options**:
- `Templates/` - For general-purpose templates
- `[Phase]/Templates/` - For phase-specific templates
- `Assets/Templates/` - For asset-related templates

**Version Control**: Keep a changelog in the template:
```markdown
## Version History
- v1.2 (2025-11-16): Added metadata section
- v1.1 (2025-11-10): Clarified CTA instructions
- v1.0 (2025-11-01): Initial template
```

## Template Library Organization

### Recommended Template Collection

As you build your template library, organize by category:

```
Templates/
├── Scripts/
│   ├── Long-Form-Script-Template.md
│   ├── Short-Form-Script-Template.md
│   └── Interview-Script-Template.md
├── Planning/
│   ├── Content-Brief.md
│   ├── Weekly-Planning-Template.md
│   └── Campaign-Brief.md
├── Production/
│   ├── Pre-Production-Checklist.md
│   ├── Shot-List-Template.md
│   └── Recording-Setup-Checklist.md
├── Optimization/
│   ├── SEO-Checklist.md
│   ├── Thumbnail-Brief.md
│   └── Description-Template.md
└── Analytics/
    ├── Weekly-Report-Template.md
    ├── A-B-Test-Log-Template.md
    └── Performance-Review-Template.md
```

## Advanced Template Techniques

### 1. Variable Placeholders

Use consistent placeholder syntax:

```markdown
**Standard Format**:
[CONTENT_ID]
[TITLE]
[TARGET_AUDIENCE]
[KEY_MESSAGE]

**Example**:
Content ID: [CCF-XXX]
Title: [Your compelling title here]
Audience: [Primary viewer demographic]
```

### 2. Conditional Sections

Include optional sections with clear instructions:

```markdown
## Optional: B-Roll Planning
**Include this section if**: You're planning cinematic content or need visual variety

[B-roll planning content]

---

**Skip this section if**: You're creating talking-head content or screen recordings
```

### 3. Embedded Checklists

Make templates actionable:

```markdown
## Pre-Production Checklist
- [ ] Script finalized
- [ ] Location scouted
- [ ] Gear charged and ready
- [ ] Shot list prepared
- [ ] B-roll planned
- [ ] Backup plan in place
```

### 4. Reference Links

Link to related resources:

```markdown
## Related Resources
- Review [00_ROOT/Conventions.md](../00_ROOT/Conventions.md) for naming standards
- See [02_Content_Creation_and_Production/](../02_Content_Creation_and_Production/) for production guides
- Check [GLOSSARY.md](../GLOSSARY.md) for terminology
```

### 5. Template Automation

For frequently used templates, create shortcuts:

**Bash Script** (`scripts/new-content.sh`):
```bash
#!/bin/bash
# Create new content from template

CONTENT_ID=$1
TITLE=$2

cp Templates/Content-Brief.md "Briefs/${CONTENT_ID}_${TITLE}_Brief.md"
cp Templates/Script-Template.md "Scripts/${CONTENT_ID}_${TITLE}_Script.md"

echo "Created content files for ${CONTENT_ID}: ${TITLE}"
```

## Template Maintenance

### Regular Review Schedule

- **Weekly**: Check if new templates are needed based on repeated tasks
- **Monthly**: Review existing templates for improvements
- **Quarterly**: Archive unused templates, update popular ones

### Version Management

Track changes to templates:

1. **Major Changes** (v2.0): Complete restructure
2. **Minor Changes** (v1.1): Add/remove sections
3. **Patches** (v1.0.1): Fix typos, clarify instructions

### User Feedback Loop

Collect feedback on templates:
- What's confusing?
- What's missing?
- What sections are never used?
- What would save more time?

## Integration with Framework Phases

### Phase 01: Strategy Templates
- Content calendar templates
- Positioning statement templates
- Audience profile templates

### Phase 02: Production Templates
- Script templates (already covered)
- Gear setup checklists
- Editing workflow documents

### Phase 03: Optimization Templates
- Title generation templates
- Description templates
- Thumbnail brief templates

### Phase 04: Analysis Templates
- Performance review templates
- A/B test log templates
- Comment mining templates

## Common Template Patterns

### Pattern 1: The Checklist Template
**Best for**: Step-by-step processes, quality control

```markdown
# [Task Name] Checklist

## Pre-Phase
- [ ] Item 1
- [ ] Item 2

## Main Phase
- [ ] Item 3
- [ ] Item 4

## Post-Phase
- [ ] Item 5
- [ ] Item 6
```

### Pattern 2: The Form Template
**Best for**: Structured data collection, planning

```markdown
# [Document Type] Form

**Field 1**: _________
**Field 2**: _________
**Field 3**: _________

**Long-form Field**:
[Multi-line response area]
```

### Pattern 3: The Guide Template
**Best for**: Instructional content, workflows

```markdown
# How to [Task]

## Overview
[What this process accomplishes]

## Prerequisites
- Requirement 1
- Requirement 2

## Steps
1. Step 1
2. Step 2

## Troubleshooting
**Problem**: [Common issue]
**Solution**: [How to fix]
```

## Template Best Practices

1. **Keep It Simple**: Start minimal, add complexity as needed
2. **Include Examples**: Show, don't just tell
3. **Make It Scannable**: Use headings, lists, and formatting
4. **Version Everything**: Track changes over time
5. **Test Before Sharing**: Use it yourself first
6. **Document Context**: Explain when and why to use it
7. **Link Related Resources**: Connect to framework docs
8. **Update Regularly**: Templates should evolve with your process

## Next Steps

Now that you understand templates:

1. **Use existing templates**: Start with Script-Template.md
2. **Create your first custom template**: Document a repeated task
3. **Build your template library**: Add templates as you identify needs
4. **Proceed to review process**: See [`Step_3_Content_Review.md`](Step_3_Content_Review.md)

## Additional Resources

- **Template Examples**: Browse all templates in `Templates/`
- **Naming Conventions**: See [`00_ROOT/Conventions.md`](../00_ROOT/Conventions.md)
- **Phase-Specific Templates**: Check each phase's folder structure
- **Glossary**: Reference [`GLOSSARY.md`](../GLOSSARY.md)

---

**Last Updated**: 2025-11-16  
**Document Status**: ✅ Complete  
**Next Step**: [Step_3_Content_Review.md](Step_3_Content_Review.md)
