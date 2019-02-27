class Api::ProductsController < ApplicationController


  def show

    @products = Product.all

    render "products.json.jbuilder"

  end


end
