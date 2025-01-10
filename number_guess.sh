#!/bin/bash

# This script runs a number guessing game


secret_number=$(( RANDOM % 1000 + 1 ))

echo "Guess the secret number between 1 and 1000:"
attempts=0
while true; do
    read user_guess
    ((attempts++))

    if [[ $user_guess -eq $secret_number ]]; then
        echo "You guessed it in $attempts tries. The secret number was $secret_number. Nice job!"
        break
    elif [[ $user_guess -gt $secret_number ]]; then
        echo "It's lower than that, guess again:"
    else
        echo "It's higher than that, guess again:"
    fi
done
