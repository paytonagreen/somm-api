class AddCountryIdToRegion < ActiveRecord::Migration[6.1]
  def change
    add_column :regions, :country_id, :integer
  end
end
