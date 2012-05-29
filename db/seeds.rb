# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ass1 = Association.create(name: "Baljan", info: "Mer kaffe till folket", webPage: "www.baljan.org") 
ass2 = Association.create(name: "Mickis klubb", info: "Woop woop!", webPage: "student.liu.se")
Association.create(name: "A", info: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", webPage: "www.a.org") 
Association.create(name: "b", info: "b", webPage: "b") 
Association.create(name: "c", info: "b", webPage: "b") 
Association.create(name: "d", info: "b", webPage: "b") 
Association.create(name: "e", info: "b", webPage: "b") 
Association.create(name: "f", info: "b", webPage: "b") 
Association.create(name: "g", info: "b", webPage: "b") 
Association.create(name: "h", info: "b", webPage: "b") 
Association.create(name: "i", info: "b", webPage: "b") 
Association.create(name: "j", info: "b", webPage: "b") 
Association.create(name: "k", info: "b", webPage: "b") 
Association.create(name: "l", info: "b", webPage: "b") 
Association.create(name: "m", info: "b", webPage: "b") 
Association.create(name: "n", info: "b", webPage: "b") 
Association.create(name: "o", info: "b", webPage: "b") 
Association.create(name: "p", info: "b", webPage: "b") 
Association.create(name: "q", info: "b", webPage: "b") 
Association.create(name: "r", info: "b", webPage: "b") 
Association.create(name: "s", info: "b", webPage: "b") 
Association.create(name: "t", info: "b", webPage: "b") 
Association.create(name: "u", info: "b", webPage: "b") 
Association.create(name: "v", info: "b", webPage: "b") 
Association.create(name: "x", info: "b", webPage: "b") 
Association.create(name: "y", info: "b", webPage: "b") 
Association.create(name: "z", info: "b", webPage: "b") 
Association.create(name: "ba", info: "b", webPage: "b") 
Association.create(name: "bb", info: "b", webPage: "b") 
Association.create(name: "bc", info: "b", webPage: "b") 
Association.create(name: "bd", info: "b", webPage: "b") 
Association.create(name: "be", info: "b", webPage: "b") 
Association.create(name: "bf", info: "b", webPage: "b") 
Association.create(name: "bg", info: "b", webPage: "b") 
Association.create(name: "bh", info: "b", webPage: "b") 
Association.create(name: "bi", info: "b", webPage: "b") 
Association.create(name: "bj", info: "b", webPage: "b") 
Association.create(name: "bk", info: "b", webPage: "b") 
Association.create(name: "bl", info: "b", webPage: "b") 
Association.create(name: "bm", info: "b", webPage: "b") 
Association.create(name: "bn", info: "b", webPage: "b") 
Association.create(name: "bo", info: "b", webPage: "b") 
Association.create(name: "bp", info: "b", webPage: "b") 
Association.create(name: "bq", info: "b", webPage: "b") 
Association.create(name: "br", info: "b", webPage: "b") 
Association.create(name: "bs", info: "b", webPage: "b") 
Association.create(name: "bt", info: "b", webPage: "b") 
Association.create(name: "bu", info: "b", webPage: "b") 
Association.create(name: "bv", info: "b", webPage: "b") 
Association.create(name: "bx", info: "b", webPage: "b") 
Association.create(name: "by", info: "b", webPage: "b") 
Association.create(name: "cd", info: "b", webPage: "b") 

Advert.create([{heading: "Jobbare",description: "hej hje", association_id: 1}, {heading: "Internrevisor",description: "hej hje", association_id: 1}])

User.create({liuid: "klaso084", admin: true}) 
User.create({liuid: "micov348", admin: false})

user1 = User.first
user2 = User.last

user1.associations << ass1
user2.associations << ass2
user2.associations << ass1


user=User.find(2)
ass=Association.find(1)
user.associations << ass
ass=Association.find(2)
user.associations << ass
