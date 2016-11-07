#require gems
#create SQLite3 db
#create an inventory table
#create ruby interface that allows user to
# - add item
# - delete item
# - delete all items (confirm with user)
# - modify column values (name,type,value,owner - only)
# - view entire inventory
# - view all borrowed items (make easier to read)
# - view all items that user owns (make easier to read)
# - note: program also lets user know automatically when inventory is empty
# - ...and provides an easy to understand error message when user does not provide the right information to program
# - ...db also keeps track of # of item of each kind (per owner
#     - when adding or deleting items, program checks inventory for previous entry with same name and owner
#     - if a matching entry is found, program updates amount column instead of creating a new entry
  )

require "sqlite3"

db = SQLite3::Database.new "inventory.db"

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS inventory(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    amount INT,
    owner VARCHAR(255)
    )
SQL

db.execute(create_table)

def add_item(db,name,type,amount,owner)
  db.execute("INSERT INTO inventory(name,type,amount,owner) VALUES(?,?,?,?)",[name,type,amount,owner])
end

def delete_item(db,name_input,owner_input,amount)
  db.execute("DELETE from inventory WHERE name = name_input AND owner = owner_input")
end

def view_all_items(db)
  db.execute("SELECT * FROM inventory")
end

#INTERFACE
puts "Welcome to your music equipment inventory."

all_items = view_all_items(db)
empty_array = []

if all_items == empty_array
  puts "Your inventory is empty."
end

puts "What would you like to do? Please enter a number."
puts "[1] Add equipment"
puts "[2] Delete equipment"
puts "[3] View all equipment"
puts "[4] View borrowed equipment"
puts "[5] View equipment you own"
puts "[6] Exit"

input = gets.chomp;

if input == "1"
  puts "You selected 'Add equipment'.  Please enter the following."
  puts "Name of equipment (i.e. 'Gibson Les Paul'):"
  name = gets.chomp
  puts "Type of equipment (i.e. 'guitar':"
  type = gets.chomp
  puts "How many of this item are you adding to your inventory?"
  amount = gets.chomp
  puts "Did you borrow this/these item/s? Type y or n."
  borrow = gets.chomp

  if borrow == "n"
    owner = "me"
  else
    puts "Please enter the name of the owner of the item/s you are adding:"
    owner = gets.chomp
  end

  add_item(db,name,type,amount,owner)

elsif input == 2
  puts "You selected 'Delete equipment'.  Please enter the following."
  puts "Name of equipment you'd like to delete (i.e. 'Gibson Les Paul'):"
  name = gets.chomp
  puts "How many of this item are you deleting from your inventory?"
  amount = gets.chomp
  delete_item(db,name_input,owner_input)
elsif input == 3
elsif input == 4
elsif input == 5
else
  puts "Bye!"
end





