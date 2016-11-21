class AddBookingToLocation < ActiveRecord::Migration[5.0]
  def change
    add_reference :locations, :booking, foreign_key: true
  end
end
