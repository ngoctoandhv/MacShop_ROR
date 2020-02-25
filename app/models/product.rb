class Product < ApplicationRecord
  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 1.0}
  validates :title, :uniqueness => true
  validates :image_url, :format => { :with => %r{\.(gif|jpg|png)\Z}i, :message => 'Just received file GIF, JPG, PNG'}

  has_many :line_items
  has_many :orders, :through => :line_items
  before_destroy :check_if_has_line_item

  private

    def check_if_has_line_item
        if line_items.empty?
            return true
        else
            errors.add(:base, 'This product has a LineItem')
            return false
        end
    end
    #Phương thức này sẽ kiểm tra xem một đối tượng Product có liên kết nào tới một đối tượng LineItem nào không, 
    #nếu không thì trả về true, ngược lại thì chúng ta tạo một phần tử trong thuộc tính errors có khóa là :base 
    #và giá trị là 'This product has a LineItem', rồi trả về false.
end
