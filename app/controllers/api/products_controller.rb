class Api::ProductsController < ApplicationController


  def show

    @products = Product.all

    render "products.json.jbuilder"

  end

  def rock_tshirt

    @rock_tshirt = Product.where(name: "rock tshirt")

    render "t_shirt.json.jbuilder"

  end

  def alarm_clock

    @alarm_clock = Product.where(name: "Alarm clock")

    render "alarm_clock.json.jbuilder"

  end

  def cat_brush

    @cat_brush = Product.where(name: "Cat Brush")

    render "cat_brush.json.jbuilder"

  end

  def fish_food

    @fish_food = Product.where(name: "Fish Food")

    render "fish_food.json.jbuilder"

  end

  def sun_tan_lotion

    @sun_tan_lotion = Product.where(name: "SunTan Lotion")

    render "suntan_lotion.json.jbuilder"

  end


end
