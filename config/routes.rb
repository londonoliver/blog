Rails.application.routes.draw do
  root 'welcome#index'
  get  '/signup',  to: 'users#new'
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  resources :users
end
