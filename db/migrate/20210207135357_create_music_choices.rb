class CreateMusicChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :music_choices do |t|
      t.references :music, foreign_key: true
      t.text  :lyrics
      t.string :song_title
      t.string :background_image_id
      t.text :commentary
      t.string :sound_cloud
      t.timestamps
    end
  end
end
