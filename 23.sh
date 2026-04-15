echo -n "Enter sentence: "
read str

for word in $str; do
    rev=""
    
    for ((i=${#word}-1; i>=0; i--)); do
        rev="$rev${word:i:1}"
    done
    
    echo -n "$rev "
done

echo
