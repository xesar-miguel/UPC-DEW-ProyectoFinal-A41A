class CreateConcertstatuses < ActiveRecord::Migration
  def change
    create_table :concertstatuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
