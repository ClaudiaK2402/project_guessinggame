#!/usr/bin/env bash
#File: guessinggame.sh

echo "How many files are inside this directory?"
read response

function nFiles {
  nfiles=`ls -l | wc -l`
  echo "$nfiles"
}
result=`nFiles`

if [[ $response -eq $result ]]
then
  echo "Congratulations, you guessed correctly!"
fi

while [[ $response -lt $result ]]
do
  echo "Sorry, your guess was too low. Guess again."
  read response
  if [[ $response -lt $result ]]
  then
    echo "Sorry, your guess was too low. Guess again."
    read response
  elif [[ $response -gt $result ]]
  then
    echo "Sorry, your guess was too high. Guess again."
    read response
  else
    echo "Congratulations, you guessed correctly!"
  fi
done

while [[ $response -gt $result ]]
do
  echo "Sorry, your guess was too high. Guess again."
  read response
  if [[ $response -lt $result ]]
  then
    echo "Sorry, your guess was too low. Guess again."
    read response
  elif [[ $response -gt $result ]]
  then
    echo "Sorry, your guess was too high. Guess again."
    read response
  else
    echo "Congratulations, you guessed correctly!"
  fi
done
