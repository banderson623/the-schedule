class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.timestamps
      t.integer    :status, default: 1
      t.references :meeting, index: true
      t.references :user, index: true
    end

  end
end
