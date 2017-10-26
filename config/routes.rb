Rails.application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root  'pages#home'

  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  get 'users/new'
  get '/pages/status_video',  :to => 'pages#status'
  root 'pages#home'

  get 'pages/contact'

  get 'pages/about'

 resources :movies do
      resources :comments
      	get :upvote, on: :member
      	get :view_count, on: :member
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
