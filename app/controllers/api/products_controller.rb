class Api::ProductsController < ApplicationController


  def index

    @products = Product.all

    search_name = params["search"]

    if search_name
      @products = @products.where("name ILIKE ?", "%#{search_name}%")
    end

    search_price = params[]

    @products = @products.order(:id => :asc)

    render "products.json.jbuilder"

  end

  def find_by_title
    @search_id = params["search_id"]
    @results = Product.find_by_id(@search_id)

    puts @results

    render "search_results.json.jbuilder"

  end

  def show
    @id = params["id"]

    @product = Product.find_by_id(@id)
  end


  def create

    puts "using the create method"

    @name = params["name"]
    @price = params["price"]
    @image_url = params["image_url"]
    @description = params["description"]


    product = Product.new(name: @name, price: @price, image_url: @image_url , description: @description) 

    if product.save
      render "search_results.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: 422
    end

  end

  def update

    @id = params[:id]

    @product = Product.find_by_id(@id)

    if @product.update(name: "Jon")
      render "search_results.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: 422
    end

  end


  def destroy

    @id = params["id"]

    @product = Product.destroy(@id)

  end

end
