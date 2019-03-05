Rails.application.routes.draw do

  namespace :api do
      get "/products" => "products#index" 
      # update "/products" => "products#update"
      patch "/products" => "products#update" 
      delete "/products/:id" => "products#destroy" 
      get "/search_products/:search_id" => "products#find_by_title"
      post "/products" => "products#create"
  end
end
