class Api::OrdersController < ApplicationController

  before_action :authenticate_user


  def create
    # @user_id = params["user_id"]
    @product_id = params["product_id"]
    @quantity = params["quantity"]

    @order = Order.create(user_id: current_user.id, product_id: @product_id, quantity: @quantity)

    render "orders.json.jbuilder"


  end


  def subtotal

  end



  def tax

  end



  def total

  end

end
