#!/bin/bash

# Define the directory to save the grayscale PDFs
OUTPUT_DIR="grayscale"

# Check if the output directory exists, create it if it doesn't
if [ ! -d "$OUTPUT_DIR" ]; then
    mkdir "$OUTPUT_DIR"
fi

# Loop through all PDF files in the current directory
for pdf in *.pdf; do
    # Skip directories and non-existent files
    if [ ! -f "$pdf" ]; then
        continue
    fi

    # Construct the output filename by appending "_grayscale" before the file extension
    # and prefixing the path of the output directory
    output="$OUTPUT_DIR/${pdf%.pdf}_grayscale.pdf"

    # Convert to grayscale using Ghostscript
    gs -sDEVICE=pdfwrite -sColorConversionStrategy=Gray -dProcessColorModel=/DeviceGray -dCompatibilityLevel=1.4 -dNOPAUSE -dBATCH -dQUIET -r600 -sOutputFile="$output" "$pdf"

    echo "Converted $pdf to grayscale as $output"
done

echo "Conversion complete."

