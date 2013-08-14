class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :title
      t.datetime :meets_at
      t.integer :duration

      t.timestamps
    end
  end
end
