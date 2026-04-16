echo -n "Enter first string: "
read s1

echo -n "Enter second string: "
read s2

s1=$(echo "$s1" | tr -d ' ' | tr 'A-Z' 'a-z')
s2=$(echo "$s2" | tr -d ' ' | tr 'A-Z' 'a-z')

sorted1=$(echo "$s1" | grep -o . | sort | tr -d '\n')
sorted2=$(echo "$s2" | grep -o . | sort | tr -d '\n')

if [ "$sorted1" = "$sorted2" ]; then
    echo "Anagram"
else
    echo "Not Anagram"
fi
