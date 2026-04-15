echo -n "Enter number: "
read n

len=${#n}

first=${n:0:1}
last=${n:len-1:1}
middle=${n:1:len-2}

echo "After swap: $last$middle$first"
