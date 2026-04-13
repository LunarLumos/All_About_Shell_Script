
echo -n "Enter a number :"
read num

org=$num
sum=0
 
while [ $num -gt 0 ]; do
    digit=$((num % 10))
    sum=$((sum + digit * digit * digit))
    num=$((num / 10))
done

if [ $sum -eq $org ]; then
    echo " The number $org is an Armstrong Number."
else
    echo " The number $org is not an Armstrong Number."
fi
