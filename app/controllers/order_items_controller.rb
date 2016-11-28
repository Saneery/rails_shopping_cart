class OrderItemsController < ApplicationController
  def create
    @order = current_order
    @order_item = @order.order_items.new(clear_order_item_params)
    @order.save
    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(clear_order_item_params)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end
  private
  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id, ingredient_order_items_attributes:
        [:quantity, :ingredient_id]
    )
  end

  def clear_order_item_params
    oi_params = order_item_params
    unless oi_params[:ingredient_order_items_attributes].nil?
      oi_params[:ingredient_order_items_attributes].each do |key, value|
        if value[:quantity].to_i == 0
          oi_params[:ingredient_order_items_attributes].delete key
        end
      end
    end
    oi_params
  end
end
