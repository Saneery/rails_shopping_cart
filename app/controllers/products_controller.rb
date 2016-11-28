class ProductsController < ApplicationController
  def index
    @products = Product.all
    @order_item = current_order.order_items.new
    @ingredients = Ingredient.all
    @order_item.ingredient_order_items.build
  end
end
