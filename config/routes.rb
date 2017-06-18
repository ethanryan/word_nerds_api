Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :stories, only: [:index, :create, :show, :update, :destroy]


  post '/signin', to: 'signin'
  
  #get '/stories', to: 'stories#index'
  # post '/stories', to: 'stories#create'
  # patch '/stories/:id/edit', to: 'stories#update'
  # delete '/stories/:id', to: 'stories#delete' ##need DESTROY, not delete!
  # get '/stories/:id', to: 'stories#show'
end
