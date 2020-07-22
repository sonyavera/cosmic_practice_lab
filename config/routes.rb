Rails.application.routes.draw do
  resources :missions
  resources :scientists
  resources :planets
  
  get '/about', to: 'actions#index'

end
