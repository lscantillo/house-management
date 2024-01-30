# == Schema Information
#
# Table name: products_categories
#
#  id          :bigint           not null, primary key
#  product_id  :bigint           not null
#  category_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class ProductsCategory < ApplicationRecord
  belongs_to :product
  belongs_to :category
end
