Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/contact'

  get 'pages/about'

 resources :movies do
      resources :comments
      	get :upvote, on: :member
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
