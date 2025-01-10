#!/bin/bash

secret_number=$(( RANDOM % 1000 + 1 ))

echo "Guess the secret number between 1 and 1000:"
read user_guess
