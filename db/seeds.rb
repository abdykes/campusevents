# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


l1 = Location.create!(name: "ET Building")
l2 = Location.create!(name: "Campus Center", description: "The big building with the coffee")

s1 = Sponser.create!(name: "Microsoft")
s2 = Sponser.create!(name: "ACME Corp.")

e1 = Event.create!(name: "Women in Technology Camp", start_date: DateTime.new(2014,06,01), end_date: DateTime.new(2014, 06, 06), :sponsers => [s1])
e2 = Event.create!(name: "Biotechnology Conference", start_date: DateTime.new(2014,07,01), end_date: DateTime.new(2014, 07, 06), :sponsers => [s2])

m1 = Meeting.create!(name: "Kickoff", description: "Kick off meeting for WIT", start_time: Time.zone.parse('2014-06-01 08:00'), end_time: Time.zone.parse('2014-06-01 09:00'), :event => e1, :location => l1)
m2 = Meeting.create!(name: "Let's talk about it", description: "What are some of the challenges for women in technology?", start_time: Time.zone.parse('2014-06-01 08:00'), end_time: Time.zone.parse('2014-06-01 10:00'), :event => e1, :location => l1)
m3 = Meeting.create!(name: "Creating the Zerg", description: "Adaptable bio-weapons in the modern world", start_time: Time.zone.parse('2014-07-01 08:00'), end_time: Time.zone.parse('2014-07-01 09:00'), :event => e2, :location => l1)
m4 = Meeting.create!(name: "Growing replacement ears", description: "Ears!", start_time: Time.zone.parse('2014-07-01 13:00'), end_time: Time.zone.parse('2014-07-01 14:00'), :event => e2, :location => l1)

a1 = Attendee.create!(first_name: "Bill", last_name: "Gates", email: "billy@microsoft.com")
a2 = Attendee.create!(first_name: "Bob", last_name: "Seeger", email: "bs@yahoo.com")
a3 = Attendee.create!(first_name: "Frank", last_name: "Abinail", email: "send@checks.me")
a4 = Attendee.create!(first_name: "Sally", last_name: "Frankson", email: "sallyf@gmail.com")
