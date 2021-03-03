class HomesController < ApplicationController
  def top
    @news = News.last(3)
  end

  def bio
  end
end
