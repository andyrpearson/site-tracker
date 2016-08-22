class AddCmsToSites < ActiveRecord::Migration[5.0]
  def change
    add_column :sites, :cms, :string
  end
end
