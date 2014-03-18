PawsUpBlueprint::Application.routes.draw do
  root to: "pages#home"

  match "/", to: "paws_up#create", as: "paws_ups", via: :post
  match "view", to: "paws_up#index", via: :get
end
