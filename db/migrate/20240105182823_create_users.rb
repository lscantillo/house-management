class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.integer :role_id
      t.string :first_name
      t.string :last_name
      t.integer :status

      t.timestamps
    end
  end
end
