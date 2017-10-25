Rails.application.routes.draw do
  resources :users
match '/signup',  to: 'users#new',            via: 'get'
  get 'users/new'

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
