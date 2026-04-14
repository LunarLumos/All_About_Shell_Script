
echo -n "Enter first number :"
read num1

echo -n "Enter second number :"
read num2

echo -n "Enter third number :"
read num3


if [ $num1 -gt $num2 ]; then
    temp=$num1
    num1=$num2
    num2=$temp
fi

if [ $num2 -gt $num3 ]; then
    temp=$num2
    num2=$num3
    num3=$temp
fi

if [ $num1 -gt $num2 ]; then
    temp=$num1
    num1=$num2
    num2=$temp
fi

echo "Numbers in ascending order : $num1 $num2 $num3"
