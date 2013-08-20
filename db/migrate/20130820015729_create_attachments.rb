class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.references :item
      t.references :user
      t.string :file

      t.timestamps
    end
  end
end
