echo -n "Enter a string: "
read str

v=0
c=0
d=0
s=0

for ((i=0; i<${#str}; i++)); do
    ch=${str:i:1}

    if [[ $ch =~ [aeiouAEIOU] ]]; then
        ((v++))
    elif [[ $ch =~ [a-zA-Z] ]]; then
        ((c++))
    elif [[ $ch =~ [0-9] ]]; then
        ((d++))
    elif [[ $ch == " " ]]; then
        ((s++))
    fi
done

echo "Vowels: $v"
echo "Consonants: $c"
echo "Digits: $d"
echo "Spaces: $s"
