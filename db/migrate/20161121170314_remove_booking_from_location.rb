class RemoveBookingFromLocation < ActiveRecord::Migration[5.0]
  def change
    remove_column :locations, :booking, :string
  end
end
