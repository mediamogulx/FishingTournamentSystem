# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Angler.create(AnglerID: 1, Type: 'Angler', FirstName: "Phil", MI: "", LastName: "Straney", Email: "NumberOneAngler@Angler.Net")
Angler.create(AnglerID: 2, Type: 'Angler', FirstName: "Matt", MI: "", LastName: "Shelley", Email: "BestAngler@Angler.Net")
Tournament.create(TournamentID: 1, Name: 'Spring Fling', StartDt: "5/7/16", EndDt: "5/7/16", CaptainsMeetingDt: "5/5/16 1730", CaptainsMeetingLoc: "James Island Yacht Club", EntryFee: "$30")
Tournament.create(TournamentID: 2, Name: 'Kings for Vets', StartDt: "6/4/16", EndDt: "6/4/16", CaptainsMeetingDt: "6/2/16 1730", CaptainsMeetingLoc: "Charleston Maritime Center", EntryFee: "$40")