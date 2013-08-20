# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# For a full reset do this!
# Call:
#     rake db:seed RESET=yes
# 
if(ENV && ENV['RESET'].present?)
  # Force rails to load all models, lamo!
  Dir.glob(File.join(Rails.root, "app/models/*.rb")).each{|f| require f}
  
  puts "Deleting the following:3"
  puts "Models " + " " * 24 + " Count"
  puts "-"*40
  
  # Okay lets thrash these suckers!
  ActiveRecord::Base.subclasses.each do |mod|
    if(mod.respond_to?(:destroy_all) && mod != ActiveRecord::SchemaMigration)
      puts "#{mod.name.to_s.ljust(30)} #{mod.count.to_s.rjust(5)}"
      mod.destroy_all
    end
  end
end

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

Comment.create!(body: "That is a load of crap!",
                user: brian,
                item: review)

Comment.create!(body: "Great idea!",
                user: eric,
                item: eat)
                
test_attachment = Attachment.new(file: File.new(File.join(Rails.root,"public","groovy.gif")),
                                 user: review.creator,
                                 item: review)
test_attachment.save!
# puts "Attachment file url: #{test_attachment.file.authenticated_url}"