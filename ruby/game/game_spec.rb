require_relative 'game_spec'

describe GuessWhat do
  let(:guessgame) { GuessWhat.new("secretword","secret") }

  it "checks if number of guesses made by user 2 is over the max" do
    expect(guessgame.over_max).to eq false
  end

  it "stores user 1 input as secret word" do
    expect(guessgame.secret_word).to eq "secretword"
  end

  it "stores user 2 input as guess" do
    expect(guessgame.player_guess).to eq "secret"
  end

  it "finds out if user 2 guess is equal to secret word" do
    expect(guessgame.guess_is_equal).to eq false
  end

  it "finds out if user 2 guess is inside of secret word" do
    expect(guessgame.guess_is_inside).to true
  end

  it "prepares feedback for each guess made by player 2" do
    expect(guessgame.format_feedback).to "__________"
  end

  it "creates feedback if user 2 guessed a substring of the secret word" do
    expect(guessgame.create_feedback).to "secret----"
  end

  it "congratulates user 2 if their guess equals the secret word" do
    expect(guessgame.congratulate).to "Congratulations, you won!"
  end

  it "taunts user 2 if their guess does not equal the secret word OR the user has surpassed their guess max" do
    expect(guessgame.taunt).to "Hahaha, you are terrible at this.  Game over, sucker!"
  end

end