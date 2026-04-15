echo -n "Enter string: "
read str

clean=$(echo "$str" | tr -d ' ' | tr 'A-Z' 'a-z')
rev=$(echo "$clean" | rev)

if [ "$clean" = "$rev" ]; then
    echo "Palindrome"
else
    echo "Not Palindrome"
fi
