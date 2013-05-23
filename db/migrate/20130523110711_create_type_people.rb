class CreateTypePeople < ActiveRecord::Migration
  def change
    create_table :type_people do |t|
      t.string :ntypeperson
      t.string :sdesctypeperson

      t.timestamps
    end
  end
end
