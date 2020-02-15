class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, :precision => 8, :scale =>2
      #độ lớn 8 chữ số và số thập phân nhiều nhất là 2

      t.timestamps null: false
    end
  end
end
