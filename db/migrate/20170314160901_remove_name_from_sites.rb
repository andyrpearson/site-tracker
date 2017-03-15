class RemoveNameFromSites < ActiveRecord::Migration[5.0]
  def change
    remove_column :sites, :name, :string
  end
end
