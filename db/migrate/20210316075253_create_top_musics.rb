class CreateTopMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :top_musics do |t|
      t.references :music, foreign_key: true
      t.timestamps
    end
  end
end
