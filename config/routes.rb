Rails.application.routes.draw do

  resources :hipsters do
    resources :hipstergrams
  end

  devise_for :hipsters, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  root to: "hipstergrams#index"

  
end
