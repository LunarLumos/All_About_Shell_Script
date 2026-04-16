# Replace vowels with special character

echo -n "Enter string: "
read str

echo -n "Enter replacement character: "
read ch

result=$(echo "$str" | sed 's/[aeiouAEIOU]/'"$ch"'/g')

echo "Result: $result"
