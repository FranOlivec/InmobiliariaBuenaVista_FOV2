class RenameAdressColumnInBuildings < ActiveRecord::Migration[7.0]
  def change
    rename_column :buildings, :adress, :address
  end
end
