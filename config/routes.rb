Rails.application.routes.draw do

  resources :dinner_parties

  get '/', to: 'dinner_parties#index'

  resources :guests

  resources :users

  resources :auth, only: [:new, :create]

  delete "/auth", to: "auth#destroy"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
