class RemoveNameFromMissions < ActiveRecord::Migration[6.0]
  def change
    remove_column :missions, :name
  end
end
