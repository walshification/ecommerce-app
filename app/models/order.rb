class Order < ActiveRecord::Base
  belongs_to :user
  has_many :carted_products
  has_many :products, :through => :carted_products

  def refund!
    update(:status => "refunded")
  end

  def sales_tax
    total * 0.1
  end

  def subtotal
    
  end

  def purchase!
  end
end
