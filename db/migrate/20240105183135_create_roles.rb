class CreateRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :roles do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :status
      t.string :name

      t.timestamps
    end
  end
end
