class AddNewColumnsToPurchaseProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :purchases_products, :description, :string
    add_column :purchases_products, :quantity, :integer
    add_column :purchases_products, :price, :decimal
  end
end
