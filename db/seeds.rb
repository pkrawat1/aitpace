# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Events.delete_all
Events.create(name:"Cricket", fees: 900, rules: "Play safe")
Events.create(name:"Football", fees: 1100, rules: "Play safe")
Events.create(name:"Tennis", fees: 300, rules: "Play safe")
Events.create(name:"Badminton", fees: 300, rules: "Play safe")
Events.create(name:"Basketball", fees: 900, rules: "Play safe")
Events.create(name:"Volleyball", fees: 500, rules: "Play safe")
Events.create(name:"Table Tennis", fees: 200, rules: "Play safe")
Events.create(name:"Chess", fees: 200, rules: "Play safe")
Events.create(name:"Squash", fees: 500, rules: "Play safe")
