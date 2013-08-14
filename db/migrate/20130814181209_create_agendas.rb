class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.integer :order
      t.references :item, index: true
      t.references :meeting, index: true
      t.timestamps
    end
  end
end
