Rails.application.routes.draw do
  resources :contacts
  devise_for :users, only:[:sign_in, :sign_out, :session]
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root "homes#top"
  get "home/bio" => "homes#bio"
  resources :categories, param: :name, only:[:index, :create, :show]
  resources :musics do
    resources :music_choices, expect: [:new, :show]
    get '/previews' => 'music_choices#previews'
  end
   resources :news
   resources :top_musics, only:[:create, :destroy]
   get 'news/search' => 'news/search'
end
