class CreateAttendies < ActiveRecord::Migration
  def change
    create_table :attendies do |t|
      t.timestamps
      t.references :meeting, index: true
      t.references :user, index: true
    end

  end
end
