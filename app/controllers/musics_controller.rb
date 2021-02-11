class MusicsController < ApplicationController
  def new
    @music = Music.new
    @musics = Music.all
  end

  def create
    music = Music.new(music_params)
    if music.save
      redirect_to new_music_path
    else
      render :new
    end
  end
  
  def show
    
  end
private

  def music_params
    params.require(:music).permit(:image)
  end

end
