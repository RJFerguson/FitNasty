Rails.application.routes.draw do
  root 'welcome#index'
  get '/signup', to: 'users#new', as: 'signup'
  get '/signin', to: 'sessions#new', as: 'signin'
  post '/signin', to: 'sessions#create', as: 'sessions'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  get '/users/:id', to: 'users#show', as: 'profile'
  resources :foods
  resources :sleeps
  resources :user_exercises
  resources :users, except: [:show, :new]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
