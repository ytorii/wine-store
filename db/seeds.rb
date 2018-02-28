# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

puts '===== Create initial data with seed file ====='
puts '===== Create Todo data ====='

texts = [
  'Take a train and a bus',
  'Go to the company',
  'Study about domain',
  'Study about React',
  'Study about Postgres',
  'Tell about the Redux',
  'Decide infrastructure configurations',
  'Develop application insanity fast',
  'Release new application',
  'Contribute to a company!'
]

from_date = Date.parse('2018/03/01')
end_date = Date.parse('2018/07/01')

todo_params = []

0.upto 9 do |i|
  todo = {
    text: texts[i],
    priority: Random.rand(1..5),
    start_date: Random.rand(from_date..end_date),
    deadline_date: Random.rand(from_date..end_date),
    completed: false
  }
  todo_params << todo
end

todos = Todo.create(todo_params)

puts '===== Completed creating initial data ====='
