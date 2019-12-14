Rails.application.routes.draw do
  devise_for :user
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get '/m', to: 'home#manage'
end
