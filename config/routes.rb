Rails.application.routes.draw do
  resources :contacts
  devise_for :users, only:[:sign_in, :sign_out, :session]
  root "homes#top"
  get "home/bio" => "homes#bio"
  resources :musics do
    resources :music_choices, expect: [:new, :show]
    get '/previews' => 'music_choices#previews'
  end
  resources :news
end
