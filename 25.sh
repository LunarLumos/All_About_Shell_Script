echo -n "Enter sentence: "
read str

shortest=""
min=1000   # big number

for word in $str; do
    len=${#word}
    
    if [ $len -lt $min ]; then
        min=$len
        shortest=$word
    fi
done

echo "Shortest word: $shortest"
echo "Length: $min"
