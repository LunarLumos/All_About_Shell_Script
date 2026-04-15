echo -n "Enter sentence: "
read str

echo "$str" | tr ' ' '\n' | sort | uniq -c | sort -nr | head -1
