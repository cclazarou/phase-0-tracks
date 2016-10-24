require_relative 'game_spec'

describe GuessWhat do
  let(:guessgame) { GuessWhat.new("secretword") }

  it "checks if number of guesses made by user 2 is over the max" do
    expect(guessgame.over_max).to eq false
  end

  it "stores user 2 guess" do
    expect(guessgame.save_user2_guess("secret")).to eq "secret"

  it "finds out if user 2 guess is equal to secret word" do
    expect(guessgame.guess_is_equal("secret").to eq false
  end

  it "finds out if user 2 guess is inside of secret word" do
    expect(guessgame.guess_is_inside("secret")).to true




end