#assignment: a nested data structure that represents a real world construct

#ex: IT inventory
#offices(array) - [locations] -> office(hash) - category:items -> item(array) - [individual items by ID number]

tech_inventory = {
  brasilia: {
    computers: ["ID3","ID4", "ID5"],
    has_local_IT_help: false
  },
  berkeley: {
    computers: ["ID7","ID8", "ID9"],
    has_local_IT_help: false
  },
  bangkok: {
    computers: ["ID16","ID17", "ID18"],
    has_local_IT_help: false
  },
}

puts tech_inventory[:brasilia][:computers][0]

puts tech_inventory[:bangkok][:has_local_IT_help]

puts tech_inventory[:berkeley][:computers].push("ID40")

puts tech_inventory[:berkeley].key?(:computers)

