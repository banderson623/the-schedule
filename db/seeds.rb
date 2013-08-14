# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

brian = User.create!(name: "Brian Anderson", email_address:"brian@bitbyteyum.com");
eric = User.create!(name: "Eric Ritchey", email_address:"eric@microsoft.com");



meeting = Meeting.create!(title: "August Soccer board meeting",
                       location: "Gilbert Elementary School, Matthews Drive Gilbert, IA",
                       meets_at: 100.days.from_now,
                       duration: 120, 
                          owner: brian)
                          
meeting.users << eric

review = Item.create!( body: " Review past items\nWe've received from feedback for on the following items we should discuss",
                   duration: 15,
                     hidden: false,
                    creator: brian)

eat =   Item.create!(body: "BBQ\nI think we should have Josh handle this again",
                  duration: 5,
                    hidden: false,
                   creator: brian)

meeting.items << review
meeting.items << eat
                       