class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :location, foreign_key: true
      t.string :address
      t.date :date_beginning
      t.date :date_end

      t.timestamps
    end
  end
end
