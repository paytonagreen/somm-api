class CreateProteinsGrapes < ActiveRecord::Migration[6.1]
  def change
    create_table :proteins_grapes do |t|
      t.integer :protein_id
      t.integer :grape_id
      t.timestamps
    end
  end
end
