echo -n "Enter sentence: "
read str

longest=""
max=0

for word in $str; do
    len=${#word}
    
    if [ $len -gt $max ]; then
        max=$len
        longest=$word
    fi
done

echo "Longest word: $longest"
echo "Length: $max"
