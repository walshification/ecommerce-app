class Order < ActiveRecord::Base
  belongs_to :user
  has_many :carted_products
  has_many :products, :through => :carted_products

  def refund!
    update(:status => "refunded")
  end

  def subtotal
    price = 0
    carted_products.each do |carted_product|
      price += carted_product.price
    end
    return price
  end

  def sales_tax
    subtotal * 0.1
  end

  # def purchase!
  #   update(:status => "purchased", :subtotal => subtotal, :tax => sales_tax)
  # end
end
