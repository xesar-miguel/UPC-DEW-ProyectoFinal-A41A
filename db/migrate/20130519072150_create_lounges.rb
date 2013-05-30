class CreateLounges < ActiveRecord::Migration
  def change
    create_table :lounges do |t|
      t.string :name
      t.string :direction
      t.string :geolocation
      t.string :phone
      t.references :distrito

      t.timestamps
    end
    add_index :lounges, :distrito_id
  end
end
