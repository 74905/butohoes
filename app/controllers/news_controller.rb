class NewsController < ApplicationController
  def new
    @news= News.new
  end
  
  def create
    news = News.create(title: news_params[:title], body: news_params[:body], news_image: news_params[:news_params])
    
    if news_params[:music_id].present?
      music = Music.find_by(id: news_params[:music_id])
      NewsMusic.create(news_id: news.id, music_id: music.id)
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
  
  def index 
    @news = News.all.order(id: "DESC") 
  end

  def show
    news = News.find(params[:id])
    @news_music = NewsMusic.find_by(news_id: news.id)
    binding.pry
  end
  private
  def news_params
    params.require(:news).permit(:title, :body, :news_image, :music_id)
  end
end
