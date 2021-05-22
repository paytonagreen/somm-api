class CreateRegionsWines < ActiveRecord::Migration[6.1]
  def change
    create_table :regions_wines do |t|
      t.integer :region_id
      t.integer :wine_id
      t.timestamps
    end
  end
end
