class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :title, null: false
      t.text :body
      t.string :news_image_id
      t.timestamps
    end
  end
end
