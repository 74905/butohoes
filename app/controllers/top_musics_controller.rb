class TopMusicsController < ApplicationController
  def create
    top_music = TopMusic.new(top_music_params)
    binding.pry
    top_music.save
    redirect_to root_path
  end

  private
  def top_music_params
    params.require(:top_music).permit(:music_id)
  end
end
