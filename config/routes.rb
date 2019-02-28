Rails.application.routes.draw do

  get "/products" => "api/products#show" 

  get "/search_products/:search_id" => "api/products#find_by_title"

end
