PawsUpBlueprint::Application.routes.draw do
  root to: "pages#home"

  match "about", to: "pages#about", via: :get
  match "/", to: "paws_up#create", as: "paws_ups", via: :post
end
