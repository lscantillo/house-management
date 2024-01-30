# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  parent_id  :bigint
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
end
