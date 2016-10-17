#assignment: a nested data structure that represents a real world construct

#ex: IT inventory
#offices(array) - [locations] -> office(hash) - category:items -> item(array) - [individual items by ID number]

tech_inventory = [
  Brasilia: {
    computers: ["ID3","ID4", "ID5"],
    has_local_IT_help: false
  },
  Berkeley: {
    computers: ["ID7","ID8", "ID9"],
    has_local_IT_help: false
  },
  Bangkok: {
    computers: ["ID16","ID17", "ID18"],
    has_local_IT_help: false
  },
]


