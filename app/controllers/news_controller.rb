class NewsController < ApplicationController
  def new
    @news= News.new
  end
  
  def create
    news = News.new(news_params)
    news.save
    redirect_to root_path
  end
  private
  def news_params
    params.require(:news).permit(:title, :body, :news_image)
  end
end
