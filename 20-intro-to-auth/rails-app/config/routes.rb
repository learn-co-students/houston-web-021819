Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  resources :sessions
  patch '/users/:id/add_absence', to: 'users#add_absence'
  
  resources :pets

  # index:
  # get '/users', to: 'users#index'

  # show:
  # get '/users/:id', to: 'users#show'

  # destroy:
  # delete '/users/:id', to: 'users#destroy'

end
