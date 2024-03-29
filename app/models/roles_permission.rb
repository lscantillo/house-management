# == Schema Information
#
# Table name: roles_permissions
#
#  id            :bigint           not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  permission_id :bigint           not null
#  role_id       :bigint           not null
#
# Indexes
#
#  index_roles_permissions_on_permission_id  (permission_id)
#  index_roles_permissions_on_role_id        (role_id)
#
# Foreign Keys
#
#  fk_rails_...  (permission_id => permissions.id)
#  fk_rails_...  (role_id => roles.id)
#
class RolesPermission < ApplicationRecord
  belongs_to :role
  belongs_to :permission
end
