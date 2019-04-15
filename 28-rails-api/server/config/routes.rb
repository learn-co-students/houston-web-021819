Rails.application.routes.draw do
  resources :steps
  resources :npcs
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/test', to: 'test#index'

end
