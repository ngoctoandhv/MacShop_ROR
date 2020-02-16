class Product < ApplicationRecord
  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 1.0}
  validates :title, :uniqueness => true
  validates :image_url, :format => { :with => %r{\.(gif|jpg|png)\Z}i, :message => 'Just received file GIF, JPG, PNG'}
end
