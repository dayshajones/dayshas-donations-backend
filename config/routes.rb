Rails.application.routes.draw do
  resources :admins
  resources :donations
  resources :sessions
  resources :payment_intents
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
