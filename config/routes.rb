Rails.application.routes.draw do
  resources :users
  resources :comments
  resources :tags, only: [:show]
  resources :orders, only: %i[new create index]
  resources :sessions, only: %i[new create destroy]

  resources :conversations do
    resources :messages
  end
  root  'pages#home'

  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  get 'users/new'
  get '/pages/status_video', to: 'pages#status'
  root 'pages#home'
  get 'pages/table'
  get 'pages/contact'
  get 'pages/check_orders'

  get 'pages/about'
get 'pages/dialog'
  resources :movies do
    resources :comments
    get :upvote, on: :member
    get :view_count, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
