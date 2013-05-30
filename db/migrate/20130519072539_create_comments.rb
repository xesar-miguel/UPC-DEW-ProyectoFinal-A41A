class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.string :ordinal
      t.references :author

      t.timestamps
    end
    add_index :comments, :author_id
  end
end
