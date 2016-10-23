class TodoList
attr_accessor :tasklist

  def initialize(input_arr)
    puts "A to do list was made"
    p @tasklist = input_arr
  end

  def get_items
    p @tasklist
  end

  def add_item(item)
    p @tasklist << item
  end

  def delete_item(item)
    @tasklist.delete(item)
    p @tasklist
  end

  def retrieve_item(index)
    p @tasklist[index]
  end

end

# new_todolist = TodoList.new(["do the dishes", "mow the lawn"])

#For reviewer:
#We were able to get add_item to return what we expected (an array with the item added) here in the driver code, but were not able to figure out why the equivalent test in our spec did not pass.

# puts "before add_item is called:"
# p new_todolist.tasklist
# new_todolist.add_item("mop")
# puts "after add_item is called"
# p new_todolist.tasklist

