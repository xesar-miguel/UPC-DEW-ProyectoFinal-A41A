class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :stypedocum
      t.string :snumdocum
      t.string :sfirstname
      t.string :slastname1
      t.string :slastname2
      t.string :ssex
      t.string :semail
      t.string :spassword
      t.references :type_person

      t.timestamps
    end
    add_index :users, :type_person_id
  end
end
