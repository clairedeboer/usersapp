Rails.application.routes.draw do
  resources :users

  delete '/logout', to: 'sessions#logout', as: 'logout'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
