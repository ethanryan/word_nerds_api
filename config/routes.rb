Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :stories, only: [:index, :create, :show, :update, :destroy]
  resources :plots, only: [:index]

  get "/users/current_user", to: "users#me"
  # get "/users/current_user", to: "users#current_user_xyz"

  resources :users, only: [:index, :create, :show, :update, :destroy]

  post "/sign_in", to: "users#sign_in"
  post "/decode_token", to: "users#decode_token"



  #get '/stories', to: 'stories#index'
  # post '/stories', to: 'stories#create'
  # patch '/stories/:id/edit', to: 'stories#update'
  # delete '/stories/:id', to: 'stories#delete' ##need DESTROY, not delete!
  # get '/stories/:id', to: 'stories#show'
end
