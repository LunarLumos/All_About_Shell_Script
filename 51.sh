# Multiplication Table Matrix
#!/bin/bash

echo "Enter N"
read n

for ((i=1;i<=n;i++))
do
    for ((j=1;j<=n;j++))
    do
        echo -n "$((i*j)) "
    done
    echo
done
