Rails.application.routes.draw do

  namespace :api do
      get "/products" => "products#index" 
      patch "/products/:id" => "products#update" 
      delete "/products/:id" => "products#destroy" 
      get "/search_products/:search_id" => "products#find_by_title"
      post "/products" => "products#create"
      get "/products/:id" => "products#show"
      post "/users" => "users#create"
      post "/sessions" => "sessions#create"
      post "/orders" => "orders#create"
  end
end
