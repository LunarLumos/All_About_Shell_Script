# Find middle word in sentence

echo -n "Enter sentence: "
read str

set -- $str
count=$#

mid=$(( (count + 1) / 2 ))

i=1
for word in "$@"; do
    if [ $i -eq $mid ]; then
        echo "Middle word: $word"
        break
    fi
    ((i++))
done
