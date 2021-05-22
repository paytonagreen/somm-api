class AddRegionIdToSubregion < ActiveRecord::Migration[6.1]
  def change
    add_column :subregions, :region_id, :integer
  end
end
