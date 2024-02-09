# == Schema Information
#
# Table name: purchases_products
#
#  id            :bigint           not null, primary key
#  description   :string
#  expiration_at :datetime
#  price         :decimal(, )
#  purchased_at  :datetime
#  quantity      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  product_id    :bigint           not null
#  purchase_id   :bigint           not null
#
# Indexes
#
#  index_purchases_products_on_product_id   (product_id)
#  index_purchases_products_on_purchase_id  (purchase_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#  fk_rails_...  (purchase_id => purchases.id)
#
class PurchasesProduct < ApplicationRecord
  belongs_to :product
  belongs_to :purchase
end
