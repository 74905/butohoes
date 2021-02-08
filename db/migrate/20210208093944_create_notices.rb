class CreateNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :notices do |t|
      t.string :notice_title
      t.text :introduction
      t.string :notice_image_id
      t.timestamps
    end
  end
end
