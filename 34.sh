# Find ASCII value of each character

echo -n "Enter string: "
read str

for ((i=0; i<${#str}; i++)); do
    ch=${str:i:1}
    printf "%s = %d\n" "$ch" "'$ch"
done
