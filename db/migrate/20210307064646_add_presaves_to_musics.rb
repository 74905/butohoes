class AddPresavesToMusics < ActiveRecord::Migration[5.2]
  def change
    add_column :musics, :presave, :string
  end
end
