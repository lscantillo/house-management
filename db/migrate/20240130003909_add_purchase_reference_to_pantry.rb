class AddPurchaseReferenceToPantry < ActiveRecord::Migration[7.1]
  def change
    add_reference :purchases, :pantry, null: false, foreign_key: true
  end
end
