Rails.application.routes.draw do

  resources :hipstergrams

  devise_for :hipsters, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  root to: "hipstergrams#index"

  
end
