# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Actor.delete_all

a1 = Actor.create({name: "Tim Allen", dob: "1953-06-13" })
a2 = Actor.create({name: "Keither Sutherland", dob: "1966-12-21"})
