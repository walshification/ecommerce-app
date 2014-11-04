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
      order = Order.new(:total => 50)
      expect(order.sales_tax).to eq(5)
    end
  end

  describe 'subtotal' do
    it 'should_calculate_total_order_price_before_tax' do
      order = Order.new(:total => 50)
      expect(order.subtotal).to eq(50)
    end
  end

  describe 'purchase!' do
    it 'should_change_order_status_to_purchased_and_save_subtotal_total_and_tax' do
      order = Order.new(:status => "cart")
      expect(order.purchase!).to eq()
    end
  end
end

# 5. Order: purchase! - this method should change the 
# status to ‘purchased’ and save the subtotal, total, 
# and tax
