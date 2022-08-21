#!/bin/bash

heading () {
  printf "\n# $1\n"
}

title () {
  echo ""
  echo "# = = = = = = = = = = = = = = ="
  echo "# The Guess Game"
  echo "# = = = = = = = = = = = = = = ="
  echo ""
}

title

number=$(( $RANDOM % 100 + 1 ))

heading "Guess a number between 1 and 100 ..."

guess=0

while [ "0$guess" -ne $number ] ; do
        read guess
        [ "0$guess" -lt $number ] && echo "Too low. Try again:"
        [ "0$guess" -gt $number ] && echo "Too high. Try again:"
done

echo "That's right!"

exit 0
