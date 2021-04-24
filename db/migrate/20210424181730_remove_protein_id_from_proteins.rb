class RemoveProteinIdFromProteins < ActiveRecord::Migration[6.1]
  def change
    remove_index :proteins, :protein_id
    remove_column :proteins, :protein_id, :string
  end
end
