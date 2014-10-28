class Product < ActiveRecord::Base
  belongs_to :vendor
  has_many :photos
  has_many :options
  has_many :orders
  has_many :categorized_products
  has_many :categories, through: :categorized_products
  has_many :carted_products
  has_many :orders, through: :carted_products

  attr_accessor :options_list

  def tax
    (price * 0.1).round(2)
  end

  def display_price
    if price.to_s.include? "."
      dollars = price.to_s.split(".")[0]
      cents = price.to_s.split(".")[1]
    else
      dollars = price
      cents = "00"
    end
    if cents.length < 2
      cents += "0"
    end
    @currency = "$#{dollars}.#{cents}"
    return @currency
  end

  def discount
  end

  def price_and_tax
    price + tax
  end
end
