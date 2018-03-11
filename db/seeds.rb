# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
category1 = Category.create(name: "category1")
category2 = Category.create(name: "category2")
category3 = Category.create(name: "category3")
user1 = User.create(username: "user1")
user2 = User.create(username: "user2")
user3 = User.create(username: "user3")
