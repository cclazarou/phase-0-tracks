# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # set default quantity
  # split the string using " " as delimiter
  # put separate strings into array
  # print the list to the console [can you use one of your other methods here?] - puts will print nicely
  # create hash that will accept items in array as keys and all values will be the default value
# output: hash

# Method to add an item to a list
# input: item name (key value) and optional quantity (optional argument)
# steps:
  #find create key in hash and assign quantity (if provided) as value
# output: key value pair confirmation

# Method to remove an item from the list
# input: item name
# steps:
  #find item name amongst keys in hash
  #delete that key value pair
# output: updated list

# Method to update the quantity of an item
# input: name of item, new quantity
# steps:
  #find item name in keys
  #assign new quantity as value
# output: updated list

# def new_quantity(glist,item,new_qty)
#   glist[item] = new_qty
#   p glist
# end

# Method to print a list and make it look pretty
# input: list (hash)
# steps:
  #iterate through hash and print each kb pair on new line
# output: pretty list

def create_list(str)
  glist_array = str.split(" ")
  glist_hash = {}
  glist_array.each { |item| glist_hash[item] = 1 }
  return glist_hash
end

def update_list(glist,item,quantity=1)
  glist[item] = quantity
end

def remove_item(glist,item)
  glist.delete(item)
end

def pretty_princess(glist)
  glist.each { |item,quantity| puts "#{item}: #{quantity}" }
end

list = create_list("apples oranges bananas")
update_list(list,"plums",8)
update_list(list, "umbrellas")
remove_item(list,"oranges")
pretty_princess(list)