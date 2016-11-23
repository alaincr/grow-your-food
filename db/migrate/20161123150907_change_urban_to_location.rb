class ChangeUrbanToLocation < ActiveRecord::Migration[5.0]
  def change
    change_column :locations, :urban, :string
  end
end
