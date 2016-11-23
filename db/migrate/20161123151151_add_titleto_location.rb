class AddTitletoLocation < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :title, :string
  end
end
