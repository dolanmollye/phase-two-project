Rails.application.routes.draw do
  root "user#index"
  get "/user", to: "user#index"
  resources :ingredients, only: [:index, :show]
end
