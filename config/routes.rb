Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  get "/products" => "api/products#show"

  get "/rock_tshirt" => "api/products#rock_tshirt"

  get "/cat_brush" => "api/products#cat_brush"

  get "/fish_food" => "api/products#fish_food"

  get "/sun_tan_lotion" => "api/products#sun_tan_lotion"

  get "/alarm_clock" => "api/products#alarm_clock"

end
