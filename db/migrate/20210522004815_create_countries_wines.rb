class CreateCountriesWines < ActiveRecord::Migration[6.1]
  def change
    create_table :countries_wines do |t|
      t.integer :country_id
      t.integer :wine_id
      t.timestamps
    end
  end
end
