# == Schema Information
#
# Table name: roles
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  status     :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Role < ApplicationRecord
  belongs_to :user
end
