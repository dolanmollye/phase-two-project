Rails.application.routes.draw do
  root "user#index"
  get "/user", to: "user#index"
  resources :ingredients, only: [:index, :show, :new, :create, :update]
  resources :pantries, only: [:index, :show]
  resources :shopping_list, only: [:index, :show]
  resources :pantry_ingredients, only: [:index, :show, :new, :create, :update]
end
