# Step 1: Setup and Configuration

This guide walks you through the initial setup of the Content Creation Framework for your content creation workflow.

## Prerequisites

Before you begin, ensure you have:

- [ ] A GitHub account (if using the repository version)
- [ ] A text editor or Markdown editor (VS Code, Obsidian, Typora, etc.)
- [ ] A spreadsheet application (Excel, Google Sheets, LibreOffice Calc) for CSV files
- [ ] Basic familiarity with Markdown syntax
- [ ] (Optional) Git installed for version control

## Step 1.1: Repository Setup

### Clone or Download the Framework

**Option A: Clone with Git (Recommended)**
```bash
git clone https://github.com/JaZeR-444/Content_Creation_Framework.git
cd Content_Creation_Framework
```

**Option B: Download ZIP**
1. Visit the [repository](https://github.com/JaZeR-444/Content_Creation_Framework)
2. Click "Code" → "Download ZIP"
3. Extract to your desired location

### Directory Structure Verification

After cloning/downloading, verify you have these key directories:
```
Content_Creation_Framework/
├── 00_ROOT/              ✅ Central control system
├── 01_Strategy_and_Planning/
├── 02_Content_Creation_and_Production/
├── 03_Optimization_and_Distribution/
├── 04_Analysis_and_Iteration/
├── 05_Distribution_and_Promotion/
├── 06_Analytics/
├── Assets/               ✅ Media storage
├── Templates/            ✅ Quick-start templates
├── scripts/              ✅ Automation utilities
├── docs/                 ✅ Documentation (you are here!)
└── Legal-and-Compliance/
```

## Step 1.2: Environment Configuration

### Configure Your Editor

**For VS Code:**
1. Install recommended extensions:
   - Markdown All in One
   - Markdown Preview Enhanced
   - CSV to Table
   - Edit CSV

2. Open workspace settings (`.vscode/settings.json`):
```json
{
  "files.associations": {
    "*.md": "markdown"
  },
  "markdown.preview.breaks": true,
  "editor.wordWrap": "on"
}
```

**For Obsidian:**
1. Open the framework folder as a vault
2. Enable "Show line numbers" in settings
3. Install community plugins:
   - Dataview (for CSV viewing)
   - Templater (for template management)

### Set Up File Associations

Associate file types with appropriate applications:
- `.md` files → Markdown editor
- `.csv` files → Spreadsheet application
- `.txt` files → Text editor

## Step 1.3: Initialize Your Content Tracking

### Set Up Content ID System

1. **Open Content-ID-Map.csv**:
   ```bash
   open 00_ROOT/Content-ID-Map.csv
   # or
   code 00_ROOT/Content-ID-Map.csv
   ```

2. **Review the column structure**:
   - Content_ID (CCF-XXX format)
   - Title
   - Platform
   - Status
   - Publish_Date
   - Phase
   - Notes

3. **Add your first content entry**:
   ```
   CCF-001,My First Video,YouTube,Planning,2025-11-20,01,Initial test content
   ```

### Set Up UTM Tracking

1. **Open UTM-Builder.csv**:
   ```bash
   open 00_ROOT/UTM-Builder.csv
   ```

2. **Configure your base parameters**:
   - Source: Your primary platform (e.g., youtube, instagram, twitter)
   - Medium: Content type (e.g., video, post, story)
   - Campaign: Your campaign name

3. **Generate your first UTM code** for tracking analytics

## Step 1.4: Customize for Your Brand

### Update Brand Information

1. **Navigate to Phase 01**:
   ```bash
   cd 01_Strategy_and_Planning
   ```

2. **Complete the Positioning Statement** (Prompt 001):
   - Open `User-Input-Forms/001_Positioning-Statement_Inputs.md`
   - Fill in your specific information:
     - Brand name
     - Target audience
     - Problems you solve
     - Your unique promise

3. **Create Your Brand One-Pager** (Prompt 008):
   - Open `User-Input-Forms/008_Brand-One-Pager_Inputs.md`
   - Document your:
     - Brand voice
     - Tone guidelines
     - Visual style
     - Key messaging

### Set Up Templates

1. **Navigate to Templates directory**:
   ```bash
   cd Templates
   ```

2. **Review available templates**:
   - `Script-Template.md` - Video script structure
   - `Content-Brief.md` - Content planning document
   - `Platform-Metadata.csv` - Platform-specific requirements
   - `Short-Form-Checklist.md` - Quick content checklist

3. **Customize templates with your brand**:
   - Replace placeholder text
   - Adjust formats to your workflow
   - Add brand-specific elements

## Step 1.5: Configure Automation Scripts

### Explore Available Scripts

1. **Navigate to scripts directory**:
   ```bash
   cd scripts
   ```

2. **Review script documentation**:
   ```bash
   cat README.md
   ```

3. **Run the setup script** (if available):
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```

### Optional: Set Up Git Hooks

If using Git for version control, set up pre-commit hooks:

```bash
# Create pre-commit hook
cat > .git/hooks/pre-commit << 'EOF'
#!/bin/bash
# Validate markdown files before commit
find . -name "*.md" -type f -exec markdown-lint {} \;
EOF

chmod +x .git/hooks/pre-commit
```

## Step 1.6: Initial Content Planning

### Complete Phase 01 Foundation

Now that your environment is set up, establish your content foundation:

1. **Positioning Statement** (001):
   - Define who you are and what you do
   - 2-3 sentence clear positioning

2. **90-Day Plan** (002):
   - Set initial goals
   - Define success metrics
   - Plan first quarter

3. **Ideal Viewer Profile** (003):
   - Document your target audience
   - Understand their needs and pain points

4. **Content Pillars** (004):
   - Identify 3-5 core topics
   - Align with audience interests

5. **Publishing Cadence** (006):
   - Determine realistic publishing frequency
   - Plan production timeline

### Create Your First Content Calendar

Using the 6-Week Content Calendar prompt (009):

1. Open `01_Strategy_and_Planning/009_6-Week-Content-Calendar-Prompt_2025-11-06.md`
2. Use the corresponding input form
3. Generate 6 weeks of content ideas
4. Add to `00_ROOT/Content-ID-Map.csv`

## Step 1.7: Establish Your Workflow

### Define Your Process

Document your personal workflow:

1. **Content Planning**: Which days will you plan content?
2. **Production**: When will you film/create?
3. **Editing**: How much time per piece?
4. **Publishing**: What time/day works best?
5. **Analysis**: Weekly review schedule?

### Set Up Reminders

Create calendar reminders for:
- [ ] Weekly planning session (Phase 01)
- [ ] Production days (Phase 02)
- [ ] Publishing deadlines (Phase 03)
- [ ] Weekly analytics review (Phase 04)
- [ ] Monthly strategy review (Phase 01)

## Step 1.8: Backup and Version Control

### Implement 3-2-1 Backup Strategy

As documented in `02_Content_Creation_and_Production/010_Write-a-Backup-Plan-3-2-1-Prompt_2025-11-06.md`:

1. **3 Copies**: Original + 2 backups
2. **2 Different Media**: Local drive + cloud/external
3. **1 Offsite**: Cloud storage

**Recommended Setup:**
- Primary: Local machine
- Backup 1: External hard drive
- Backup 2: Cloud storage (Google Drive, Dropbox, iCloud)

### Version Control (Optional)

If using Git:

```bash
# Initialize git (if not already done)
git init

# Create .gitignore
cat > .gitignore << 'EOF'
# Large media files
Assets/**/Raw-Captures/*
Assets/**/Exports/*
*.mp4
*.mov
*.avi
*.wav
*.mp3

# System files
.DS_Store
Thumbs.db
*.swp
*.swo
*~

# Temporary files
tmp/
temp/
*.tmp
EOF

# Make initial commit
git add .
git commit -m "Initial framework setup"
```

## Step 1.9: Validation Checklist

Before proceeding to content creation, verify:

- [ ] Repository/folder is properly extracted/cloned
- [ ] Can open and edit Markdown files
- [ ] Can open and edit CSV files
- [ ] Content-ID-Map.csv is accessible
- [ ] Templates directory is accessible
- [ ] Completed at least one User Input Form
- [ ] Created first content ID (CCF-001)
- [ ] Understood file naming conventions
- [ ] Backup strategy is in place
- [ ] Calendar reminders are set

## Step 1.10: Next Steps

With setup complete, you're ready to:

1. **Proceed to Template Creation**: See [`Step_2_Template_Creation.md`](Step_2_Template_Creation.md)
2. **Start Phase 01**: Work through `01_Strategy_and_Planning/Strategy-and-Planning-Master-File.md`
3. **Explore Templates**: Review `Templates/README.md`
4. **Learn Conventions**: Study `00_ROOT/Conventions.md`

## Common Setup Issues

### Issue: Cannot Open CSV Files in Spreadsheet Application

**Solution:**
- Right-click CSV file → Open With → Select spreadsheet app
- Or set default application for .csv files in system settings

### Issue: Markdown Files Show Raw Text

**Solution:**
- Install a Markdown preview extension for your editor
- Use a dedicated Markdown editor (Obsidian, Typora, etc.)

### Issue: Large Assets Folder

**Solution:**
- Assets folder is meant for media storage
- Use .gitignore to exclude from version control
- Keep only references/links if using external storage

### Issue: Folder Structure Seems Complex

**Solution:**
- Start with just `00_ROOT/000_START-HERE.md`
- Use `00_ROOT/Folder-Index.md` as a map
- Focus on one phase at a time

## Additional Resources

- **Framework Overview**: [`Introduction.md`](Introduction.md)
- **Template Guide**: [`Step_2_Template_Creation.md`](Step_2_Template_Creation.md)
- **Review Process**: [`Step_3_Content_Review.md`](Step_3_Content_Review.md)
- **Quick Reference**: [`00_ROOT/Folder-Index.md`](../00_ROOT/Folder-Index.md)
- **Glossary**: [`GLOSSARY.md`](../GLOSSARY.md)

## Getting Help

If you encounter issues during setup:

1. Review the [FRAMEWORK_COMPLETENESS_REPORT.md](../FRAMEWORK_COMPLETENESS_REPORT.md)
2. Check [00_ROOT/Conventions.md](../00_ROOT/Conventions.md)
3. Consult phase-specific README files
4. Review the [GLOSSARY.md](../GLOSSARY.md) for terminology

---

**Last Updated**: 2025-11-16  
**Document Status**: ✅ Complete  
**Next Step**: [Step_2_Template_Creation.md](Step_2_Template_Creation.md)
