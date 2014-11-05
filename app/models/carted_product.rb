class CartedProduct < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  validates :quantity, :presence => true

  def price
    quantity * product.price
  end

  def update_quantity(new_quantity)
    update(:quantity => new_quantity)
  end
end
