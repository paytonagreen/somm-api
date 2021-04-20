class CreateWines < ActiveRecord::Migration[6.1]
  def change
    create_table :wines do |t|
      t.string :wine_name
      t.string :wine_description
      t.index :wine_id 
      t.timestamps
    end
  end
end