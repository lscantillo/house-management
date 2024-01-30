# == Schema Information
#
# Table name: pantries
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  name       :string
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Pantry < ApplicationRecord
  belongs_to :user
  enum status: { inactive: 0, active: 1 }
  has_many :purchases
end
