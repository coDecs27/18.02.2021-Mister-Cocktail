Rails.application.routes.draw do
  root to: "cocktails#index"

  # A user can see the list of cocktails
  get "cocktails", to: "cocktails#index"

  # A user can create a new cocktail
  get "cocktails/new", to: "cocktails#new", as: :new_cocktail
  post "cocktails", to: "cocktails#create"

  # A user can see the details of a given cocktail,
  # with the dose needed for each ingredient
  get "cocktails/:id", to: "cocktails#show", as: :cocktail

  # A user can add a new dose (ingredient/description pair)
  # to an existing cocktail
  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end

  # A user can delete a dose that belongs to an existing cocktail
  delete "doses/:id", to: "doses#destroy"
end
