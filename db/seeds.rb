# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Julio", email: "ljuliom@gmail.com")
User.create(name: "Kattya", email: "kattya@gmail.com")
Post.create(user_id: 1, title: "Hola mundo!", body: "Amazing post!")
Post.create(user_id: 1, title: "Restfull", body: "Con rails es fácil desarrollar un proyecto rest")
Post.create(user_id: 2, title: "Rails awesome!", body: "Rails super mega framwework for do magic things")