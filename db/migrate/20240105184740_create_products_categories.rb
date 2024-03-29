class CreateProductsCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :products_categories do |t|
      t.references :product, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
