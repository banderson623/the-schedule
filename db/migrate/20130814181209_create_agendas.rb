class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.integer :order
      add_reference :items, index: true
      add_reference :meetings, index: true
      t.timestamps
    end
  end
end
