# Remove duplicate characters

echo -n "Enter string: "
read str

result=$(echo "$str" | fold -w1 | awk '!seen[$0]++' | tr -d '\n')

echo "After removing duplicates: $result"
