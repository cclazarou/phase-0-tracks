# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # set default quantity
  # split the string using " " as delimiter
  # put separate strings into array
  # print the list to the console [can you use one of your other methods here?] - puts will print nicely
  # create hash that will accept items in array as keys and all values will be the default value
# output: hash
def create_list(str)
  quantity = 1

  glist_array = str.split(" ")

  puts glist_array

  glist_hash = {}

  glist_array.each do |item|
    glist_hash[item] = quantity
  end

  p glist_hash

end

# Method to add an item to a list
# input: item name (key value) and optional quantity (optional argument)
# steps:
  #find create key in hash and assign quantity (if provided) as value
# output: key value pair confirmation

def add_to_list(glist,item,quantity=1)
  glist[item] = quantity
  p glist
end

# Method to remove an item from the list
# input: item name
# steps:
  #find item name amongst keys in hash
  #delete that key value pair
# output: updated list

def remove_item(glist,item)
  glist.delete(item)
  p glist
end

# Method to update the quantity of an item
# input: name of item, new quantity
# steps:
  #find item name in keys
  #assign new quantity as value
# output: updated list

def new_quantity(glist,item,new_qty)
  glist[item] = new_qty
  p glist
end

list = create_list("apples oranges bananas")
add_to_list(list,"plums",8)
remove_item(list,"oranges")
new_quantity(list, "apples", 100)

# Method to print a list and make it look pretty
# input: list (hash)
# steps:
  #iterate through hash and print each kb pair on new line
# output: pretty list