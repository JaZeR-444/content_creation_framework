# Thumbnails

## Purpose

This folder stores thumbnail designs, templates, and exported files. Thumbnails are critical for click-through rates and should be carefully designed, tested, and archived.

## What to Store Here

- Thumbnail templates (PSD, AI, Figma, Canva)
- Exported thumbnail images (PNG, JPG)
- A/B test variants
- Archive of all published thumbnails
- Thumbnail elements (text overlays, shapes, photos)
- Thumbnail design guidelines

## File Naming Convention

Include Content-ID, variant identifier, and status:
- `CCF-001_Thumbnail_Final.png`
- `CCF-001_Thumbnail_Variant-A.png`
- `CCF-001_Thumbnail_Variant-B.png`
- `CCF-001_Thumbnail_Template.psd`
- `CCF-002_Thumbnail_Draft-v1.png`

## Organization Strategy

### Option 1: Flat Structure
```
Thumbnails/
  CCF-001_Thumbnail_Final.png
  CCF-001_Thumbnail_Variant-A.png
  CCF-002_Thumbnail_Final.png
  Thumbnail-Template-Style-1.psd
```

### Option 2: By Content ID
```
Thumbnails/
  CCF-001/
    Final.png
    Variant-A.png
    Variant-B.png
    Template.psd
  CCF-002/
    Final.png
```

### Option 3: Templates Separate
```
Thumbnails/
  Templates/
    Style-1_Bold-Text.psd
    Style-2_Minimal.psd
  Published/
    CCF-001_Final.png
    CCF-002_Final.png
  AB-Tests/
    CCF-003_Variant-A.png
    CCF-003_Variant-B.png
```

## Technical Specifications

### YouTube
- **Dimensions:** 1280 x 720 pixels (16:9 ratio)
- **File size:** Under 2 MB
- **Format:** JPG, PNG, GIF (no animation)
- **Min width:** 640 pixels

### Other Platforms
- **Facebook:** 1200 x 630 (1.91:1)
- **Twitter:** 1200 x 675 (16:9)
- **LinkedIn:** 1200 x 627 (1.91:1)
- **Instagram:** 1080 x 1080 (1:1)

**Tip:** Design at 1920 x 1080 and scale down for sharper results

## Design Best Practices

### Composition
1. **Rule of thirds** - Place key elements on grid lines
2. **Focal point** - One clear focus area
3. **Breathing room** - Don't cram too much
4. **Mobile-first** - Test at small sizes

### Text
1. **3-5 words maximum** - Short and punchy
2. **Bold, thick fonts** - Readable at thumbnail size
3. **High contrast** - Text must stand out
4. **Large size** - Minimum 60-80pt for main text

### Colors
1. **High contrast** - Stand out in feed
2. **Brand colors** - Maintain consistency
3. **Complementary colors** - Use color wheel
4. **Avoid pure white/black** - Use off-white, dark gray

### Images
1. **Faces perform well** - Eye contact with camera
2. **Expressive emotions** - Surprise, excitement, curiosity
3. **Clear subject** - Not busy or cluttered
4. **Relevant to content** - Don't use clickbait

### Common Elements
- Arrows pointing to key elements
- Circles or boxes highlighting focus
- Before/after split screens
- Question marks for curiosity
- Numbers for lists
- "vs" for comparisons

## Thumbnail Templates

Build 3-5 reusable templates in your brand style:

### Template 1: Text + Face
- Large face on left
- Bold text on right
- Accent shape or arrow

### Template 2: Split Screen
- Two images side-by-side
- "VS" in center
- Contrasting colors

### Template 3: Numbered List
- Large number top-left
- Supporting image
- Descriptive text

### Template 4: Curiosity Gap
- Intriguing image
- Question text
- Mystery element

### Template 5: Minimal
- Clean background
- Single focal point
- Minimal text

Save these as PSD, AI, or Canva templates for quick reuse.

## A/B Testing Thumbnails

Test different designs to optimize CTR:

### What to Test
- Text wording
- Color schemes
- Facial expressions
- Image composition
- Font styles
- Background colors

### Testing Process
1. Create 2-3 variants
2. Upload and test (YouTube allows thumbnail updates)
3. Track CTR in 06_Analytics/AB-Tests.csv
4. Choose winner after 48-72 hours
5. Apply learnings to future thumbnails

