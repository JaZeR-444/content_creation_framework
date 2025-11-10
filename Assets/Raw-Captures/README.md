# Raw-Captures

## Purpose

This folder stores unedited source footage from your recordings. These are your original camera files, audio recordings, and screen captures before any editing or processing.

## What to Store Here

- Raw video files from camera/phone
- Multiple takes of the same content
- Raw audio recordings
- Screen recordings
- Unprocessed green screen footage
- Behind-the-scenes footage
- Alternative angles
- Backup audio recordings

## File Naming Convention

Include Content-ID, description, take number, and date:
- `CCF-023_Main-Footage_Take-1_2025-11-07.mov`
- `CCF-023_Main-Footage_Take-2_2025-11-07.mov`
- `CCF-023_Audio_Backup_2025-11-07.wav`
- `CCF-023_B-Roll_Office-Setup_2025-11-07.mp4`
- `CCF-023_Screen-Recording_Demo_2025-11-07.mp4`

## Organization Strategy

### Option 1: By Content ID
```
Raw-Captures/
  CCF-001/
    Main-Footage_Take-1.mov
    Main-Footage_Take-2.mov
    Audio-Backup.wav
  CCF-002/
    Main-Footage.mov
    Screen-Recording.mp4
```

### Option 2: By Date
```
Raw-Captures/
  2025-11/
    2025-11-07_CCF-023_Main-Footage.mov
    2025-11-07_CCF-023_Audio.wav
  2025-10/
    2025-10-15_CCF-020_Main-Footage.mov
```

### Option 3: Flat with Descriptive Names
```
Raw-Captures/
  CCF-023_Main-Footage_Take-1_2025-11-07.mov
  CCF-023_Main-Footage_Take-2_2025-11-07.mov
  CCF-024_Interview_Intro_2025-11-08.mov
```

Choose the system that works best for your workflow.

## File Formats

### Video Formats
- MOV (QuickTime) - Common for cameras
- MP4 (H.264/H.265) - Compressed, smaller files
- MTS/M2TS - From camcorders
- ProRes - High quality, large files
- Original camera format - Whatever your device records

### Audio Formats
- WAV - Uncompressed, high quality
- AIFF - Mac-friendly uncompressed
- MP3 - Compressed (avoid for raw captures if possible)

### Screen Recording
- MOV or MP4 depending on software
- OBS recordings, Camtasia files, etc.

## Best Practices

### During Recording

1. **Record Multiple Takes**
   - Don't delete "bad" takes immediately
   - Keep alternatives for editing options
   - Save bloopers for potential bonus content

2. **Capture Backup Audio**
   - Always record separate audio if possible
   - Use lav mic + camera audio
   - Sync in post-production

3. **Organize Immediately**
   - Transfer from camera/phone same day
   - Rename files right away
   - Add to Content-ID-Map.csv

### After Recording

1. **Verify All Files**
   - Check that footage is viewable
   - Verify audio is present
   - Ensure nothing is corrupted
   - Review before deleting from camera

2. **Backup Immediately**
   - Follow 3-2-1 rule (see below)
   - Don't rely on single copy
   - Backup before editing

3. **Link to Content**
   - Update 00_System/Content-ID-Map.csv
   - Note which raw files correspond to which content
   - Track file locations

## Storage and Backup: The 3-2-1 Rule

Critical for raw footage:
- **3** copies of your files
- **2** different storage media types
- **1** copy stored offsite

### Example Implementation:
1. Original files on computer SSD
2. Backup to external hard drive
3. Cloud backup (Google Drive, Dropbox, Backblaze)

### Recommended Backup Flow:
```
Camera → Computer (SSD) → External Drive → Cloud Storage
               ↓
         Edit from here
```

## Storage Size Planning

Raw footage takes up significant space:
- **1080p video:** ~10-20 GB per hour
- **4K video:** ~40-80 GB per hour
- **Audio (WAV):** ~600 MB per hour
- **Screen recordings:** 5-15 GB per hour

**Plan accordingly:**
- 1 TB minimum for active projects
- 2-4 TB for growing library
- Archive old projects to external drives

## Archiving Strategy

### When to Archive
- After final video is published (30 days later)
- After content has been analyzed
- When confident no re-edits are needed

### How to Archive
1. Create archive subfolder: `Raw-Captures/Archive-2025/`
2. Move completed project files
3. Update tracking spreadsheet
4. Verify backups exist
5. Optionally delete from primary storage after 90 days

### Archive Naming
- `Archive-2025-Q1/`
- `Archive-2025-November/`
- `Archive-CCF-001-to-050/`

## When to Delete Raw Files

Only delete when:
- [ ] Final content is published
- [ ] Performance has been analyzed
- [ ] Multiple backups exist
- [ ] 90+ days have passed since publish
- [ ] You're confident no re-edit is needed
- [ ] Storage space is critically low

**Conservative approach:** Keep indefinitely if storage allows.

## Working with Raw Files

### Editing Workflow
1. **Copy, don't move** - Keep originals untouched
2. **Edit from copies** - Work on duplicates
3. **Preserve originals** - Never overwrite source files
4. **Proxies for 4K** - Create lower-res proxies for smoother editing

### File Management During Edit
- Create a project folder
- Copy relevant raw files to project
- Link to original raw files in Raw-Captures/
- Don't delete originals until project is complete

## Troubleshooting

**Problem:** Files are too large to store
**Solution:** Use proxies for editing, archive originals to external drives, upgrade cloud storage

**Problem:** Can't find specific footage
**Solution:** Implement strict naming convention, use Content-ID system, create shot logs

**Problem:** Corrupted files
**Solution:** Verify files immediately after recording, maintain multiple backups, use reliable storage media

**Problem:** Running out of space
**Solution:** Archive old projects, delete confirmed-unnecessary footage, upgrade storage

## Metadata and Shot Logs

For complex shoots, create a shot log:
```
Shot-Log_CCF-023.txt

Take 1: Main intro, stumbled on line
Take 2: Main intro, good performance ← Use this
Take 3: Main intro, lighting issue
Take 4: B-roll, office setup
```

## Quick Checklist

- [ ] Raw files renamed with Content-ID
- [ ] All files verified and playable
- [ ] 3-2-1 backup implemented
- [ ] Content-ID-Map updated
- [ ] Shot log created (if needed)
- [ ] Files organized by chosen method
- [ ] Sufficient storage space available

---

See main Assets/README.md for complete organizational guidelines and 02_Content_Creation_and_Production/ for backup plan details (Prompt 010).
