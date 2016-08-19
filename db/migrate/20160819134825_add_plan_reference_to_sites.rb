class AddPlanReferenceToSites < ActiveRecord::Migration[5.0]
  def change
    add_reference :sites, :plan, foreign_key: true
  end
end
