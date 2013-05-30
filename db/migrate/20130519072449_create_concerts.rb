class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :name
      t.references :score
      t.references :owner
      t.references :band
      t.references :lounge
      t.references :booking
      t.references :status

      t.timestamps
    end
    add_index :concerts, :score_id
    add_index :concerts, :owner_id
    add_index :concerts, :band_id
    add_index :concerts, :lounge_id
    add_index :concerts, :booking_id
    add_index :concerts, :status_id
  end
end
