class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.primary_key :id_local
      t.string :sname
      t.string :saddress
      t.string :sdistrict
      t.string :saddressgooglemap
      t.string :sphone

      t.timestamps
    end
  end
end
