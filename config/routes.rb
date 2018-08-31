Rails.application.routes.draw do
  get 'sessions/new'

  resources :feeds
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :favorites, only:[:create, :destroy, :index]
  #mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

end
