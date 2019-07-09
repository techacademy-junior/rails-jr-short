Rails.application.routes.draw do
  resources :questions
  root 'messages#index'
  resources :messages
end