### Track in AB-Tests.csv
```
Test-ID: AB-023
Content-ID: CCF-045
Test-Type: Thumbnail
Variant-A: Red background, question text
Variant-B: Blue background, statement text
Metric: CTR
Winner: Variant-B (8.5% vs 6.2%)
```

## Tools and Software

### Graphic Design
- **Photoshop** - Professional, powerful
- **Canva** - Easy, template-based, collaborative
- **GIMP** - Free Photoshop alternative
- **Figma** - Web-based, collaborative
- **Affinity Photo** - One-time purchase

### Thumbnail Specific
- **TubeBuddy** - Thumbnail generator
- **VidIQ** - Thumbnail templates
- **Snappa** - Quick social graphics
- **Crello** - Canva alternative

### Mobile Preview
- **TubeBuddy** browser extension
- **VidIQ** mobile preview
- Upload and check on phone

## Quality Checklist

Before exporting:
- [ ] Correct dimensions (1280 x 720 for YouTube)
- [ ] Text is legible at small size
- [ ] High contrast between elements
- [ ] Brand colors used
- [ ] Face visible and expressive (if applicable)
- [ ] No copyrighted elements
- [ ] Mobile tested
- [ ] File size under 2 MB

## Export Settings

### For YouTube (Best Quality):
- **Format:** PNG or JPG
- **Dimensions:** 1280 x 720 pixels
- **Color mode:** RGB
- **Quality:** Maximum (100% for JPG)
- **File size:** Under 2 MB

### Photoshop Export:
1. File → Export → Export As
2. Format: PNG or JPG
3. Scale to 1280 x 720
4. Quality: Maximum
5. Save

### Canva Export:
1. Download
2. File type: PNG
3. Optimize for: Screen
4. Download

## Archiving Published Thumbnails

Keep a record of all published thumbnails:
1. Export final thumbnail
2. Name with Content-ID
3. Save in Thumbnails/ folder
4. Update Content-ID-Map.csv with thumbnail file name
5. Note in 06_Analytics if A/B tested

This archive helps:
- Track what works over time
- Maintain brand consistency
- Reference for future designs
- Compare with performance data

## Integration with Other Phases

### Phase 02: Content Creation and Production
- Create thumbnails during production
- Capture thumbnail-specific shots while filming
- Plan thumbnail concept in script

### Phase 03: Optimization and Distribution
- Follow thumbnail checklist (prompt 007)
- Upload optimized thumbnail
- Adapt for other platforms

### Phase 04: Analysis and Iteration
- Track CTR for each thumbnail
- A/B test variants
- Identify patterns in high-performing thumbnails

### Phase 06: Analytics
- Log tests in AB-Tests.csv
- Track CTR in KPI-Tracker.csv
- Compare thumbnail styles

## Common Mistakes to Avoid

1. **Too much text** - Keep it short (3-5 words max)
2. **Small text** - Must be readable on mobile
3. **Low contrast** - Text must pop
4. **Misleading** - Thumbnail must match content
5. **Inconsistent branding** - Maintain visual identity
6. **Poor image quality** - Use high-res source images
7. **Not testing** - Always test variants

## Troubleshooting

**Problem:** Thumbnail not showing up on YouTube
**Solution:** Check file size (under 2 MB), verify format (JPG, PNG), ensure dimensions are correct

**Problem:** Low CTR
**Solution:** Test variants, increase contrast, simplify text, use expressive faces

**Problem:** Thumbnails look inconsistent
**Solution:** Create and use templates, stick to brand colors, develop style guide

**Problem:** Can't read text on mobile
**Solution:** Increase font size, use thicker fonts, increase contrast

## Quick Reference

| Platform | Dimensions | Max Size | Format |
|----------|-----------|----------|--------|
| YouTube | 1280 x 720 | 2 MB | JPG, PNG, GIF |
| Facebook | 1200 x 630 | - | JPG, PNG |
| Twitter | 1200 x 675 | 5 MB | JPG, PNG, GIF |
| LinkedIn | 1200 x 627 | - | JPG, PNG |
| Instagram | 1080 x 1080 | - | JPG, PNG |

---

See 03_Optimization_and_Distribution/007_Follow-a-Thumbnail-Checklist-Prompt for comprehensive thumbnail optimization guidance.

See main Assets/README.md for complete organizational guidelines.
