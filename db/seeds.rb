# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ass1 = Association.create(name: "Baljan", info: "Mer kaffe till folket", webPage: "www.baljan.org") 

ass2 = Association.create(name: "Mickis klubb", info: "Woop woop!", webPage: "student.liu.se")

Advert.create([{heading: "Jobbare", association_id: 1}, {heading: "Intern revisor", association_id: 1}])

User.create({liuid: "klaso084", admin: true}) 
User.create({liuid: "micov348", admin: false})

user1 = User.first
user2 = User.last

user1.associations << ass1
user2.associations << ass2
user2.associations << ass1

