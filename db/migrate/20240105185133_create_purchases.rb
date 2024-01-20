class CreatePurchases < ActiveRecord::Migration[7.1]
  def change
    create_table :purchases do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
