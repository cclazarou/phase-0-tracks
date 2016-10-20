class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    i = 0
    while i < number
      puts "woof"
      i += 1
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    dog_equiv = human_years * 7
    puts dog_equiv
  end

  def play_dead
    puts "*plays dead*"
  end

end

ralph = Puppy.new

ralph.fetch("frisbee")
ralph.speak(3)
ralph.roll_over
ralph.dog_years(2)
ralph.play_dead

