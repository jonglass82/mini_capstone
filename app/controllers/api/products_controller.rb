class Api::ProductsController < ApplicationController


  def index

    @products = Product.all

    render "products.json.jbuilder"

  end

  def find_by_title
    @search_id = params["search_id"].to_i
    @results = Product.where("id": @search_id)

    puts @results

    render "search_results.json.jbuilder"

  end


  def create

    puts "using the create method"

    @name = params["name"]
    @price = params["price"]
    @image_url = params["image_url"]
    @description = params["description"]


    # @new_product = Product.create(name: @name, price: @price, image_url: @image_url , description: @description) 
    
  end

  def update
    @product = Product.find_by_id(:id)
  end

  def destroy

  end

end
