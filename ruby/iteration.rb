#method takes block and prints status before and after running block (block prints several of its parameters)

def status
  puts "this is a before status"
  yield("chocolate","candy cane")
  puts "this is an end status"
end

status{|candy1,candy2| puts "candy1: #{candy1}, candy2: #{candy2}"}

candy_types = ["chocolate","candy cane","gummy bear"]

candy_eaters = {
  tom: "hersheys",
  jerry: "reeses",
  mary: "hot cheetos mac n' cheese"
}

candy_types.each do |type|
  puts "I love #{type}!"
end

candy_eaters.each do |person,food|
  puts "#{person} loves #{food}!"
end


