#!/bin/bash
# Author: Shuyu Fan, MSc
# Date: February 3, 2026
# Description: Clean up LaTeX auxiliary files from the main folder

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "$SCRIPT_DIR" || exit 1

echo "Cleaning LaTeX auxiliary files in: $SCRIPT_DIR"

# Remove common LaTeX auxiliary files
rm -f *.aux *.bcf *.fls *.log *.toc *.out *.bbl *.blg *.run.xml \
      *.fdb_latexmk *.synctex.gz *.synctex *.dvi *.ps \
      *.lof *.lot *.idx *.ind *.ilg *.glo *.gls *.glg \
      *.nav *.snm *.vrb *.xdv *.bcf-SAVE-ERROR

echo "Cleanup complete."
