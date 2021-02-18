Rails.application.routes.draw do
  # root to: "cocktails#index"

  # A user can see the list of cocktails
  get "cocktails", to: "cocktails#index"

  # A user can create a new cocktail
  get "cocktails/new", to: "cocktails#new", as: :new_cocktail
  post "cocktails", to: "cocktails#create"

  # A user can see the details of a given cocktail,
  # with the dose needed for each ingredient
  get "cocktails/:id", to: "cocktails#show", as: :cocktail
end
