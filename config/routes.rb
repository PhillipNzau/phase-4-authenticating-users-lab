Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  post "/login", to: "sessions#create"
  get "/user", to: "sessions#index"
  delete "/logout", to: "sessions#destroy"
  get "/me", to: "users#show"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
