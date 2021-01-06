Rails.application.routes.draw do
  root "user#index"
  get "/user", to: "user#index"
  
end
