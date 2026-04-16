# Queue Operations Using Array Logic
#!/bin/bash

queue=()
front=0
rear=-1

enqueue() {
    read val
    rear=$((rear + 1))
    queue[$rear]=$val
}

dequeue() {
    if [ $front -gt $rear ]; then
        echo "Queue Underflow"
    else
        echo "Removed: ${queue[$front]}"
        unset queue[$front]
        front=$((front + 1))
    fi
}

display() {
    if [ $front -gt $rear ]; then
        echo "Queue is empty"
    else
        for ((i=front;i<=rear;i++))
        do
            echo "${queue[$i]}"
        done
    fi
}

while true
do
    echo "1. Enqueue"
    echo "2. Dequeue"
    echo "3. Display"
    echo "4. Exit"

    read ch

    case $ch in
        1)
            echo "Enter value"
            enqueue
            ;;
        2)
            dequeue
            ;;
        3)
            display
            ;;
        4)
            exit
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac
done
