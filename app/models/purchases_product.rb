# == Schema Information
#
# Table name: purchases_products
#
#  id            :bigint           not null, primary key
#  product_id    :bigint           not null
#  purchase_id   :bigint           not null
#  purchased_at  :datetime
#  expiration_at :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class PurchasesProduct < ApplicationRecord
  belongs_to :product
  belongs_to :purchase
end
