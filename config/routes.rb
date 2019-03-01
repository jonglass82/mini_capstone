Rails.application.routes.draw do

  get "/products" => "api/products#index" 

  get "/search_products/:search_id" => "api/products#find_by_title"

  # post "/search_products/:search_id" => "api/products#find_by_title"

  post "/products" => "api/products#create"

end
