class MusicChoicesController < ApplicationController

  def index
    music = Music.find(params[:music_id])
    @music_choices = music.music_choices.order(created_at: :asc)
  end

  def previews
    music = Music.find(params[:music_id])
    @music_choices = music.music_choices
  end

  def create
    music = Music.find(params[:music_id])
    music_choice = music.music_choices.build(choice_params)
    music_choice.save
    redirect_to music_path(music.id)
  end

  def edit
    @music = Music.find(params[:music_id])
    @music_choice = MusicChoice.find(params[:id])
  end

  def update
    music = Music.find(params[:music_id])
    music_choice = MusicChoice.find(params[:id])
    music_choice.update(choice_params)
    redirect_to music_music_choices_path(music.id)
  end

  def destroy
    choice = MusicChoice.find_by(id: params[:id], music_id: params[:music_id])
    choice.destroy
    redirect_to  music_music_choices_path(params[:music_id])
  end
  


private
  def choice_params
    params.require(:music_choice).permit(:lyrics, :song_title, :commentary, :background_image, :sound_cloud, :color)
  end
end
