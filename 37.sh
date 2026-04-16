# Remove vowels from sentence

echo -n "Enter sentence: "
read str

result=$(echo "$str" | tr -d 'aeiouAEIOU')

echo "Result: $result"
