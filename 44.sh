# Check if sentence contains duplicate words

echo -n "Enter sentence: "
read str

dup=0

for w1 in $str; do
    count=0

    for w2 in $str; do
        if [ "$w1" = "$w2" ]; then
            ((count++))
        fi
    done

    if [ $count -gt 1 ]; then
        dup=1
        break
    fi
done

if [ $dup -eq 1 ]; then
    echo "Duplicate words found"
else
    echo "No duplicate words"
fi
