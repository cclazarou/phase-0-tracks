class GuessWhat
#attr methods
attr_accessor :secret_word, :max_guesses, :guess_count, :game_is_over

#initialize method (instance variables)
#set maximum number of guesses to the number of characters in the secret word given by user 1
  def initialize(user1_input):
    @secret_word = user1_input
    @max_guesses = user1_input.to_i.length
    @guess_count = 0
    @game_is_over = false
  end

  def over_max(user2_input)
    @guess_count += 1
    if @guess_count >= @max_guesses
      @game_is_over = true
      puts "You ran out of guesses.  Haha, you lost!"
  end

  def compare_guess(user2_input)
    if user2_input == user1_input
      @game_is_over = true
      puts "Congratulations! You won!"
    end
  end


#other methods
end

#driver code handles user i/o
#guesses limited, limit related to length of word
#repeat guesses ok
#check if guess is in word, if yes show user where
#if user wins congratulate, if user loses taunt

#Class methods
#1. save secret word from user 1
#2. use length of secret word to create max # of guesses
#3. check user guess against max # of guesses, if reached max # then user loses, taunt user, game ends
#4. if user is under max #, see if guess is the secret word.  if yes, then user wins, congratulate user, game ends
#5. if guess is not secret word, see if guess is IN secret word.  if yes, give feedback to user on where the match is within the secret word ("___phrase____")
#6. if guess is not IN secret word, give user feedback on this as well ("____________".
#7 increment guess count

#Driver code
#1. create new game, display rules
#2. ask user 1 for secret word
#2. ask user 2 for guesses until limit is reached, passing guess to the Class to check and give feedback each time
