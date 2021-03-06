class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @category = Category.new
    @top_music = TopMusic.new
  end

  def create
   category = Category.new(category_params)
   category.save
   redirect_to categories_path
  end

  def show
   category = Category.find_by(name: params[:name])
   @categories = Category.all
   @musics = category.musics
  end
private
  def category_params
    params.require(:category).permit(:name)
  end
end
