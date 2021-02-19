Rails.application.routes.draw do
  devise_for :users, only:[:sign_in, :sign_out, :session]
  root "homes#top"
  resources :musics do
    resources :music_choices, expect: [:new, :show]
    get '/previews' => 'music_choices#previews'
  end
end
