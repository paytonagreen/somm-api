class CreateSubregionsWines < ActiveRecord::Migration[6.1]
  def change
    create_table :subregions_wines do |t|
      t.integer :subregion_id
      t.integer :wine_id
      t.timestamps
    end
  end
end
