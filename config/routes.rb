Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"

  match "/", to: "paws_up#create", as: "paws_ups", via: :post
  match "/neglected", to: "pages#neglect", via: :get
  match "secret", to: "paws_up#index", via: :get
  match "secret", to: "paws_up#index", via: :post

  resources :cycles, only: [:create]
end
