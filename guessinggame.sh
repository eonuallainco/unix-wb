#!/usr/bin/env bash

guessed=0
actual=`ls -l|wc -l`

function guess {
  read guessed

  while [[ "$guessed" -ne "$actual" ]]
  do
    if [[ "$guessed" -gt "$actual" ]]; then
      echo "Sorry, too high, please guess again"
    else
      echo "Sorry, too low, please guess again"
    fi
    read guessed
  done
  echo "Correct! Thanks for playing"
}

echo "Guess how many files are in the current directory"
guess
