class Order < ActiveRecord::Base
  has_many :order_items
  before_save :update_price

  def price
    order_items.collect {|oi| oi.valid? ? oi.total_price : 0}.sum
  end

  private
  def update_price
    self[:price] = price
  end
end
