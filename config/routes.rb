Rails.application.routes.draw do
  get "search(/:search)", to: "searches#index", as: :search

  resources :badges
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
