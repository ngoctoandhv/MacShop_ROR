# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create(:title => 'Macbook Air 13 128GB MQD32SA/A (2017)',
    :description => 
    %{
      Macbook Air 13 128 GB MQD32SA/A (2017) với thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ, hiệu năng được nâng cấp, thời lượng pin cực lâu,.
    },
    :image_url => 'mac.jpg',
    :price => 1000.00)
  
Product.create(:title => 'Macbook 12 512GB (2017)',
    :description =>
    %{
      MacBook 12 2017 với đường nét thiết kế không có thay đổi so với phiên bản 2016 nhưng Apple đã nâng cấp thêm bộ nhớ và giới thiệu bộ vi xử lý Intel thế hệ thứ 7 (Kaby Lake).
    },
    :image_url => 'mac.jpg',
    :price => 1200.00)

Product.create(:title => 'Macbook Air 13 128GB 2019',
    :description =>
    %{
      MacBook Air 128GB 2019 có thiết kế tuyệt đẹp, màn hình Retina Truetone đẳng cấp và trải nghiệm bàn phím tuyệt vời nhất từ trước đến nay..
    },
    :image_url => 'mac.jpg',
    :price => 1300.00)