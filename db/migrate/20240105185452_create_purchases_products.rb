class CreatePurchasesProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :purchases_products do |t|
      t.references :product, null: false, foreign_key: true
      t.references :purchase, null: false, foreign_key: true
      t.timestamp :purchased_at
      t.timestamp :expiration_at

      t.timestamps
    end
  end
end
