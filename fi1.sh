#!/bin/bash

echo "Select an operator: 1(+) 2(-) 3(*) 4(/)"
read num

case $num in
    1)
        echo "Enter 2 numbers:"
        read a
        read b
        result=$((a + b))
        echo "Result: $result"
        ;;
    2)
        echo "Enter 2 numbers:"
        read a
        read b
        result=$((a - b))
        echo "Result: $result"
        ;;
    3)
        echo "Enter 2 numbers:"
        read a
        read b
        result=$((a * b))
        echo "Result: $result"
        ;;
    4)
        echo "Enter 2 numbers:"
        read a
        read b
        if [ "$b" -eq 0 ]; then
            echo "Cannot divide by zero."
        else
            result=$((a / b))
            echo "Result: $result"
        fi
        ;;
    *)
        echo "Enter a valid operator number."
	;;
esac

