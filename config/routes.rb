PawsUpBlueprint::Application.routes.draw do
  root to: "pages#home"

  match "/", to: "paws_up#create", as: "paws_ups", via: :post
  match "secret", to: "paws_up#index", via: :get
  match "secret", to: "paws_up#index", via: :post
end
