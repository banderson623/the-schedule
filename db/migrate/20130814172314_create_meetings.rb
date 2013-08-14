class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :title
      t.datetime :meets_at

      # This is time in minutes
      t.integer :duration, default: 60

      t.timestamps
    end
  end
end
