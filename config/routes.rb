Rails.application.routes.draw do

  get "/products" => "api/products#index" 

  patch "/products/:id" => "api/products#update" 

  delete "/products/:id" => "api/products#destroy" 

  get "/search_products/:search_id" => "api/products#find_by_title"

  # post "/search_products/:search_id" => "api/products#find_by_title"

  post "/products" => "api/products#create"

end
