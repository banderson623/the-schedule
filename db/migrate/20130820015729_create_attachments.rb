class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.references :item
      t.references :user
      t.string :attachment_name

      t.timestamps
    end
  end
end
