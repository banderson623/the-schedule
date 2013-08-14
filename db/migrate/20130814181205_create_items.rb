class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :body

      # This is time in minutes
      t.integer :duration, default: 15
      t.boolean :hidden, default: false
      t.text    :teaser

      t.timestamps
    end
  end
end
