class MusicChoicesController < ApplicationController

  def index
    music = Music.find(params[:music_id])
    @music_choices = music.music_choices
  end

  def create
    
    music = Music.find(params[:music_id])
    music_choice = MusicChoice.new(choice_params)
    music_choice.music_id = music.id
    music_choice.save
    redirect_to music_path(music.id)
  end
  


private
  def choice_params
    params.require(:music_choice).permit(:lyrics, :song_title, :commentary, :background_image, :sound_cloud)
  end
end
