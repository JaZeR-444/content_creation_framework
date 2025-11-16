#!/bin/bash
# Script Name: setup.sh
# Purpose: Initial setup and validation of Content Creation Framework
# Usage: ./setup.sh
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
function print_header() {
    echo ""
    echo -e "${BLUE}================================${NC}"
    echo -e "${BLUE}$1${NC}"
    echo -e "${BLUE}================================${NC}"
    echo ""
}

function print_info() {
    echo -e "${GREEN}✓${NC} $1"
}

function print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

function print_error() {
    echo -e "${RED}✗${NC} $1"
}

function check_directory() {
    local dir="$1"
    local description="$2"
    
    if [ -d "$ROOT_DIR/$dir" ]; then
        print_info "$description exists: $dir"
        return 0
    else
        print_warning "$description missing: $dir"
        return 1
    fi
}

function check_file() {
    local file="$1"
    local description="$2"
    
    if [ -f "$ROOT_DIR/$file" ]; then
        print_info "$description exists: $file"
        return 0
    else
        print_warning "$description missing: $file"
        return 1
    fi
}

function create_directory() {
    local dir="$1"
    mkdir -p "$ROOT_DIR/$dir"
    print_info "Created directory: $dir"
}

# Main setup function
function main() {
    print_header "Content Creation Framework Setup"
    
    echo "Framework Location: $ROOT_DIR"
    echo ""
    
    # Check core directories
    print_header "Checking Core Directories"
    
    check_directory "00_ROOT" "Root system folder"
    check_directory "01_Strategy_and_Planning" "Phase 01 folder"
    check_directory "02_Content_Creation_and_Production" "Phase 02 folder"
    check_directory "03_Optimization_and_Distribution" "Phase 03 folder"
    check_directory "04_Analysis_and_Iteration" "Phase 04 folder"
    check_directory "05_Distribution_and_Promotion" "Phase 05 folder"
    check_directory "06_Analytics" "Phase 06 folder"
    
    # Check support directories
    print_header "Checking Support Directories"
    
    check_directory "Templates" "Templates folder"
    check_directory "scripts" "Scripts folder"
    check_directory "docs" "Documentation folder"
    check_directory "Assets" "Assets folder"
    check_directory "Legal-and-Compliance" "Legal folder"
    
    # Check key files
    print_header "Checking Key Files"
    
    check_file "README.md" "Main README"
    check_file "00_ROOT/000_START-HERE.md" "Start guide"
    check_file "00_ROOT/Conventions.md" "Conventions document"
    check_file "00_ROOT/Content-ID-Map.csv" "Content ID tracker"
    check_file "GLOSSARY.md" "Glossary"
    
    # Check documentation
    print_header "Checking Documentation"
    
    check_file "docs/Introduction.md" "Introduction doc"
    check_file "docs/Step_1_Setup.md" "Setup guide"
    check_file "docs/Step_2_Template_Creation.md" "Template guide"
    check_file "docs/Step_3_Content_Review.md" "Review guide"
    
    # Create missing directories if needed
    print_header "Setting Up Optional Directories"
    
    if [ ! -d "$ROOT_DIR/Assets/Scripts" ]; then
        create_directory "Assets/Scripts"
    fi
    
    if [ ! -d "$ROOT_DIR/Assets/Briefs" ]; then
        create_directory "Assets/Briefs"
    fi
    
    # Check for common tools
    print_header "Checking System Dependencies"
    
    if command -v git &> /dev/null; then
        print_info "Git is installed: $(git --version)"
    else
        print_warning "Git is not installed (optional, but recommended)"
    fi
    
    if command -v node &> /dev/null; then
        print_info "Node.js is installed: $(node --version)"
    else
        print_warning "Node.js is not installed (optional)"
    fi
    
    if command -v python3 &> /dev/null; then
        print_info "Python is installed: $(python3 --version)"
    else
        print_warning "Python is not installed (optional)"
    fi
    
    # Provide next steps
    print_header "Setup Complete!"
    
    echo "Next steps:"
    echo ""
    echo "1. Read the getting started guide:"
    echo "   → $ROOT_DIR/00_ROOT/000_START-HERE.md"
    echo ""
    echo "2. Review the documentation:"
    echo "   → $ROOT_DIR/docs/Introduction.md"
    echo ""
    echo "3. Start with Phase 01:"
    echo "   → $ROOT_DIR/01_Strategy_and_Planning/"
    echo ""
    echo "4. Explore available templates:"
    echo "   → $ROOT_DIR/Templates/"
    echo ""
    
    print_info "Framework is ready to use!"
    echo ""
}

# Run main function
main "$@"
