Rails.application.routes.draw do
  devise_for :users, only:[:sign_in, :sign_out, :session]
  root "homes#top"
  resources :musics
end
