Rails.application.routes.draw do
  root "user#index"
  get "/user", to: "user#index"
  resources :ingredients, only: [:index, :show]
  resources :pantries, only: [:index, :show]
  resources :shopping_list, only: [:index, :show]
end
