#!/bin/sh
#
# Run compression, meant to reside on the container.
#

set -e

if [ -z "$3" ]; then
  echo "Please provide three arguments, the type (screen or ebook), the input"
  echo "filename and the output filename. See the README file for details. For"
  echo "example"
  echo ""
  echo "/run.sh screen generic_pdf3.pdf generic_pdf3.compressed.pdf"
  echo ""
  exit 0;
fi

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/"$1" -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$3" "$2"
