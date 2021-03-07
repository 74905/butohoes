class AddDetailsToMusics < ActiveRecord::Migration[5.2]
  def change
    add_column :musics, :price, :string
    add_column :musics, :release, :string
    add_column :musics, :title, :string
  end
end
