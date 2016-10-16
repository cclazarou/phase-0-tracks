#method takes block and prints status before and after running block (block prints several of its parameters)

def status
  puts "this is a before status"
  yield("chocolate","candy cane")
  puts "this is an end status"
end

status{|candy1,candy2| puts "candy1: #{candy1}, candy2: #{candy2}"}

# candy_types = ["chocolate","candy cane","gummy bear"]





