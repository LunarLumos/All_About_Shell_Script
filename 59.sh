# Sieve Prime Numbers
#!/bin/bash

echo "Enter limit"
read n

for ((i=2;i<=n;i++))
do
    prime[$i]=1
done

for ((i=2;i*i<=n;i++))
do
    if [ ${prime[$i]} -eq 1 ]; then
        for ((j=i*i;j<=n;j+=i))
        do
            prime[$j]=0
        done
    fi
done

for ((i=2;i<=n;i++))
do
    if [ ${prime[$i]} -eq 1 ]; then
        echo -n "$i "
    fi
done

echo
