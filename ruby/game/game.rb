#driver code handles user i/o
#guesses limited, limit related to length of word
#repeat guesses ok
#check if guess is in word, if yes show user where
#if user wins congratulate, if user loses taunt

#Class methods
#1. create a secret word for the user to guess
#2. use length to create max # of guesses
#3. check user guess against max # of guesses, if reached max # then user loses, taunt user, game ends
#4. if user is under max #, see if guess is the secret word.  if yes, then user wins, congratulate user, game ends
#5. if guess is not secret word, see if guess is IN secret word.  if yes, give feedback to user on where the match is within the secret word ("___phrase____")
#6. if guess is not IN secret word, give user feedback on this as well ("____________".
#7 increment guess count

#Driver code
#1. create new game, display rules
#2. ask user for guess until limit is reached, passing guess to the Class to check and give feedback
