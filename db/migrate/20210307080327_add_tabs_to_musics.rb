class AddTabsToMusics < ActiveRecord::Migration[5.2]
  def change
    add_column :musics, :category_id, :integer
  end
end
