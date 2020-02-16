require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
    test "Thuoc tinh khong duoc de trong" do
      product = Product.new
      assert product.invalid?
      assert product.errors[:title].any?
      assert product.errors[:description].any?
      assert product.errors[:price].any?
      assert product.errors[:image_url].any?
    end
    test "Price phai lon hon 1.0" do
      product = Product.new(:title => 'Hmm...',
                            :description => 'Err...',
                            :image_url => 'Something.jpg')

      product.price = -1
      assert product.invalid? 
      assert_equal "must be greater than or equal to 1.0",
                  product.errors[:price].join('') 

      product.price = 0
      assert product.invalid?
      assert_equal "must be greater than or equal to 1.0",
                  product.errors[:price].join('')

      product.price = 5
      assert product.valid?

    end
end
