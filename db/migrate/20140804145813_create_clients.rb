class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :country
      t.text :address
      t.integer :mobilenumber
      t.string :email

      t.timestamps
    end
  end
end
