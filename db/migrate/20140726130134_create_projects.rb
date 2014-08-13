class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :projectname
      t.string :teamleader
      t.string :client

      t.timestamps
    end
  end
end
