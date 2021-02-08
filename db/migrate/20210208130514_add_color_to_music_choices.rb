class AddColorToMusicChoices < ActiveRecord::Migration[5.2]
  def change
    add_column :music_choices, :color, :string
  end
end
