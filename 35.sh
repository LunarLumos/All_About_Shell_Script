# Convert string to ASCII array

echo -n "Enter string: "
read str

ascii=()

for ((i=0; i<${#str}; i++)); do
    ch=${str:i:1}
    ascii+=($(printf "%d" "'$ch"))
done

echo "ASCII array: ${ascii[@]}"
