class MusicsController < ApplicationController
  def new
    @music = Music.new
    @musics = Music.all
  end

  def create
    @music = Music.new(music_params)
    if @music.save
      redirect_to new_music_path
    else
      @musics = Music.all
      render :new
    end
  end

  def index

  end
  
  def show
    @music =Music.find(params[:id])
    @music_choice = MusicChoice.new
    @music_choices = @music.music_choices
  end
private

  def music_params
    params.require(:music).permit(:image)
  end

end
