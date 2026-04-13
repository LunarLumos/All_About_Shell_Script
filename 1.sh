
#!/usr/bin/env bash

echo "[1] Celcious to Farenheit"
echo "[2] Farenheit to Celcious"
echo "[3] Exit"

echo -n "Enter your choice : "
read choice

if [ "$choice" -eq 1 ]; then
    echo -n "Enter the Temperature in Celcious :"
    read c
    farenheit=$(( (c * 9/5)+32))
    echo "Temperature in Farenheit is $farenheit"

elif [ "$choice" -eq 2 ]; then
    echo -n "Enter the Temperature in Farenheit :"
    read f
    celcious=$(( (f-32)*5/9))
    echo "Temperature in Celcious is $celcious"
elif [ "$choice" -eq 3 ]; then
    echo "Exiting the program"
else
    echo "Invalid choice"
fi



