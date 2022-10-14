#! /bin/bash
READ_INPUT(){
  read GUESS

  re='^[0-9]*[1-9][0-9]*$'

  if ! [[ $GUESS =~ $re ]]
  then
    echo "That is not an integer, guess again:"
    READ_INPUT
  else
    NUMBER_OF_GUESSES=$(($NUMBER_OF_GUESSES + 1))
  fi
}

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

# Look for id
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

if [[ -z $USER_ID ]]
then
  # User not found
  echo "Welcome, $USERNAME! It looks like this is your first time here."

  # Add it to database
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  # Get new id
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  
else
  # User found
  GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id='$USER_ID'")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id='$USER_ID'")

  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

SECRET_NUMBER=$((1+$RANDOM%1000))
NUMBER_OF_GUESSES=1
echo "Guess the secret number between 1 and 1000: $SECRET_NUMBER"



until [[ $GUESS = $SECRET_NUMBER ]]
do
  READ_INPUT
  
  if [[ $GUESS -gt $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
  elif [[ $GUESS -lt $SECRET_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
  fi
done

# Number guessed
echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $NUMBER_OF_GUESSES)")

# Commit 2
# Commit 3
# Commit 4