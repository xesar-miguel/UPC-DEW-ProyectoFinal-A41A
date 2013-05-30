class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :dni
      t.string :tui
      t.string :gender
      t.string :givenname
      t.string :lastname1
      t.string :lastname2
      t.references :usertype

      t.timestamps
    end
    add_index :users, :usertype_id
  end
end
