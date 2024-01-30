# == Schema Information
#
# Table name: purchases
#
#  id         :bigint           not null, primary key
#  name       :string
#  user_id    :bigint           not null
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  pantry_id  :bigint           not null
#
class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :pantry
  has_many :purchases_products
  has_many :products, through: :purchases_products
  enum status: { inactive: 0, active: 1 }
end
