# == Schema Information
#
# Table name: pantries
#
#  id         :bigint           not null, primary key
#  name       :string
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_pantries_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Pantry < ApplicationRecord
  belongs_to :user
  enum status: { inactive: 0, active: 1 }
  has_many :purchases
end
