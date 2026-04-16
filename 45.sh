# Find unique words in sentence

echo -n "Enter sentence: "
read str

for w1 in $str; do
    count=0

    for w2 in $str; do
        if [ "$w1" = "$w2" ]; then
            ((count++))
        fi
    done

    if [ $count -eq 1 ]; then
        echo "$w1"
    fi
done
