Rails.application.routes.draw do

  # get "restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # get "reviews/new", to: "reviews#new", as: :
  # post "reviews", to: "reviewsts#create"
  resources :restaurants do
    resources :reviews
  end
end



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
