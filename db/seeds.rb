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
Sponsor.create(SponsorID: 1, Name: 'The Charleston Angler', Description: "Born on the Water. On a Daily Mission to Return.", Website: "https://www.thecharlestonangler.com/")
Sponsor.create(SponsorID: 2, Name: 'Yeti Coolers', Description: "Built for the Wild.", Website: "http://yeticoolers.com/")
Sponsor.create(SponsorID: 3, Name: 'Z-Man Bait', Description: "The Science and Art of Fishing", Website: "http://www.zmanfishing.com/cms/")
Sponsor.create(SponsorID: 4, Name: 'Haddrels Point', Description: "Where the Fun Begins! Serving Charleston outdoor needs since 1983.", Website: "http://www.haddrellspoint.com/")
Sponsor.create(SponsorID: 5, Name: 'K2 Coolers', Description: "Real Value. Real Cold.", Website: "http://www.k2-coolers.com/")
Sponsor.create(SponsorID: 6, Name: 'Penn Fishing', Description: "Let the Battle Begin.", Website: "http://www.pennfishing.com/")
Sponsor.create(SponsorID: 7, Name: 'Sea Hunt Boats', Description: "Take the Sea Hunt Comfort Challenge!! We offer the most spacious and comfortable riding boats in the industry. Our broad bow boasts room for more friends and family to stretch out! Don't believe us? Come aboard and get comfortable! Sea Hunt Boats...leading the industry in comfort & style since 1995!", Website: "http://seahuntboats.com/new25/")
Sponsor.create(SponsorID: 8, Name: 'SCE&G', Description: "Energizing South Carolina. Reliable power and dependable service for our great state.", Website: "https://www.sceg.com/")
Sponsor.create(SponsorID: 9, Name: 'Raising Canes', Description: "One Love.", Website: "http://www.raisingcanes.com/")
SponsorParticipation.create(SponsorID: 1, TournamentID: 1)
SponsorParticipation.create(SponsorID: 2, TournamentID: 1)
SponsorParticipation.create(SponsorID: 3, TournamentID: 1)
SponsorParticipation.create(SponsorID: 4, TournamentID: 2)
SponsorParticipation.create(SponsorID: 5, TournamentID: 2)
SponsorParticipation.create(SponsorID: 6, TournamentID: 2)