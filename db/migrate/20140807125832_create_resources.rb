class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :fname
      t.string :lname
      t.date :dob
      t.integer :phnumber
      t.string :email
      t.integer :expr
      t.string :spclizn

      t.timestamps
    end
  end
end
