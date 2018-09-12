# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dave = Cat.create(
  birth_date: 1.year.ago, 
  color: 'Orange',
  name: 'Dave',
  sex: 'M',
  description: 'Dave is a cool cat'
)

steve = Cat.create(
  birth_date: 2.years.ago, 
  color: 'Brown',
  name: 'Steve',
  sex: 'M',
  description: 'Steve is a cool cat'
)

ashes = Cat.create(
  birth_date: 2.years.ago, 
  color: 'White',
  name: 'Ashes',
  sex: 'F',
  description: 'Ashes is a cool cat'
)