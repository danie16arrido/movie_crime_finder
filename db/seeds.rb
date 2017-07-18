# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Actor.delete_all
Crime.delete_all

a1 = Actor.create({name: "Tim Allen", dob: "1953-06-13" })
a2 = Actor.create({name: "Keifer Sutherland", dob: "1966-12-21"})

Crime.create({incident: "Cocaine possession", date: "1978-10-02", actor:a1})
Crime.create({incident: "Drunk driving", date: "2007-09-25", actor:a2})

m1 = Movie.create({ title: "Toy Story", year: 1995 } )
m2 = Movie.create( { title: "Dark City", year:1998 } )

Role.create({character:"Buzz Lightyear", actor: a1, movie: m1 })
Role.create({character:"Dr. Schreber", actor: a2, movie: m2 })
