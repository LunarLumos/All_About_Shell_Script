# Find words ending with same letter

echo -n "Enter sentence: "
read str

declare -A count

for word in $str; do
    last=${word: -1}
    count[$last]="${count[$last]} $word"
done

for key in "${!count[@]}"; do
    words=${count[$key]}
    set -- $words
    if [ $# -gt 1 ]; then
        echo "$words"
    fi
done
