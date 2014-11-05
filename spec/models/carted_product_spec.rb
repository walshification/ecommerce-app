require 'rails_helper'

describe CartedProduct do
  describe "price" do
    it "should_return_the_quantity_multiplied_by_the_product_price" do
      vendor = Vendor.create!(:name => "test")
      product = Product.create!(:name => "test", :price => 10.0, :vendor_id => vendor.id)
      carted_product = CartedProduct.create!(:product_id => product.id, :quantity => 3)

      expect(carted_product.price).to eq(30.0)
    end
  end

  describe "update_quantity" do
    it "should update the quantity of a carted product by the specified number" do
      vendor = Vendor.create!(:name => "test")
      product = Product.create!(:name => "test", :price => 10.0, :vendor_id => vendor.id)
      carted_product = CartedProduct.create!(:product_id => product.id, :quantity => 3)

      carted_product.update_quantity(1)

      expect(carted_product.quantity).to eq(1)
    end
  end

  describe "refund!" do
    it "should change the order status to refunded" do
      order = Order.create(:status => "purchased")

      order.refund!

      expect(order.status).to eq("refunded")
    end
  end
end
