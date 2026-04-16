# Stack Operations Using Array Logic
#!/bin/bash

stack=()
top=-1

push() {
    read val
    top=$((top + 1))
    stack[$top]=$val
}

pop() {
    if [ $top -lt 0 ]; then
        echo "Stack Underflow"
    else
        echo "Popped: ${stack[$top]}"
        unset stack[$top]
        top=$((top - 1))
    fi
}

display() {
    if [ $top -lt 0 ]; then
        echo "Stack is empty"
    else
        for ((i=top;i>=0;i--))
        do
            echo "${stack[$i]}"
        done
    fi
}

while true
do
    echo "1. Push"
    echo "2. Pop"
    echo "3. Display"
    echo "4. Exit"

    read ch

    case $ch in
        1)
            echo "Enter value"
            push
            ;;
        2)
            pop
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
