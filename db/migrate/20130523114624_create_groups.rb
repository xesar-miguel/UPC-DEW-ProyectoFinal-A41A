class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :snamegroup
      t.primary_key :snamegroup
      t.string :sstategroup
      t.string :smusicstyle

      t.timestamps
    end
  end
end
