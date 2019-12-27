Rails.application.routes.draw do
  devise_for :users
  root 'home#show'
  get '/dashboard' => 'dashboard#show', as: :user_root

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
