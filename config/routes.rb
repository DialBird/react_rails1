Rails.application.routes.draw do
  root 'home#show'

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
