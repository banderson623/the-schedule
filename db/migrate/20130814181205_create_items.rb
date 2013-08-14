class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :body
      t.integer :duration
      t.boolean :hidden
      t.text :teaser

      t.timestamps
    end
  end
end
