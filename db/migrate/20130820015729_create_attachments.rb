class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.reference :item
      t.reference :user
      t.string :attachment_name

      t.timestamps
    end
  end
end
