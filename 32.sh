# Sort characters in a string

echo -n "Enter string: "
read str

sorted=$(echo "$str" | grep -o . | sort | tr -d '\n')

echo "Sorted string: $sorted"
