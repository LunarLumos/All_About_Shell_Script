# Function to Validate Numeric Input
#!/bin/bash

is_number() {
    case $1 in
        ''|*[!0-9]*) echo "Not a number" ;;
        *) echo "Valid number" ;;
    esac
}

echo "Enter input"
read n

is_number "$n"
