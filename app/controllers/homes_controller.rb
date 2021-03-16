class HomesController < ApplicationController
  def top
    @top_musics = TopMusic.order(updated_at: :desc).limit(1)
    @news = News.last(3)
  end

  def bio
  end
end
