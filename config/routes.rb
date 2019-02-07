Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :planes
  get '/planes' => 'planes#index'
  get '/flights' => 'flights#index'

  get '/planes/new' => 'planes#new'
  get '/plane-submit' => 'planes#create'  

  get 'flights/new' => 'flights#new'
  get 'flight-submit' => 'flights#create'
end
