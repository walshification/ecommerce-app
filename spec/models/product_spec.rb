require 'rails_helper'

describe Product do 
  describe 'tax' do
    it 'should_return_the_tax_of_an_item' do
      product = Product.new(:price => 30)
      expect(product.tax).to eq(3)
    end
  end

  describe 'display_price' do
    it 'should_return_price_as_a_formatted_string' do
      product = Product.new(:price => 42.1)
      expect(product.display_price).to eq("$42.10")
    end
  end

  describe 'price_and_tax' do
    it 'should_return_price_plus_tax_of_a_product' do
      product = Product.new(:price => 42.1)
      expect(product.price_and_tax).to eq(46.31)
    end
  end
end