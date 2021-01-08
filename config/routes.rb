Rails.application.routes.draw do
  root "user#index"
  get "/user", to: "user#index"
  resources :ingredients, only: [:index, :show, :new, :create, :update]
  resources :pantries, only: [:index, :show]
  resources :shopping_lists, only: [:index, :show, :create, :update]
  resources :pantry_ingredients, only: [:index, :show, :new, :create, :update]
end
