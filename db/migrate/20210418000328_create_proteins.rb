class CreateProteins < ActiveRecord::Migration[6.1]
  def change
    create_table :proteins do |t|
      t.string :protein_name
      t.index :protein_id
      t.text :wines, array: true, default: []
      t.timestamps
    end
  end
end
