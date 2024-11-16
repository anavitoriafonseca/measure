class AlterColumnsAddress < ActiveRecord::Migration[6.1]
  def change
    rename_column :addresses, :adress, :address
    rename_column :addresses, :lat, :latitude
    rename_column :addresses, :log, :longitude
    remove_column :distances, :to
    remove_column :distances, :from
  end
end
