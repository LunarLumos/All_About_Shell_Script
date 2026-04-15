echo -n "Enter sentence: "
read str

echo "$str" | tr ' ' '\n' | sort | uniq -c | sort -n | head -1
