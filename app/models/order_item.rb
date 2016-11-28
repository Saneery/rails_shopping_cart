class OrderItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order
  has_many :ingredient_order_items, :dependent => :delete_all
  has_many :ingredients, through: :ingredient_order_items

  accepts_nested_attributes_for :ingredient_order_items

  validates :quantity, presence: true, numericality: {only_integer: true, greater_than: 0}
  validate :product_present
  validate :order_present

  before_save :finalize

  def unit_price
    if persisted?
      self[:unit_price]
    else
      product.price
    end
  end

  def total_price
    (unit_price + ingredients_price) * quantity
  end

  def ingredients_price
    ingredient_order_items.reduce(0) do |sum, i|
      sum + i.ingredient.price * i.quantity
    end
  end

  private
  def product_present
    if product.nil?
      errors.add(:product, "is not valid or is not active.")
    end
  end

  def order_present
    if order.nil?
      errors.add(:order, "is not a valid order.")
    end
  end

  def finalize
    self[:unit_price] = unit_price
    self[:total_price] = quantity * self[:unit_price]
  end
end
