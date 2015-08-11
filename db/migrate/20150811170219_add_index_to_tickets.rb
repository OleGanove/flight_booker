class AddIndexToTickets < ActiveRecord::Migration
  def change
    add_index :tickets, :booking_id
    add_index :tickets, :passenger_id
  end
end
