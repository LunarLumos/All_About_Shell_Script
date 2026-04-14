
echo -n "Enter a number :"
read num

fact(){
    if [ $1 -le 1 ]; then
        echo 1
    else
        echo $(( $1 * $(fact $(( $1 - 1 )) ) )) 
    fi
}

echo "Factorial of $num is: $(fact $num)"
