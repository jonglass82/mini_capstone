class Api::ProductsController < ApplicationController


  def show

    @products = Product.all

    render "products.json.jbuilder"

  end

  def find_by_title
    @search_id = params["search_id"].to_i
    @results = Product.where("id": @search_id)

    puts @results

    render "search_results.json.jbuilder"

  end

end
