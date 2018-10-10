class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :address
      t.string :phonenumber
      t.boolean :sex
      t.integer :role

      t.timestamps
    end
  end
end
