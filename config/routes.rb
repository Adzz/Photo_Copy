Rails.application.routes.draw do

  resources :hipstergrams

  devise_for :hipsters
  
  root to: "hipstergrams#index"
  
end
