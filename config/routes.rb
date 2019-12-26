Rails.application.routes.draw do
  devise_for :users
  root 'home#show'

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
