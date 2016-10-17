#R0 Method that takes block, and a block that prints its parameters

def status
  puts "this is a before status"
  yield("chocolate","candy cane")
  puts "this is an end status"
end

status{|candy1,candy2| puts "candy1: #{candy1}, candy2: #{candy2}"}

#R1 Q1 declare an array and a hash

candy_types = ["chocolate","candy cane","gummy bear"]

candy_eaters = {
  tom: "hersheys",
  jerry: "reeses",
  mary: "hot cheetos mac n' cheese"
}

#R1 Q2 Iterating with .each and .map! on array and hash

candy_types.each do |type|
  puts "I love #{type}!"
end

candy_eaters.each do |person,food|
  puts "#{person} loves #{food}!"
end

puts "candy_types array before we call .map!: #{candy_types}"

candy_types.map! do |type|
  type + "!"
end

puts "candy_types array after we call .map!: #{candy_types}"

#5.3r2 Finding methods in documentation
#Make sure to comment out other examples while testing each method, or the destructive methods may affect outcome

cables = ["USB", "instrument", "HDMI", "Thunderbolt"]

instrument_players = {
  tom: "guitar",
  jerry: "drums",
  mary: "sitar"
}

#.delete_if

#...on an array
puts "cables array before .delete_if: #{cables}"
cables.delete_if do |cable_type|
  cable_type == "instrument"
end
puts "cables array after .delete_if: #{cables}"

#...on a hash
puts "instrument_players array before .delete_if: #{instrument_players}"
instrument_players.delete_if do |musician,instrument|
  instrument == "guitar"
end
puts "instrument_players array after .delete_if: #{instrument_players}"

#.select

#...on an array
cable_selection = cables.select do |cable_type|
  cable_type == "HDMI"
end

puts cable_selection

#...on a hash
musician_and_instrument = instrument_players.select do |musician,instrument|
  instrument == "guitar"
end

puts musician_and_instrument

#.keep_if

#...on an array
cable_selection = cables.keep_if do |cable_type|
  cable_type == "HDMI"
end

puts cable_selection

#...on a hash
musician_and_instrument = instrument_players.keep_if do |musician,instrument|
  instrument == "guitar"
end

puts musician_and_instrument

#.reject!

#...on an array
puts "cables array before .reject!: #{cables}"
cables.reject! do |cable_type|
  cable_type.upcase.include? "S"
end
puts "cables array after .reject!: #{cables}"

#...on a hash
puts "instrument_players hash before .reject!: #{instrument_players}"
instrument_players.reject! do |musician,instrument|
  instrument == "guitar"
end
puts "instrument_players hash after .reject!: #{instrument_players}"