class CreatePantries < ActiveRecord::Migration[7.1]
  def change
    create_table :pantries do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :status

      t.timestamps
    end
  end
end
