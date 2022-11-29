Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :session, only: [:create,:destroy]
  post '/login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"
  #users
  get '/me', to: "users#show"

end
