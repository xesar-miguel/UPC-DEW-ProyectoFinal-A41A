class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :description
      t.datetime :start
      t.datetime :end
      t.integer :year
      t.integer :month
      t.integer :day
      t.integer :dayofweek
      t.references :lounge

      t.timestamps
    end
    add_index :bookings, :lounge_id
  end
end
