class CreateNewsMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :news_musics do |t|
      t.references :news, foreign_key: true
      t.references :music, foreign_key: true

      t.timestamps
    end
  end
end
