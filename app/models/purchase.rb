# == Schema Information
#
# Table name: purchases
#
#  id         :bigint           not null, primary key
#  name       :string
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  pantry_id  :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_purchases_on_pantry_id  (pantry_id)
#  index_purchases_on_user_id    (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (pantry_id => pantries.id)
#  fk_rails_...  (user_id => users.id)
#
class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :pantry
  has_many :purchases_products
  has_many :products, through: :purchases_products
  enum status: { inactive: 0, active: 1 }
end
