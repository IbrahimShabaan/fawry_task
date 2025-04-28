#! /usr/bin/bash

# Show usage messages
if [[ "$1" == "--help" ]]; then
    echo "Usage: $0 [-n] [-v] <search_string> <filename>"
    echo "-n  Show line numbers"
    echo "-v  Invert match (show lines that don't contain the search string)"
    echo "--help  Show this help message"
    exit 0
fi

show_line_numbers=false
invert_match=false

while getopts "nv" option; do
    case "$option" in
        n)
            show_line_numbers=true
            ;;
        v)
            invert_match=true
            ;;
        *)
            echo "Usage: $0 [-n] [-v] <search_string> <filename>"
            exit 1
            ;;
    esac
done

shift $((OPTIND - 1))

# search string and filename
if [ $# -lt 2 ]; then
    echo "Error: Missing arguments."
    echo "Usage: $0 [-n] [-v] <search_string> <filename>"
    exit 1
fi

search="$1"
file="$2"

if [ -z "$search" ]; then
    echo "Error: Missing search string."
    echo "Usage: $0 [-n] [-v] <search_string> <filename>"
    exit 1
fi

# if the file foundd
if [ ! -f "$file" ]; then
    echo "Error: File '$file' not found."
    echo "Usage: $0 [-n] [-v] <search_string> <filename>"
    exit 1
fi

# search string contains '.txt' filename
if [[ "$search" == *.txt ]]; then
    file="$search"
    search=""  
    echo "Searching in file: $file"
else
    
    if $invert_match; then
        echo "Searching for lines that do not contain '$search' in file: $file"
    else
        echo "Searching for '$search' in file: $file"
    fi
fi

options="-i"  
if $invert_match; then
    options="$options -v"  
fi
if $show_line_numbers; then
    options="$options -n"  
fi

result=$(grep $options "$search" "$file")

if [ -z "$result" ]; then
    echo "No matches found for '$search' in $file"
else
    echo "$result"
fi