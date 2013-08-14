class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.string :agenda
      t.reference :meeting_id
      t.reference :item_id
      t.integer :order

      t.timestamps
    end
  end
end
