Rails.application.routes.draw do
  root 'welcome#index'
  get '/signup', to: 'users#new', as: 'signup'
  get '/signin', to: 'sessions#new', as: 'signin'
  post '/signin', to: 'sessions#create', as: 'sessions'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get 'users/:id/progress_page', :to => 'users#progress_page', as: 'progress'
  get '/users/:id', to: 'users#show', as: 'profile'
  resources :foods
  resources :user_foods
  resources :user_exercises
  resources :user_sleeps
  resources :users, except: [:show, :new]
end
