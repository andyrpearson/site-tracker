class AddOrganisationToSites < ActiveRecord::Migration[5.0]
  def change
    add_column :sites, :organisation_id, :integer
    add_index :sites, :organisation_id
  end
end
