class RemoveUserFromLocation < ActiveRecord::Migration[5.0]
  def change
    remove_column :locations, :user, :string
  end
end
