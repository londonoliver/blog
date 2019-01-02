Rails.application.routes.draw do
  root 'welcome#index'
  get 'sessions/new'
  get 'welcome/index'
  get  '/signup',  to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :articles do
    resources :comments
  end

  resources :users
end
