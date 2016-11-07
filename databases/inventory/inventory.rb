#require gems
#create SQLite3 db
#create an inventory table
#create ruby interface that allows user to
# - add item
# - delete item
# - modify column values (name,type,value,owner - only)
# - view entire inventory
# - view all borrowed items (make easier to read)
# - view all items that user owns (make easier to read)

require "sqlite3"

db = SQLite3::Database.new "inventory.db"

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS inventory(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
    )
SQL

db.execute(create_table)