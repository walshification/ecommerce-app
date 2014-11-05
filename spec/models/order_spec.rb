require 'rails_helper'

describe Order do
  describe 'refund!' do
    it 'should_change_order_status_to_refunded' do
      order = Order.new(:status => "purchased")
      order.refund!
      expect(order.status).to eq("refunded")
    end
  end

  describe 'sales_tax' do
    it 'should_calculate_total_order_sales_tax' do
      vendor = Vendor.create!(:name => "test")
      product = Product.create!(:name => "test", :price => 10.0, :vendor_id => vendor.id)
      product_2 = Product.create!(:price => 1000.0, :name => "test_2", :vendor_id => vendor.id)
      order = Order.create!
      carted_product = CartedProduct.create!(:product_id => product.id, :quantity => 3, :order_id => order.id)
      carted_product_2 = CartedProduct.create!(:product_id => product_2.id, :quantity => 2, :order_id => order.id)

      expect(order.sales_tax).to eq(203.0)
    end
  end

  describe 'subtotal' do
    it 'should_calculate_total_order_price_before_tax' do
      vendor = Vendor.create!(:name => "test")
      product = Product.create!(:name => "test", :price => 10.0, :vendor_id => vendor.id)
      product_2 = Product.create!(:price => 1000.0, :name => "test_2", :vendor_id => vendor.id)
      order = Order.create!
      carted_product = CartedProduct.create!(:product_id => product.id, :quantity => 3, :order_id => order.id)
      carted_product_2 = CartedProduct.create!(:product_id => product_2.id, :quantity => 2, :order_id => order.id)

      expect(order.subtotal).to eq(2030.0)
    end
  end

  # describe 'purchase!' do
  #   it 'should_change_order_status_to_purchased_and_save_subtotal_total_and_tax' do
  #     order = Order.new(:status => "cart")
  #     expect(order.purchase!).to eq()
  #   end
  # end
end

# 5. Order: purchase! - this method should change the 
# status to ‘purchased’ and save the subtotal, total, 
# and tax
