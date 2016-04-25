# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Angler.create(AnglerID: 1, Type: 'Angler', FirstName: "Phil", MI: "", LastName: "Straney", Email: "NumberOneAngler@Angler.Net")
Angler.create(AnglerID: 2, Type: 'Angler', FirstName: "Matt", MI: "", LastName: "Shelley", Email: "BestAngler@Angler.Net")
Tournament.create(TournamentID: 1, Name: 'Spring Fling', Description: "Register today.  Proceeds benefit St. Jude's Hospital", StartDt: "5/7/16", EndDt: "5/7/16", CaptainsMeetingDt: "5/5/16 1730", CaptainsMeetingLoc: "James Island Yacht Club", EntryFee: "$30")
Tournament.create(TournamentID: 2, Name: 'Kings for Vets', Description: "This tournament is to benefit retired veterans.  Veterans and Captains sign up. Unpaired Captains will be paired with veterans for a day of fishing king mackerel.  Proceeds benefit The Wounded Warrior Project.", StartDt: "6/4/16", EndDt: "6/4/16", CaptainsMeetingDt: "6/2/16 1730", CaptainsMeetingLoc: "Charleston Maritime Center", EntryFee: "$40")
Tournament.create(TournamentID: 3, Name: 'Fishing for the Cure', Description: "Raising money to support breast cancer patients in Charleston, the Carolina Lady Anglers are hosting this 19th annual open fishing tournament.", StartDt: "5/28/16", EndDt: "5/28/16", CaptainsMeetingDt: "5/25/16 1730", CaptainsMeetingLoc: "Mt. Pleasant Charleston Angler", EntryFee: "$30")