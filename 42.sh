# Convert sentence to lowercase without using external tools

echo -n "Enter sentence: "
read str

result=""

for ((i=0; i<${#str}; i++)); do
    ch=${str:i:1}

    case "$ch" in
        [A-Z])
            ascii=$(printf "%d" "'$ch")
            ascii=$((ascii + 32))
            result="$result$(printf "\\$(printf '%03o' $ascii)")"
            ;;
        *)
            result="$result$ch"
            ;;
    esac
done

echo "Result: $result"
