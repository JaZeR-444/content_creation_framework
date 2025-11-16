#!/bin/bash
# Script Name: new-content.sh
# Purpose: Create a new content project from templates
# Usage: ./new-content.sh CCF-XXX "Content Title"
# Author: Content Creation Framework Team
# Last Updated: 2025-11-16

set -e  # Exit on error

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

# Functions
function print_info() {
    echo -e "${GREEN}✓${NC} $1"
}

function print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

function print_error() {
    echo -e "${RED}✗${NC} $1"
}

function print_header() {
    echo ""
    echo -e "${BLUE}================================${NC}"
    echo -e "${BLUE}$1${NC}"
    echo -e "${BLUE}================================${NC}"
    echo ""
}

function usage() {
    echo "Usage: $0 CONTENT_ID \"Content Title\""
    echo ""
    echo "Example: $0 CCF-042 \"How to Automate Your Workflow\""
    echo ""
    echo "Arguments:"
    echo "  CONTENT_ID    Format: CCF-XXX (e.g., CCF-001, CCF-042)"
    echo "  Content Title Descriptive title in quotes"
    exit 1
}

function validate_content_id() {
    local id="$1"
    
    if [[ ! "$id" =~ ^CCF-[0-9]{3}$ ]]; then
        print_error "Invalid Content ID format. Must be CCF-XXX (e.g., CCF-001)"
        exit 1
    fi
}

function check_id_exists() {
    local id="$1"
    local csv_file="$ROOT_DIR/00_ROOT/Content-ID-Map.csv"
    
    if [ -f "$csv_file" ]; then
        if grep -q "^$id," "$csv_file"; then
            print_error "Content ID $id already exists in Content-ID-Map.csv"
            print_warning "Use a different ID or check existing content"
            exit 1
        fi
    fi
}

function sanitize_filename() {
    local title="$1"
    # Replace spaces with hyphens, remove special characters
    echo "$title" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g' | sed 's/[^a-z0-9-]//g'
}

# Main function
function main() {
    # Check arguments
    if [ $# -ne 2 ]; then
        usage
    fi
    
    local content_id="$1"
    local content_title="$2"
    
    print_header "Creating New Content Project"
    
    # Validate inputs
    print_info "Validating inputs..."
    validate_content_id "$content_id"
    check_id_exists "$content_id"
    
    local sanitized_title=$(sanitize_filename "$content_title")
    local date_stamp=$(date +%Y-%m-%d)
    
    print_info "Content ID: $content_id"
    print_info "Title: $content_title"
    print_info "Date: $date_stamp"
    echo ""
    
    # Create directory structure
    print_header "Creating Project Files"
    
    # Create brief from template
    if [ -f "$ROOT_DIR/Templates/Content-Brief.md" ]; then
        local brief_file="$ROOT_DIR/01_Strategy_and_Planning/Briefs/${content_id}_${sanitized_title}_Brief.md"
        mkdir -p "$ROOT_DIR/01_Strategy_and_Planning/Briefs"
        
        cp "$ROOT_DIR/Templates/Content-Brief.md" "$brief_file"
        
        # Replace placeholders
        sed -i.bak "s/\[CONTENT_ID\]/$content_id/g" "$brief_file" 2>/dev/null || \
        sed -i "s/\[CONTENT_ID\]/$content_id/g" "$brief_file"
        
        sed -i.bak "s/\[TITLE\]/$content_title/g" "$brief_file" 2>/dev/null || \
        sed -i "s/\[TITLE\]/$content_title/g" "$brief_file"
        
        rm -f "${brief_file}.bak"
        
        print_info "Created content brief: $brief_file"
    else
        print_warning "Content-Brief.md template not found, skipping"
    fi
    
    # Create script from template
    if [ -f "$ROOT_DIR/Templates/Script-Template.md" ]; then
        local script_file="$ROOT_DIR/Assets/Scripts/${content_id}_${sanitized_title}_Script.md"
        mkdir -p "$ROOT_DIR/Assets/Scripts"
        
        cp "$ROOT_DIR/Templates/Script-Template.md" "$script_file"
        
        # Replace placeholders
        sed -i.bak "s/\[CONTENT_ID\]/$content_id/g" "$script_file" 2>/dev/null || \
        sed -i "s/\[CONTENT_ID\]/$content_id/g" "$script_file"
        
        sed -i.bak "s/\[TITLE\]/$content_title/g" "$script_file" 2>/dev/null || \
        sed -i "s/\[TITLE\]/$content_title/g" "$script_file"
        
        rm -f "${script_file}.bak"
        
        print_info "Created script file: $script_file"
    else
        print_warning "Script-Template.md template not found, skipping"
    fi
    
    # Add to Content-ID-Map.csv
    print_header "Updating Content Tracker"
    
    local csv_file="$ROOT_DIR/00_ROOT/Content-ID-Map.csv"
    
    if [ -f "$csv_file" ]; then
        echo "$content_id,\"$content_title\",Planning,$date_stamp" >> "$csv_file"
        print_info "Added to Content-ID-Map.csv"
    else
        print_warning "Content-ID-Map.csv not found, creating new file"
        echo "Content_ID,Title,Status,Date" > "$csv_file"
        echo "$content_id,\"$content_title\",Planning,$date_stamp" >> "$csv_file"
        print_info "Created Content-ID-Map.csv with new entry"
    fi
    
    # Summary
    print_header "Project Created Successfully!"
    
    echo "Your new content project is ready:"
    echo ""
    echo "Content ID: $content_id"
    echo "Title: $content_title"
    echo ""
    echo "Next steps:"
    echo ""
    echo "1. Complete the content brief:"
    echo "   → 01_Strategy_and_Planning/Briefs/${content_id}_${sanitized_title}_Brief.md"
    echo ""
    echo "2. Write your script:"
    echo "   → Assets/Scripts/${content_id}_${sanitized_title}_Script.md"
    echo ""
    echo "3. Follow Phase 02 for production:"
    echo "   → 02_Content_Creation_and_Production/"
    echo ""
    
    print_info "Ready to create!"
    echo ""
}

# Run main function
main "$@"
