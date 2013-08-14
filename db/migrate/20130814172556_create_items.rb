class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :body
      t.item :duration
      t.boolean :hidden
      t.text :teaser

      t.timestamps
    end
  end
end
