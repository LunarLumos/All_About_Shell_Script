# Find words starting with vowel

echo -n "Enter sentence: "
read str

for word in $str; do
    first=${word:0:1}
    if [[ $first =~ [aeiouAEIOU] ]]; then
        echo "$word"
    fi
done
