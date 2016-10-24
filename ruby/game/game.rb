class GuessWhat
#attr methods
attr_accessor :secret_word, :player_guess, :max_guesses, :guess_count, :clue, :game_is_over

#initialize method (instance variables)
#set maximum number of guesses to the number of characters in the secret word given by user 1
  def initialize(user1_input, user2_input):
    @secret_word = user1_input
    @player_guess = user2_input
    @max_guesses = @secret_word.length
    @guess_count = 0
    @clue = Array.new(@secret_word.length)
    @game_is_over = false
  end

  def over_max
    @guess_count += 1
    if @guess_count >= @max_guesses
      # @game_is_over = true
      taunt
      return @game_is_over = true
    end
  end

  def guess_is_equal
    if @player_guess == @secret_word
      @game_is_over = true
      congratulate
      return true
    end
  end

  def guess_is_inside
    @secret_word.include?(@player_guess)
  end

  def format_feedback
    index = 0
    @clue.each do |i|
      @clue[index] = "_"
    end
  end

#if guess is indeed inside secret word, give feedback
  def create_feedback
    clue_counter = 0

    substring_start = @secret_word.index(@player_guess)
    arr_player_guess = @player_guess.split(//)
    while loop_counter <=   arr_player_guess.length - 1
      @clue[substring_start] = arr_player_guess[clue_counter]
      clue_counter += 1
    end
    @clue = @clue.join
    return @clue
  end

  def congratulate
  p "Congratulations, you won!"
  end

  def taunt
  p "Hahaha, you are terrible at this.  Game over, sucker!"
  end

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
