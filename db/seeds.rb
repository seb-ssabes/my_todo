Task.destroy_all

Task.create!([
  { title: "Wash the dishes",
    description: "Clean all the dishes after lunch",
    status: "pending",
    due_date: Date.today + 1
  },
  {
    title: "Do the laundry",
    description: "Wash and fold clothes",
    status: "pending",
    due_date: Date.today + 2
  },
  {
    title: "Vacuum the living room",
    description: "Make sure to get under the couch too",
    status: "pending",
    due_date: Date.today + 3
  }
])

puts "#{Task.count} tasks seeded"
