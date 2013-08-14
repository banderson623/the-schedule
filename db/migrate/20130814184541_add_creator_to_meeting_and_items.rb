class AddCreatorToMeetingAndItems < ActiveRecord::Migration
  def change
    # This is the creator
    add_reference :meetings, :user, index: true
    
    # This is the creator of the items
    add_reference :items, :user, index: true
  end
end