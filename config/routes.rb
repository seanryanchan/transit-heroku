Rails.application.routes.draw do
  # For sessions
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  # For Commuter / User
  get '/signup', to: 'commuters#new', as: 'signup'
  get '/commuters/:id', to:'commuters#show', as: 'commuter'
  post '/signup', to:'commuter#create', as: 'create_commuter'
  resources :transit_stops
  resources :transit_lines
  root 'static_pages#home'
  resources :favorites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
