# Generate Number Series (Custom Formula)
#!/bin/bash

echo "Enter N"
read n

echo "Series:"

for ((i=1;i<=n;i++))
do
    echo -n "$((i*i + i)) "
done

echo
