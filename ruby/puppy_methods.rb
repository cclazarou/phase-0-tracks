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

  def initialize
    puts "Initializing new puppy instance"
  end

end

class Cat

#initialize method
def initialize
  puts "I'm a cat and I exist"
end

#method1
def scratch
  puts "*scratches you*"
end

#method2
def eat(food)
  puts "I just ate a #{food}"
end

end

# ralph = Puppy.new

# ralph.fetch("frisbee")
# ralph.speak(3)
# ralph.roll_over
# ralph.dog_years(2)
# ralph.play_dead

# sam = Cat.new

# sam.scratch
# sam.eat("mouse")
cat_house = []

50.times do
  cat_house << Cat.new
end

cat_house.each do |certain_cat|
  certain_cat.scratch
  certain_cat.eat("alligator")
end
