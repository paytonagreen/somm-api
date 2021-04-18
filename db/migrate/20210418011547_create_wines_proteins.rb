class CreateWinesProteins < ActiveRecord::Migration[6.1]
  def change
    create_table :wines_proteins do |t|
      t.integer :wine_id
      t.integer :protein_id
      t.timestamps
    end
  end
end
