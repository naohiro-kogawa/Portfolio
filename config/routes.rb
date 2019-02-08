Rails.application.routes.draw do
  get 'user_checks/check'

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create' 
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  # get   'work_spaces/:id', to: 'work_spaces#edit',as:'work_spaces_edit' #例
  get   'user_checks/:id', to: 'user_checks#check'
  
  resources :users do
    member do
      get :following, :followers
    end
  end  
  
  resources :user_checks
  
  resources :users
  resources :account_activations, only: [:edit] 
  resources :password_resets,     only: [:new, :create, :edit, :update] 
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]  
end
