class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :booking_id
      t.integer :passenger_id

      t.timestamps null: false
    end

    add_index :tickets, :booking_id
    add_index :tickets, :passenger_id
    add_index :tickets, [:booking_id, :passenger_id], unique: true
  end
end
